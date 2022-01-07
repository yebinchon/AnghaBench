; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_forward.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32, i32, i32*, %struct.extent_buffer**, i8** }
%struct.extent_buffer = type { i32 }

@BTRFS_READ_LOCK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_search_forward(%struct.btrfs_root* %0, %struct.btrfs_key* %1, %struct.btrfs_path* %2, i64 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_key*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_key, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %15, align 4
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %139, %4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %25 = call %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root* %24)
  store %struct.extent_buffer* %25, %struct.extent_buffer** %9, align 8
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %27 = call i32 @btrfs_header_level(%struct.extent_buffer* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 3
  %30 = load %struct.extent_buffer**, %struct.extent_buffer*** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %30, i64 %32
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %33, align 8
  %35 = call i32 @WARN_ON(%struct.extent_buffer* %34)
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 3
  %39 = load %struct.extent_buffer**, %struct.extent_buffer*** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %39, i64 %41
  store %struct.extent_buffer* %36, %struct.extent_buffer** %42, align 8
  %43 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %43, i8** %49, align 8
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %51 = call i64 @btrfs_header_generation(%struct.extent_buffer* %50)
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %23
  store i32 1, i32* %15, align 4
  br label %194

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %172
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %58 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %60 = call i32 @btrfs_header_level(%struct.extent_buffer* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %62 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @btrfs_bin_search(%struct.extent_buffer* %61, %struct.btrfs_key* %62, i32 %63, i32* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %15, align 4
  br label %194

69:                                               ; preds = %56
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %117

80:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %83 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %88, %struct.btrfs_key* %10, i32 %89)
  br label %194

91:                                               ; preds = %69
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %97, %94, %91
  br label %101

101:                                              ; preds = %112, %100
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @btrfs_node_ptr_generation(%struct.extent_buffer* %106, i32 %107)
  store i64 %108, i64* %17, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %101

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %101
  br label %117

117:                                              ; preds = %116, %79
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %124 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %130 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %129)
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %132 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %133 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @btrfs_find_next_key(%struct.btrfs_root* %131, %struct.btrfs_path* %132, %struct.btrfs_key* %133, i32 %134, i64 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %121
  %140 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %141 = call i32 @btrfs_release_path(%struct.btrfs_path* %140)
  br label %23

142:                                              ; preds = %121
  br label %194

143:                                              ; preds = %117
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %144, %struct.btrfs_key* %10, i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %149 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %156 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  store i32 0, i32* %15, align 4
  br label %194

160:                                              ; preds = %143
  %161 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %162 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %161)
  %163 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer* %163, i32 %164)
  store %struct.extent_buffer* %165, %struct.extent_buffer** %9, align 8
  %166 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %167 = call i64 @IS_ERR(%struct.extent_buffer* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %171 = call i32 @PTR_ERR(%struct.extent_buffer* %170)
  store i32 %171, i32* %15, align 4
  br label %194

172:                                              ; preds = %160
  %173 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %174 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %173)
  %175 = load i8*, i8** @BTRFS_READ_LOCK, align 8
  %176 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %177 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %176, i32 0, i32 4
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %178, i64 %181
  store i8* %175, i8** %182, align 8
  %183 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %184 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %185 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %184, i32 0, i32 3
  %186 = load %struct.extent_buffer**, %struct.extent_buffer*** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %186, i64 %189
  store %struct.extent_buffer* %183, %struct.extent_buffer** %190, align 8
  %191 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @unlock_up(%struct.btrfs_path* %191, i32 %192, i32 1, i32 0, i32* null)
  br label %56

194:                                              ; preds = %169, %159, %142, %80, %67, %54
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %197 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %15, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %202 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %203 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  %206 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %201, i32 %205)
  %207 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %208 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %207)
  %209 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %210 = call i32 @memcpy(%struct.btrfs_key* %209, %struct.btrfs_key* %10, i32 4)
  br label %211

211:                                              ; preds = %200, %194
  %212 = load i32, i32* %15, align 4
  ret i32 %212
}

declare dso_local %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_bin_search(%struct.extent_buffer*, %struct.btrfs_key*, i32, i32*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_find_next_key(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @memcpy(%struct.btrfs_key*, %struct.btrfs_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
