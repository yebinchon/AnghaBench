; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_comp_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_comp_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_node = type { i64, i64 }

@BTRFS_TREE_BLOCK_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_SHARED_BLOCK_REF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node*, i32)* @comp_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_refs(%struct.btrfs_delayed_ref_node* %0, %struct.btrfs_delayed_ref_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %6 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_delayed_ref_node* %0, %struct.btrfs_delayed_ref_node** %5, align 8
  store %struct.btrfs_delayed_ref_node* %1, %struct.btrfs_delayed_ref_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %78

26:                                               ; preds = %17
  %27 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BTRFS_TREE_BLOCK_REF_KEY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BTRFS_SHARED_BLOCK_REF_KEY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %26
  %39 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %40 = call i32 @btrfs_delayed_node_to_tree_ref(%struct.btrfs_delayed_ref_node* %39)
  %41 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %42 = call i32 @btrfs_delayed_node_to_tree_ref(%struct.btrfs_delayed_ref_node* %41)
  %43 = call i32 @comp_tree_refs(i32 %40, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %50

44:                                               ; preds = %32
  %45 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %46 = call i32 @btrfs_delayed_node_to_data_ref(%struct.btrfs_delayed_ref_node* %45)
  %47 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %48 = call i32 @btrfs_delayed_node_to_data_ref(%struct.btrfs_delayed_ref_node* %47)
  %49 = call i32 @comp_data_refs(i32 %46, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %78

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %60 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %78

67:                                               ; preds = %58
  %68 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %6, align 8
  %72 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %78

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %55
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %75, %66, %53, %25, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @comp_tree_refs(i32, i32) #1

declare dso_local i32 @btrfs_delayed_node_to_tree_ref(%struct.btrfs_delayed_ref_node*) #1

declare dso_local i32 @comp_data_refs(i32, i32) #1

declare dso_local i32 @btrfs_delayed_node_to_data_ref(%struct.btrfs_delayed_ref_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
