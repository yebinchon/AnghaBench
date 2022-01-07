; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_init_reflist_builder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_init_reflist_builder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.v4l2_h264_dpb_entry*, %struct.TYPE_9__ }
%struct.v4l2_h264_dpb_entry = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.v4l2_ctrl_h264_decode_params* }
%struct.v4l2_ctrl_h264_decode_params = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vb2_queue }
%struct.vb2_queue = type { i32 }
%struct.hantro_h264_reflist_builder = type { i32*, i64, i8**, i8*, %struct.v4l2_h264_dpb_entry* }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_H264_DPB_ENTRY_FLAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.hantro_h264_reflist_builder*)* @init_reflist_builder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_reflist_builder(%struct.hantro_ctx* %0, %struct.hantro_h264_reflist_builder* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.hantro_h264_reflist_builder*, align 8
  %5 = alloca %struct.v4l2_ctrl_h264_decode_params*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.hantro_h264_reflist_builder* %1, %struct.hantro_h264_reflist_builder** %4, align 8
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %12 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %11)
  store %struct.vb2_v4l2_buffer* %12, %struct.vb2_v4l2_buffer** %6, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %15, align 8
  store %struct.v4l2_h264_dpb_entry* %16, %struct.v4l2_h264_dpb_entry** %7, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.vb2_queue* %22, %struct.vb2_queue** %8, align 8
  %23 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %26, align 8
  store %struct.v4l2_ctrl_h264_decode_params* %27, %struct.v4l2_ctrl_h264_decode_params** %5, align 8
  %28 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %29 = call i32 @memset(%struct.hantro_h264_reflist_builder* %28, i32 0, i32 40)
  %30 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %7, align 8
  %31 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %32 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %31, i32 0, i32 4
  store %struct.v4l2_h264_dpb_entry* %30, %struct.v4l2_h264_dpb_entry** %32, align 8
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @get_poc(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %44 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %115, %2
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %49, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.v4l2_h264_dpb_entry* %50)
  %52 = icmp ult i32 %46, %51
  br i1 %52, label %53, label %118

53:                                               ; preds = %45
  %54 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %54, i64 %56
  %58 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_ACTIVE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %115

64:                                               ; preds = %53
  %65 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %66 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %66, i64 %68
  %70 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %65, i32 %71, i32 0)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %115

76:                                               ; preds = %64
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @vb2_get_buffer(%struct.vb2_queue* %77, i32 %78)
  %80 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(i32 %79)
  store %struct.vb2_v4l2_buffer* %80, %struct.vb2_v4l2_buffer** %6, align 8
  %81 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %84, i64 %86
  %88 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %90, i64 %92
  %94 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @get_poc(i32 %83, i32 %89, i32 %95)
  %97 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %98 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  store i8* %96, i8** %102, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %105 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %108 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %103, i32* %110, align 4
  %111 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %112 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %76, %75, %63
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %45

118:                                              ; preds = %45
  %119 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %120 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %139, %118
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %127, align 8
  %129 = call i32 @ARRAY_SIZE(%struct.v4l2_h264_dpb_entry* %128)
  %130 = icmp ult i32 %124, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %123
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %4, align 8
  %134 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %123

142:                                              ; preds = %123
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @memset(%struct.hantro_h264_reflist_builder*, i32, i32) #1

declare dso_local i8* @get_poc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.v4l2_h264_dpb_entry*) #1

declare dso_local i32 @vb2_find_timestamp(%struct.vb2_queue*, i32, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(i32) #1

declare dso_local i32 @vb2_get_buffer(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
