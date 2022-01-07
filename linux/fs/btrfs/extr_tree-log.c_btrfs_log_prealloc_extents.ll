; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_prealloc_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_prealloc_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { i32, i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_INODE_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_KEY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.btrfs_path*)* @btrfs_log_prealloc_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_log_prealloc_extents(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1, %struct.btrfs_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_inode*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  %19 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %19, i32 0, i32 2
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %8, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %22, i32 0, i32 1
  %24 = call i64 @i_size_read(i32* %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %26 = call i64 @btrfs_ino(%struct.btrfs_inode* %25)
  store i64 %26, i64* %11, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %12, align 8
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BTRFS_INODE_PREALLOC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %197

34:                                               ; preds = %3
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* @BTRFS_EXTENT_DATA_KEY, align 8
  %38 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %43 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %41, %struct.btrfs_key* %9, %struct.btrfs_path* %42, i32 0, i32 0)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %191

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %89, %117, %174
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 1
  %51 = load %struct.extent_buffer**, %struct.extent_buffer*** %50, align 8
  %52 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %51, i64 0
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %52, align 8
  store %struct.extent_buffer* %53, %struct.extent_buffer** %17, align 8
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %61 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %60)
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %48
  %64 = load i32, i32* %14, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %68 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %70 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @copy_items(%struct.btrfs_trans_handle* %67, %struct.btrfs_inode* %68, %struct.btrfs_path* %69, %struct.btrfs_path* %70, i64* %13, i32 %71, i32 %72, i32 1, i32 0)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %191

77:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %81 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %79, %struct.btrfs_path* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %191

85:                                               ; preds = %78
  %86 = load i32, i32* %16, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  br label %175

89:                                               ; preds = %85
  br label %48

90:                                               ; preds = %48
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %91, %struct.btrfs_key* %9, i32 %92)
  %94 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %175

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp slt i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @WARN_ON_ONCE(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BTRFS_EXTENT_DATA_KEY, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %112, %107, %99
  %118 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %119 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %48

124:                                              ; preds = %112
  %125 = load i64, i64* %13, align 8
  %126 = icmp eq i64 %125, -1
  br i1 %126, label %127, label %150

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %13, align 8
  br label %130

130:                                              ; preds = %140, %127
  %131 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %132 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %133 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %136 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %135, i32 0, i32 1
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @BTRFS_EXTENT_DATA_KEY, align 8
  %139 = call i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle* %131, i32 %134, i32* %136, i64 %137, i64 %138)
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @EAGAIN, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %130, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %191

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %124
  %151 = load i32, i32* %14, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  %158 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %159 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %165 = icmp ne %struct.btrfs_path* %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %155
  %167 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %167, %struct.btrfs_path** %12, align 8
  %168 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %169 = icmp ne %struct.btrfs_path* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %16, align 4
  br label %191

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %155
  br label %48

175:                                              ; preds = %98, %88
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %180 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %181 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %182 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @copy_items(%struct.btrfs_trans_handle* %179, %struct.btrfs_inode* %180, %struct.btrfs_path* %181, %struct.btrfs_path* %182, i64* %13, i32 %183, i32 %184, i32 1, i32 0)
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %16, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %178
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %188, %178
  br label %190

190:                                              ; preds = %189, %175
  br label %191

191:                                              ; preds = %190, %170, %148, %84, %76, %46
  %192 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %193 = call i32 @btrfs_release_path(%struct.btrfs_path* %192)
  %194 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %195 = call i32 @btrfs_free_path(%struct.btrfs_path* %194)
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %191, %33
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @copy_items(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.btrfs_path*, %struct.btrfs_path*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle*, i32, i32*, i64, i64) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
