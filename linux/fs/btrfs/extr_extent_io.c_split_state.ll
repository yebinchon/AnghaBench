; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_split_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_split_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i32, i64 }
%struct.extent_state = type { i32, i8*, i8*, i32 }
%struct.rb_node = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_io_tree*, %struct.extent_state*, %struct.extent_state*, i8*)* @split_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_state(%struct.extent_io_tree* %0, %struct.extent_state* %1, %struct.extent_state* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.extent_state*, align 8
  %8 = alloca %struct.extent_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store %struct.extent_state* %1, %struct.extent_state** %7, align 8
  store %struct.extent_state* %2, %struct.extent_state** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %12 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %17 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @is_data_inode(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %23 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @btrfs_split_delalloc_extent(i64 %24, %struct.extent_state* %25, i8* %26)
  br label %28

28:                                               ; preds = %21, %15, %4
  %29 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %30 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %33 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr i8, i8* %34, i64 -1
  %36 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %37 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %39 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %42 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %45 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %47 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %46, i32 0, i32 0
  %48 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %49 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %48, i32 0, i32 0
  %50 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %51 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %54 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %53, i32 0, i32 0
  %55 = call %struct.rb_node* @tree_insert(i32* %47, i32* %49, i8* %52, i32* %54, i32* null, i32* null)
  store %struct.rb_node* %55, %struct.rb_node** %10, align 8
  %56 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %57 = icmp ne %struct.rb_node* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %28
  %59 = load %struct.extent_state*, %struct.extent_state** %8, align 8
  %60 = call i32 @free_extent_state(%struct.extent_state* %59)
  %61 = load i32, i32* @EEXIST, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @is_data_inode(i64) #1

declare dso_local i32 @btrfs_split_delalloc_extent(i64, %struct.extent_state*, i8*) #1

declare dso_local %struct.rb_node* @tree_insert(i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
