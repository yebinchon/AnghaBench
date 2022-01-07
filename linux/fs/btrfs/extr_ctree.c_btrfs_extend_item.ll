; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_extend_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_extend_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_item = type { i32 }
%struct.btrfs_map_token = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"slot %d too large, nritems %d\00", align 1
@BTRFS_LEAF_DATA_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_extend_item(%struct.btrfs_path* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_path*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_item*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_map_token, align 4
  %14 = alloca i64, align 8
  store %struct.btrfs_path* %0, %struct.btrfs_path** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %15, i32 0, i32 1
  %17 = load %struct.extent_buffer**, %struct.extent_buffer*** %16, align 8
  %18 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %17, i64 0
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  store %struct.extent_buffer* %19, %struct.extent_buffer** %6, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %21 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %23 = call i32 @leaf_data_end(%struct.extent_buffer* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %25 = call i64 @btrfs_leaf_free_space(%struct.extent_buffer* %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %30 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %29)
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @btrfs_item_end_nr(%struct.extent_buffer* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %32
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %51 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %50)
  %52 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @btrfs_crit(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %56)
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %49, %32
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %61 = call i32 @btrfs_init_map_token(%struct.btrfs_map_token* %13, %struct.extent_buffer* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %80, %59
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = call %struct.btrfs_item* @btrfs_item_nr(i32 %69)
  store %struct.btrfs_item* %70, %struct.btrfs_item** %7, align 8
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %72 = load %struct.btrfs_item*, %struct.btrfs_item** %7, align 8
  %73 = call i64 @btrfs_token_item_offset(%struct.extent_buffer* %71, %struct.btrfs_item* %72, %struct.btrfs_map_token* %13)
  store i64 %73, i64* %14, align 8
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %75 = load %struct.btrfs_item*, %struct.btrfs_item** %7, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %4, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i32 @btrfs_set_token_item_offset(%struct.extent_buffer* %74, %struct.btrfs_item* %75, i64 %78, %struct.btrfs_map_token* %13)
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %63

83:                                               ; preds = %63
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %85 = load i64, i64* @BTRFS_LEAF_DATA_OFFSET, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i64, i64* %4, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* @BTRFS_LEAF_DATA_OFFSET, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub i32 %95, %96
  %98 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %84, i64 %90, i64 %94, i32 %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %9, align 4
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call %struct.btrfs_item* @btrfs_item_nr(i32 %103)
  store %struct.btrfs_item* %104, %struct.btrfs_item** %7, align 8
  %105 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %106 = load %struct.btrfs_item*, %struct.btrfs_item** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %4, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @btrfs_set_item_size(%struct.extent_buffer* %105, %struct.btrfs_item* %106, i64 %110)
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %113 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %112)
  %114 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %115 = call i64 @btrfs_leaf_free_space(%struct.extent_buffer* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %83
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %119 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %118)
  %120 = call i32 (...) @BUG()
  br label %121

121:                                              ; preds = %117, %83
  ret void
}

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @leaf_data_end(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_leaf_free_space(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_print_leaf(%struct.extent_buffer*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @btrfs_item_end_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_crit(i32, i8*, i32, i64) #1

declare dso_local i32 @btrfs_init_map_token(%struct.btrfs_map_token*, %struct.extent_buffer*) #1

declare dso_local %struct.btrfs_item* @btrfs_item_nr(i32) #1

declare dso_local i64 @btrfs_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, i64, %struct.btrfs_map_token*) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i32) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_item_size(%struct.extent_buffer*, %struct.btrfs_item*, i64) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
