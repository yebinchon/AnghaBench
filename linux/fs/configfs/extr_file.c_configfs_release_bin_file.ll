; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_configfs_release_bin_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_file.c_configfs_release_bin_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.configfs_buffer* }
%struct.configfs_buffer = type { i32, i32, i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i64)* }
%struct.configfs_fragment = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @configfs_release_bin_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_release_bin_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.configfs_buffer*, align 8
  %6 = alloca %struct.configfs_fragment*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.configfs_buffer*, %struct.configfs_buffer** %8, align 8
  store %struct.configfs_buffer* %9, %struct.configfs_buffer** %5, align 8
  %10 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.configfs_fragment* @to_frag(%struct.file* %17)
  store %struct.configfs_fragment* %18, %struct.configfs_fragment** %6, align 8
  %19 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %22 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %21, i32 0, i32 0
  %23 = call i32 @down_read(i32* %22)
  %24 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %25 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %16
  %29 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %32, align 8
  %34 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 %33(i32 %36, i32* %39, i64 %42)
  br label %44

44:                                               ; preds = %28, %16
  %45 = load %struct.configfs_fragment*, %struct.configfs_fragment** %6, align 8
  %46 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %45, i32 0, i32 0
  %47 = call i32 @up_read(i32* %46)
  %48 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @vfree(i32* %50)
  %52 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.configfs_buffer*, %struct.configfs_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.configfs_buffer, %struct.configfs_buffer* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %44, %2
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = call i32 @configfs_release(%struct.inode* %59, %struct.file* %60)
  ret i32 0
}

declare dso_local %struct.configfs_fragment* @to_frag(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @configfs_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
