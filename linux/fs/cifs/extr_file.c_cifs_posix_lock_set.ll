; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_posix_lock_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_posix_lock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32, i32, i32 }
%struct.cifsInodeInfo = type { i32, i32 }

@FL_POSIX = common dso_local global i32 0, align 4
@FILE_LOCK_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*)* @cifs_posix_lock_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_posix_lock_set(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.cifsInodeInfo*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @file_inode(%struct.file* %8)
  %10 = call %struct.cifsInodeInfo* @CIFS_I(i32 %9)
  store %struct.cifsInodeInfo* %10, %struct.cifsInodeInfo** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %12 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FL_POSIX, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %56, %19
  %21 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %6, align 8
  %22 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %21, i32 0, i32 0
  %23 = call i32 @cifs_down_write(i32* %22)
  %24 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %6, align 8
  %25 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %6, align 8
  %30 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %29, i32 0, i32 0
  %31 = call i32 @up_write(i32* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %20
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %36 = call i32 @posix_lock_file(%struct.file* %34, %struct.file_lock* %35, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %6, align 8
  %38 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %37, i32 0, i32 0
  %39 = call i32 @up_write(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FILE_LOCK_DEFERRED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @wait_event_interruptible(i32 %46, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %20

57:                                               ; preds = %43
  %58 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %59 = call i32 @locks_delete_block(%struct.file_lock* %58)
  br label %60

60:                                               ; preds = %57, %33
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %28, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @cifs_down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @locks_delete_block(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
