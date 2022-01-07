; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_init_delayed_ref_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_init_delayed_ref_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_delayed_ref_node = type { i32, i32, i32, i32, i32, i32, i8*, i64, i8*, i8*, i32 }

@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_delayed_ref_node*, i8*, i8*, i8*, i32, i32)* @init_delayed_ref_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_delayed_ref_common(%struct.btrfs_fs_info* %0, %struct.btrfs_delayed_ref_node* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_delayed_ref_node* %1, %struct.btrfs_delayed_ref_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @BTRFS_ADD_DELAYED_REF, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @is_fstree(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = call i8* @atomic64_read(i32* %27)
  store i8* %28, i8** %15, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %30, i32 0, i32 10
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %35 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %38 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %40 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %43 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %45 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %50 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %53 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %55 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %54, i32 0, i32 4
  %56 = call i32 @RB_CLEAR_NODE(i32* %55)
  %57 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %58 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %57, i32 0, i32 3
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  ret void
}

declare dso_local i64 @is_fstree(i8*) #1

declare dso_local i8* @atomic64_read(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
