; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_setup_items_for_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_setup_items_for_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_item = type { i32 }
%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_map_token = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"not enough freespace need %u have %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"slot %d old_data %d data_end %d\00", align 1
@BTRFS_LEAF_DATA_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_items_for_insert(%struct.btrfs_root* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_fs_info*, align 8
  %16 = alloca %struct.btrfs_item*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_disk_key, align 4
  %21 = alloca %struct.extent_buffer*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.btrfs_map_token, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %9, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %27, align 8
  store %struct.btrfs_fs_info* %28, %struct.btrfs_fs_info** %15, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %30 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %7
  %36 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %37 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %20, %struct.btrfs_key* %36)
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %39 = call i32 @fixup_low_keys(%struct.btrfs_path* %38, %struct.btrfs_disk_key* %20, i32 1)
  br label %40

40:                                               ; preds = %35, %7
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %42 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %41, i32 1)
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 1
  %45 = load %struct.extent_buffer**, %struct.extent_buffer*** %44, align 8
  %46 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %45, i64 0
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %46, align 8
  store %struct.extent_buffer* %47, %struct.extent_buffer** %21, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %49 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %22, align 4
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %54 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %56 = call i32 @leaf_data_end(%struct.extent_buffer* %55)
  store i32 %56, i32* %19, align 4
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %58 = call i64 @btrfs_leaf_free_space(%struct.extent_buffer* %57)
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %40
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %64 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %63)
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %68 = call i64 @btrfs_leaf_free_space(%struct.extent_buffer* %67)
  %69 = trunc i64 %68 to i32
  %70 = call i32 (%struct.btrfs_fs_info*, i8*, i32, i32, ...) @btrfs_crit(%struct.btrfs_fs_info* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  %71 = call i32 (...) @BUG()
  br label %72

72:                                               ; preds = %62, %40
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %74 = call i32 @btrfs_init_map_token(%struct.btrfs_map_token* %23, %struct.extent_buffer* %73)
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %144

78:                                               ; preds = %72
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %80 = load i32, i32* %22, align 4
  %81 = call i32 @btrfs_item_end_nr(%struct.extent_buffer* %79, i32 %80)
  store i32 %81, i32* %24, align 4
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %87 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %86)
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %19, align 4
  %92 = call i32 (%struct.btrfs_fs_info*, i8*, i32, i32, ...) @btrfs_crit(%struct.btrfs_fs_info* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = call i32 (...) @BUG()
  br label %94

94:                                               ; preds = %85, %78
  %95 = load i32, i32* %22, align 4
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %112, %94
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = call %struct.btrfs_item* @btrfs_item_nr(i32 %101)
  store %struct.btrfs_item* %102, %struct.btrfs_item** %16, align 8
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %104 = load %struct.btrfs_item*, %struct.btrfs_item** %16, align 8
  %105 = call i32 @btrfs_token_item_offset(%struct.extent_buffer* %103, %struct.btrfs_item* %104, %struct.btrfs_map_token* %23)
  store i32 %105, i32* %25, align 4
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %107 = load %struct.btrfs_item*, %struct.btrfs_item** %16, align 8
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @btrfs_set_token_item_offset(%struct.extent_buffer* %106, %struct.btrfs_item* %107, i32 %110, %struct.btrfs_map_token* %23)
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @btrfs_item_nr_offset(i32 %119)
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @btrfs_item_nr_offset(i32 %121)
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %22, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %116, i32 %120, i32 %122, i32 %128)
  %130 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %131 = load i32, i32* @BTRFS_LEAF_DATA_OFFSET, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = sub i32 %133, %134
  %136 = load i32, i32* @BTRFS_LEAF_DATA_OFFSET, align 4
  %137 = load i32, i32* %19, align 4
  %138 = add i32 %136, %137
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sub i32 %139, %140
  %142 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %130, i32 %135, i32 %138, i32 %141)
  %143 = load i32, i32* %24, align 4
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %115, %72
  store i32 0, i32* %17, align 4
  br label %145

145:                                              ; preds = %189, %144
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %192

149:                                              ; preds = %145
  %150 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %150, i64 %152
  %154 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %20, %struct.btrfs_key* %153)
  %155 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @btrfs_set_item_key(%struct.extent_buffer* %155, %struct.btrfs_disk_key* %20, i32 %158)
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %160, %161
  %163 = call %struct.btrfs_item* @btrfs_item_nr(i32 %162)
  store %struct.btrfs_item* %163, %struct.btrfs_item** %16, align 8
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %165 = load %struct.btrfs_item*, %struct.btrfs_item** %16, align 8
  %166 = load i32, i32* %19, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = sub i32 %166, %171
  %173 = call i32 @btrfs_set_token_item_offset(%struct.extent_buffer* %164, %struct.btrfs_item* %165, i32 %172, %struct.btrfs_map_token* %23)
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %19, align 4
  %180 = sub i32 %179, %178
  store i32 %180, i32* %19, align 4
  %181 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %182 = load %struct.btrfs_item*, %struct.btrfs_item** %16, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @btrfs_set_token_item_size(%struct.extent_buffer* %181, %struct.btrfs_item* %182, i32 %187, %struct.btrfs_map_token* %23)
  br label %189

189:                                              ; preds = %149
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %17, align 4
  br label %145

192:                                              ; preds = %145
  %193 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %193, i32 %196)
  %198 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %199 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %198)
  %200 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %201 = call i64 @btrfs_leaf_free_space(%struct.extent_buffer* %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %192
  %204 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %205 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %204)
  %206 = call i32 (...) @BUG()
  br label %207

207:                                              ; preds = %203, %192
  ret void
}

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @leaf_data_end(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_leaf_free_space(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_print_leaf(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_crit(%struct.btrfs_fs_info*, i8*, i32, i32, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @btrfs_init_map_token(%struct.btrfs_map_token*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_end_nr(%struct.extent_buffer*, i32) #1

declare dso_local %struct.btrfs_item* @btrfs_item_nr(i32) #1

declare dso_local i32 @btrfs_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_item_nr_offset(i32) #1

declare dso_local i32 @btrfs_set_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_set_token_item_size(%struct.extent_buffer*, %struct.btrfs_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
