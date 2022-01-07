; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.coda_file_info = type { %struct.file* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.coda_file_info*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %11, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @S_ISREG(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISDIR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @S_ISLNK(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %74

36:                                               ; preds = %27, %21, %4
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @filemap_write_and_wait_range(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %36
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = call i32 @inode_lock(%struct.inode* %48)
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = call %struct.coda_file_info* @coda_ftoc(%struct.file* %50)
  store %struct.coda_file_info* %51, %struct.coda_file_info** %12, align 8
  %52 = load %struct.coda_file_info*, %struct.coda_file_info** %12, align 8
  %53 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %52, i32 0, i32 0
  %54 = load %struct.file*, %struct.file** %53, align 8
  store %struct.file* %54, %struct.file** %10, align 8
  %55 = load %struct.file*, %struct.file** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @vfs_fsync(%struct.file* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = call i32 @coda_i2f(%struct.inode* %67)
  %69 = call i32 @venus_fsync(i32 %66, i32 %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %63, %60, %47
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = call i32 @inode_unlock(%struct.inode* %71)
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %45, %33
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.coda_file_info* @coda_ftoc(%struct.file*) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

declare dso_local i32 @venus_fsync(i32, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
