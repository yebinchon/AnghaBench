; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_quantization_header }
%struct.v4l2_vp8_segment_header = type { i32, i64* }
%struct.v4l2_vp8_quantization_header = type { i64, i64, i64, i64, i64, i64 }

@V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED = common dso_local global i32 0, align 4
@vp8_dec_quant = common dso_local global i32* null, align 8
@V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE = common dso_local global i32 0, align 4
@vp8_dec_quant_delta = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_qp(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.v4l2_vp8_quantization_header*, align 8
  %6 = alloca %struct.v4l2_vp8_segment_header*, align 8
  %7 = alloca %struct.hantro_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %10 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %10, i32 0, i32 1
  store %struct.v4l2_vp8_quantization_header* %11, %struct.v4l2_vp8_quantization_header** %5, align 8
  %12 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %12, i32 0, i32 0
  store %struct.v4l2_vp8_segment_header* %13, %struct.v4l2_vp8_segment_header** %6, align 8
  %14 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %14, i32 0, i32 0
  %16 = load %struct.hantro_dev*, %struct.hantro_dev** %15, align 8
  store %struct.hantro_dev* %16, %struct.hantro_dev** %7, align 8
  %17 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %25 = load i32*, i32** @vp8_dec_quant, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @hantro_reg_write(%struct.hantro_dev* %24, i32* %26, i64 %29)
  br label %89

31:                                               ; preds = %2
  %32 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %45, %52
  %54 = call i64 @clamp(i64 %53, i32 0, i32 127)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %56 = load i32*, i32** @vp8_dec_quant, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @hantro_reg_write(%struct.hantro_dev* %55, i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %39

65:                                               ; preds = %39
  br label %88

66:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp ult i32 %68, 4
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %72 = load i32*, i32** @vp8_dec_quant, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @hantro_reg_write(%struct.hantro_dev* %71, i32* %75, i64 %82)
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %67

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %23
  %90 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %91 = load i32*, i32** @vp8_dec_quant_delta, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @hantro_reg_write(%struct.hantro_dev* %90, i32* %92, i64 %95)
  %97 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %98 = load i32*, i32** @vp8_dec_quant_delta, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @hantro_reg_write(%struct.hantro_dev* %97, i32* %99, i64 %102)
  %104 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %105 = load i32*, i32** @vp8_dec_quant_delta, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @hantro_reg_write(%struct.hantro_dev* %104, i32* %106, i64 %109)
  %111 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %112 = load i32*, i32** @vp8_dec_quant_delta, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @hantro_reg_write(%struct.hantro_dev* %111, i32* %113, i64 %116)
  %118 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %119 = load i32*, i32** @vp8_dec_quant_delta, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load %struct.v4l2_vp8_quantization_header*, %struct.v4l2_vp8_quantization_header** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_vp8_quantization_header, %struct.v4l2_vp8_quantization_header* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @hantro_reg_write(%struct.hantro_dev* %118, i32* %120, i64 %123)
  ret void
}

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, i32*, i64) #1

declare dso_local i64 @clamp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
