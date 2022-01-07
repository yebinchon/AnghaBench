; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_setup_norotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_setup_norotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32, i32, i32, %struct.imx_media_pixfmt**, %struct.v4l2_mbus_framefmt*, %struct.imx_ic_priv*, %struct.imx_media_video_dev* }
%struct.imx_media_pixfmt = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.imx_ic_priv = type { i32, i32 }
%struct.imx_media_video_dev = type { %struct.imx_media_pixfmt*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }
%struct.ipu_ic_csc = type { i32 }

@PRPENCVF_SINK_PAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"ipu_ic_calc_csc failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ipu_ic_task_init failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"prp_setup_channel(out_ch) failed, %d\0A\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*)* @prp_setup_norotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_setup_norotation(%struct.prp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.prp_priv*, align 8
  %4 = alloca %struct.imx_media_video_dev*, align 8
  %5 = alloca %struct.imx_ic_priv*, align 8
  %6 = alloca %struct.imx_media_pixfmt*, align 8
  %7 = alloca %struct.imx_media_pixfmt*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.ipu_ic_csc, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %3, align 8
  %13 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %14 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %13, i32 0, i32 6
  %15 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %14, align 8
  store %struct.imx_media_video_dev* %15, %struct.imx_media_video_dev** %4, align 8
  %16 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %17 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %16, i32 0, i32 5
  %18 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %17, align 8
  store %struct.imx_ic_priv* %18, %struct.imx_ic_priv** %5, align 8
  %19 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %20 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %19, i32 0, i32 4
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %20, align 8
  %22 = load i64, i64* @PRPENCVF_SINK_PAD, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i64 %22
  store %struct.v4l2_mbus_framefmt* %23, %struct.v4l2_mbus_framefmt** %8, align 8
  %24 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %25 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.v4l2_pix_format* %27, %struct.v4l2_pix_format** %9, align 8
  %28 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %29 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %28, i32 0, i32 3
  %30 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %29, align 8
  %31 = load i64, i64* @PRPENCVF_SINK_PAD, align 8
  %32 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %30, i64 %31
  %33 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %32, align 8
  store %struct.imx_media_pixfmt* %33, %struct.imx_media_pixfmt** %7, align 8
  %34 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %35 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %34, i32 0, i32 0
  %36 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %35, align 8
  store %struct.imx_media_pixfmt* %36, %struct.imx_media_pixfmt** %6, align 8
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %44 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %6, align 8
  %53 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ipu_ic_calc_csc(%struct.ipu_ic_csc* %10, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %1
  %59 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %60 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @v4l2_err(i32* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %2, align 4
  br label %150

64:                                               ; preds = %1
  %65 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %66 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ipu_ic_task_init(i32 %67, %struct.ipu_ic_csc* %10, i32 %70, i32 %73, i32 %76, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %85 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @v4l2_err(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %2, align 4
  br label %150

89:                                               ; preds = %64
  %90 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %92 = call i32 @prp_setup_vb2_buf(%struct.prp_priv* %90, i32* %91)
  %93 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %94 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %95 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %98 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @prp_setup_channel(%struct.prp_priv* %93, i32 %96, i32 %99, i32 %101, i32 %103, i32 0)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %89
  %108 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %109 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @v4l2_err(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %145

112:                                              ; preds = %89
  %113 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %114 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ipu_cpmem_dump(i32 %115)
  %117 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %118 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ipu_ic_dump(i32 %119)
  %121 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %5, align 8
  %122 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ipu_dump(i32 %123)
  %125 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %126 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ipu_ic_enable(i32 %127)
  %129 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %130 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ipu_idmac_select_buffer(i32 %131, i32 0)
  %133 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %134 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ipu_idmac_select_buffer(i32 %135, i32 1)
  %137 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %138 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ipu_idmac_enable_channel(i32 %139)
  %141 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %142 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ipu_ic_task_enable(i32 %143)
  store i32 0, i32* %2, align 4
  br label %150

145:                                              ; preds = %107
  %146 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %147 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %148 = call i32 @prp_unsetup_vb2_buf(%struct.prp_priv* %146, i32 %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %112, %83, %58
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @ipu_ic_calc_csc(%struct.ipu_ic_csc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @ipu_ic_task_init(i32, %struct.ipu_ic_csc*, i32, i32, i32, i32) #1

declare dso_local i32 @prp_setup_vb2_buf(%struct.prp_priv*, i32*) #1

declare dso_local i32 @prp_setup_channel(%struct.prp_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipu_cpmem_dump(i32) #1

declare dso_local i32 @ipu_ic_dump(i32) #1

declare dso_local i32 @ipu_dump(i32) #1

declare dso_local i32 @ipu_ic_enable(i32) #1

declare dso_local i32 @ipu_idmac_select_buffer(i32, i32) #1

declare dso_local i32 @ipu_idmac_enable_channel(i32) #1

declare dso_local i32 @ipu_ic_task_enable(i32) #1

declare dso_local i32 @prp_unsetup_vb2_buf(%struct.prp_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
