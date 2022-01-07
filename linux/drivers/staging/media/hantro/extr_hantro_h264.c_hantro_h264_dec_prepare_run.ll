; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_hantro_h264_dec_prepare_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_hantro_h264_dec_prepare_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_h264_dec_hw_ctx }
%struct.hantro_h264_dec_hw_ctx = type { %struct.TYPE_2__, %struct.hantro_h264_dec_ctrls }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hantro_h264_dec_ctrls = type { i8*, i8*, i8*, i8*, i8* }
%struct.hantro_h264_reflist_builder = type { i32 }

@V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SPS = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hantro_h264_dec_prepare_run(%struct.hantro_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.hantro_h264_dec_hw_ctx*, align 8
  %5 = alloca %struct.hantro_h264_dec_ctrls*, align 8
  %6 = alloca %struct.hantro_h264_reflist_builder, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  %7 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %7, i32 0, i32 0
  store %struct.hantro_h264_dec_hw_ctx* %8, %struct.hantro_h264_dec_hw_ctx** %4, align 8
  %9 = load %struct.hantro_h264_dec_hw_ctx*, %struct.hantro_h264_dec_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.hantro_h264_dec_hw_ctx, %struct.hantro_h264_dec_hw_ctx* %9, i32 0, i32 1
  store %struct.hantro_h264_dec_ctrls* %10, %struct.hantro_h264_dec_ctrls** %5, align 8
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %12 = call i32 @hantro_prepare_run(%struct.hantro_ctx* %11)
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %14 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX, align 4
  %15 = call i8* @hantro_get_ctrl(%struct.hantro_ctx* %13, i32 %14)
  %16 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %17 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %19 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %118

29:                                               ; preds = %1
  %30 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %31 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS, align 4
  %32 = call i8* @hantro_get_ctrl(%struct.hantro_ctx* %30, i32 %31)
  %33 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %34 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %36 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %118

46:                                               ; preds = %29
  %47 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %48 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS, align 4
  %49 = call i8* @hantro_get_ctrl(%struct.hantro_ctx* %47, i32 %48)
  %50 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %51 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %53 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %118

63:                                               ; preds = %46
  %64 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %65 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SPS, align 4
  %66 = call i8* @hantro_get_ctrl(%struct.hantro_ctx* %64, i32 %65)
  %67 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %68 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %70 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %118

80:                                               ; preds = %63
  %81 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %82 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PPS, align 4
  %83 = call i8* @hantro_get_ctrl(%struct.hantro_ctx* %81, i32 %82)
  %84 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %85 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.hantro_h264_dec_ctrls*, %struct.hantro_h264_dec_ctrls** %5, align 8
  %87 = getelementptr inbounds %struct.hantro_h264_dec_ctrls, %struct.hantro_h264_dec_ctrls* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @WARN_ON(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %118

97:                                               ; preds = %80
  %98 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %99 = call i32 @update_dpb(%struct.hantro_ctx* %98)
  %100 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %101 = call i32 @prepare_table(%struct.hantro_ctx* %100)
  %102 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %103 = call i32 @init_reflist_builder(%struct.hantro_ctx* %102, %struct.hantro_h264_reflist_builder* %6)
  %104 = load %struct.hantro_h264_dec_hw_ctx*, %struct.hantro_h264_dec_hw_ctx** %4, align 8
  %105 = getelementptr inbounds %struct.hantro_h264_dec_hw_ctx, %struct.hantro_h264_dec_hw_ctx* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @build_p_ref_list(%struct.hantro_h264_reflist_builder* %6, i32 %107)
  %109 = load %struct.hantro_h264_dec_hw_ctx*, %struct.hantro_h264_dec_hw_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.hantro_h264_dec_hw_ctx, %struct.hantro_h264_dec_hw_ctx* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hantro_h264_dec_hw_ctx*, %struct.hantro_h264_dec_hw_ctx** %4, align 8
  %114 = getelementptr inbounds %struct.hantro_h264_dec_hw_ctx, %struct.hantro_h264_dec_hw_ctx* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @build_b_ref_lists(%struct.hantro_h264_reflist_builder* %6, i32 %112, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %97, %94, %77, %60, %43, %26
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local i8* @hantro_get_ctrl(%struct.hantro_ctx*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @update_dpb(%struct.hantro_ctx*) #1

declare dso_local i32 @prepare_table(%struct.hantro_ctx*) #1

declare dso_local i32 @init_reflist_builder(%struct.hantro_ctx*, %struct.hantro_h264_reflist_builder*) #1

declare dso_local i32 @build_p_ref_list(%struct.hantro_h264_reflist_builder*, i32) #1

declare dso_local i32 @build_b_ref_lists(%struct.hantro_h264_reflist_builder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
