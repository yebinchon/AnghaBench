; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_insert_delayed_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_insert_delayed_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_delayed_ref_head = type { i32, i32, i32 }
%struct.btrfs_delayed_ref_node = type { i64, i32, i32 }

@BTRFS_ADD_DELAYED_REF = common dso_local global i64 0, align 8
@BTRFS_DROP_DELAYED_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_node*)* @insert_delayed_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_delayed_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_delayed_ref_root* %1, %struct.btrfs_delayed_ref_head* %2, %struct.btrfs_delayed_ref_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %8 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %9 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %10 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_delayed_ref_root* %1, %struct.btrfs_delayed_ref_root** %7, align 8
  store %struct.btrfs_delayed_ref_head* %2, %struct.btrfs_delayed_ref_head** %8, align 8
  store %struct.btrfs_delayed_ref_node* %3, %struct.btrfs_delayed_ref_node** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %14 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %17 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %16, i32 0, i32 2
  %18 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %19 = call %struct.btrfs_delayed_ref_node* @tree_insert(i32* %17, %struct.btrfs_delayed_ref_node* %18)
  store %struct.btrfs_delayed_ref_node* %19, %struct.btrfs_delayed_ref_node** %10, align 8
  %20 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %21 = icmp ne %struct.btrfs_delayed_ref_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %117

23:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %24 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %28 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %33 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  br label %96

35:                                               ; preds = %23
  %36 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %37 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %40 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %35
  %44 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %45 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %48 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %50 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %54 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %57 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %59 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BTRFS_ADD_DELAYED_REF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %43
  %64 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %65 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %64, i32 0, i32 2
  %66 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %67 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail(i32* %65, i32* %67)
  br label %89

69:                                               ; preds = %43
  %70 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %71 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BTRFS_DROP_DELAYED_REF, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %77 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %76, i32 0, i32 2
  %78 = call i32 @list_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %84 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %83, i32 0, i32 2
  %85 = call i32 @list_del(i32* %84)
  br label %88

86:                                               ; preds = %69
  %87 = call i32 @ASSERT(i32 0)
  br label %88

88:                                               ; preds = %86, %75
  br label %89

89:                                               ; preds = %88, %63
  br label %95

90:                                               ; preds = %35
  %91 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %92 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %90, %89
  br label %96

96:                                               ; preds = %95, %31
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %99 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %103 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %108 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %7, align 8
  %109 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %110 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %10, align 8
  %111 = call i32 @drop_delayed_ref(%struct.btrfs_trans_handle* %107, %struct.btrfs_delayed_ref_root* %108, %struct.btrfs_delayed_ref_head* %109, %struct.btrfs_delayed_ref_node* %110)
  br label %112

112:                                              ; preds = %106, %96
  %113 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %114 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %5, align 4
  br label %137

117:                                              ; preds = %22
  %118 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %119 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BTRFS_ADD_DELAYED_REF, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %9, align 8
  %125 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %124, i32 0, i32 2
  %126 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %127 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %126, i32 0, i32 1
  %128 = call i32 @list_add_tail(i32* %125, i32* %127)
  br label %129

129:                                              ; preds = %123, %117
  %130 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %7, align 8
  %131 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %130, i32 0, i32 0
  %132 = call i32 @atomic_inc(i32* %131)
  %133 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %8, align 8
  %134 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %129, %112
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_ref_node* @tree_insert(i32*, %struct.btrfs_delayed_ref_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @drop_delayed_ref(%struct.btrfs_trans_handle*, %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
