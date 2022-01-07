; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32 }
%struct.ecryptfs_getdents_callback = type { i32, i64, %struct.TYPE_2__, i32, %struct.dir_context* }
%struct.TYPE_2__ = type { i32, i32 }

@ecryptfs_filldir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @ecryptfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ecryptfs_getdents_callback, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %16 = load i32, i32* @ecryptfs_filldir, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 3
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 4
  %22 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  store %struct.dir_context* %22, %struct.dir_context** %21, align 8
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = call %struct.file* @ecryptfs_file_to_lower(%struct.file* %23)
  store %struct.file* %24, %struct.file** %6, align 8
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 2
  %27 = call i32 @iterate_dir(%struct.file* %25, %struct.TYPE_2__* %26)
  store i32 %27, i32* %5, align 4
  %28 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %32 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %54

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ecryptfs_getdents_callback, %struct.ecryptfs_getdents_callback* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %54

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = call %struct.inode* @file_inode(%struct.file* %50)
  %52 = call i32 @fsstack_copy_attr_atime(%struct.inode* %49, %struct.inode* %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %44, %35
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.file* @ecryptfs_file_to_lower(%struct.file*) #1

declare dso_local i32 @iterate_dir(%struct.file*, %struct.TYPE_2__*) #1

declare dso_local i32 @fsstack_copy_attr_atime(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
