; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_lf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_lf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_segment_header }
%struct.v4l2_vp8_loopfilter_header = type { i32, i64*, i64*, i32, i64 }
%struct.v4l2_vp8_segment_header = type { i32, i64* }

@V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED = common dso_local global i32 0, align 4
@vp8_dec_lf_level = common dso_local global i32* null, align 8
@V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE = common dso_local global i32 0, align 4
@V4L2_VP8_LF_FILTER_TYPE_SIMPLE = common dso_local global i32 0, align 4
@VDPU_REG_REF_PIC_FILT_TYPE_E = common dso_local global i64 0, align 8
@VDPU_REG_FILTER_MB_ADJ = common dso_local global i32 0, align 4
@V4L2_VP8_LF_HEADER_ADJ_ENABLE = common dso_local global i32 0, align 4
@vp8_dec_mb_adj = common dso_local global i32* null, align 8
@vp8_dec_ref_adj = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_lf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_lf(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.v4l2_vp8_segment_header*, align 8
  %6 = alloca %struct.v4l2_vp8_loopfilter_header*, align 8
  %7 = alloca %struct.hantro_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %11 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %11, i32 0, i32 1
  store %struct.v4l2_vp8_segment_header* %12, %struct.v4l2_vp8_segment_header** %5, align 8
  %13 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %13, i32 0, i32 0
  store %struct.v4l2_vp8_loopfilter_header* %14, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %15 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %15, i32 0, i32 0
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %16, align 8
  store %struct.hantro_dev* %17, %struct.hantro_dev** %7, align 8
  %18 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %26 = load i32*, i32** @vp8_dec_lf_level, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @hantro_reg_write(%struct.hantro_dev* %25, i32* %27, i64 %30)
  br label %90

32:                                               ; preds = %2
  %33 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %46, %53
  %55 = call i64 @clamp(i64 %54, i32 0, i32 63)
  store i64 %55, i64* %10, align 8
  %56 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %57 = load i32*, i32** @vp8_dec_lf_level, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @hantro_reg_write(%struct.hantro_dev* %56, i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %40

66:                                               ; preds = %40
  br label %89

67:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %73 = load i32*, i32** @vp8_dec_lf_level, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load %struct.v4l2_vp8_segment_header*, %struct.v4l2_vp8_segment_header** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_vp8_segment_header, %struct.v4l2_vp8_segment_header* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @hantro_reg_write(%struct.hantro_dev* %72, i32* %76, i64 %83)
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %68

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89, %24
  %91 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @VDPU_REG_REF_PIC_FILT_SHARPNESS(i32 %93)
  store i64 %94, i64* %9, align 8
  %95 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @V4L2_VP8_LF_FILTER_TYPE_SIMPLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load i64, i64* @VDPU_REG_REF_PIC_FILT_TYPE_E, align 8
  %103 = load i64, i64* %9, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %9, align 8
  br label %105

105:                                              ; preds = %101, %90
  %106 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* @VDPU_REG_FILTER_MB_ADJ, align 4
  %109 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %106, i64 %107, i32 %108)
  %110 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @V4L2_VP8_LF_HEADER_ADJ_ENABLE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %105
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %147, %116
  %118 = load i32, i32* %8, align 4
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %122 = load i32*, i32** @vp8_dec_mb_adj, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %127 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @hantro_reg_write(%struct.hantro_dev* %121, i32* %125, i64 %132)
  %134 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %135 = load i32*, i32** @vp8_dec_ref_adj, align 8
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.v4l2_vp8_loopfilter_header*, %struct.v4l2_vp8_loopfilter_header** %6, align 8
  %140 = getelementptr inbounds %struct.v4l2_vp8_loopfilter_header, %struct.v4l2_vp8_loopfilter_header* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @hantro_reg_write(%struct.hantro_dev* %134, i32* %138, i64 %145)
  br label %147

147:                                              ; preds = %120
  %148 = load i32, i32* %8, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %117

150:                                              ; preds = %117
  br label %151

151:                                              ; preds = %150, %105
  ret void
}

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, i32*, i64) #1

declare dso_local i64 @clamp(i64, i32, i32) #1

declare dso_local i64 @VDPU_REG_REF_PIC_FILT_SHARPNESS(i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
