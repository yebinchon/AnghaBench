; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_posix_lock_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_posix_lock_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i8, i32 }
%struct.cifsInodeInfo = type { i32, i32 }

@FL_POSIX = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @cifs_posix_lock_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_posix_lock_test(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifsInodeInfo*, align 8
  %8 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call i32 @file_inode(%struct.file* %9)
  %11 = call %struct.cifsInodeInfo* @CIFS_I(i32 %10)
  store %struct.cifsInodeInfo* %11, %struct.cifsInodeInfo** %7, align 8
  %12 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %13 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  store i8 %14, i8* %8, align 1
  %15 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FL_POSIX, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %24 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %28 = call i32 @posix_test_lock(%struct.file* %26, %struct.file_lock* %27)
  %29 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @F_UNLCK, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %38 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i8, i8* %8, align 1
  %43 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 0
  store i8 %42, i8* %44, align 4
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %36, %22
  %46 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %7, align 8
  %47 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %46, i32 0, i32 0
  %48 = call i32 @up_read(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
