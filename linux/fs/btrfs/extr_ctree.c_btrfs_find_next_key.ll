; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_find_next_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_find_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32, %struct.extent_buffer**, i64, i64*, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_next_key(%struct.btrfs_root* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_key, align 4
  %17 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %8, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %5
  %29 = phi i1 [ false, %5 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  br label %32

32:                                               ; preds = %98, %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %179

36:                                               ; preds = %32
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 2
  %39 = load %struct.extent_buffer**, %struct.extent_buffer*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %39, i64 %41
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %42, align 8
  %44 = icmp ne %struct.extent_buffer* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %180

46:                                               ; preds = %36
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 2
  %57 = load %struct.extent_buffer**, %struct.extent_buffer*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %57, i64 %59
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %60, align 8
  store %struct.extent_buffer* %61, %struct.extent_buffer** %13, align 8
  br label %62

62:                                               ; preds = %170, %154, %46
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %65 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %64)
  %66 = icmp sge i32 %63, %65
  br i1 %66, label %67, label %155

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 2
  %75 = load %struct.extent_buffer**, %struct.extent_buffer*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %75, i64 %78
  %80 = load %struct.extent_buffer*, %struct.extent_buffer** %79, align 8
  %81 = icmp ne %struct.extent_buffer* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72, %67
  store i32 1, i32* %6, align 4
  br label %180

83:                                               ; preds = %72
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %85 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %84, i32 0, i32 4
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  %94 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %95 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %83
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %32

101:                                              ; preds = %93
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %103 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %102)
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %108, %struct.btrfs_key* %16, i32 %109)
  br label %115

111:                                              ; preds = %101
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %112, %struct.btrfs_key* %16, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %117 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %15, align 4
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %120 = call i32 @btrfs_release_path(%struct.btrfs_path* %119)
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %123 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %125 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %126 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %124, %struct.btrfs_key* %16, %struct.btrfs_path* %125, i32 0, i32 0)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %129 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %115
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %6, align 4
  br label %180

134:                                              ; preds = %115
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %136 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %135, i32 0, i32 2
  %137 = load %struct.extent_buffer**, %struct.extent_buffer*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %137, i64 %139
  %141 = load %struct.extent_buffer*, %struct.extent_buffer** %140, align 8
  store %struct.extent_buffer* %141, %struct.extent_buffer** %13, align 8
  %142 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %143 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %134
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %151, %134
  br label %62

155:                                              ; preds = %62
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %160 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %159, %struct.btrfs_key* %160, i32 %161)
  br label %178

163:                                              ; preds = %155
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i64 @btrfs_node_ptr_generation(%struct.extent_buffer* %164, i32 %165)
  store i64 %166, i64* %17, align 8
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* %11, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %62

173:                                              ; preds = %163
  %174 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %175 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %174, %struct.btrfs_key* %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %158
  store i32 0, i32* %6, align 4
  br label %180

179:                                              ; preds = %32
  store i32 1, i32* %6, align 4
  br label %180

180:                                              ; preds = %179, %178, %132, %82, %45
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
