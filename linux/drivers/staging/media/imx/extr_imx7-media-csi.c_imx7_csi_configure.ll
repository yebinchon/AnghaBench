; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32, %struct.TYPE_6__*, %struct.imx_media_video_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.imx_media_video_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i64, i32, i32 }

@IMX7_CSI_PAD_SINK = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@CSI_CSICR18 = common dso_local global i32 0, align 4
@BIT_BASEADDR_SWITCH_EN = common dso_local global i32 0, align 4
@BIT_BASEADDR_SWITCH_SEL = common dso_local global i32 0, align 4
@BIT_BASEADDR_CHG_ERR_EN = common dso_local global i32 0, align 4
@CSI_CSICR1 = common dso_local global i32 0, align 4
@BIT_GCLK_MODE = common dso_local global i32 0, align 4
@BIT_MIPI_DATA_FORMAT_MASK = common dso_local global i32 0, align 4
@BIT_DATA_FROM_MIPI = common dso_local global i32 0, align 4
@BIT_MIPI_DATA_FORMAT_YUV422_8B = common dso_local global i32 0, align 4
@BIT_MIPI_DATA_FORMAT_RAW8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR10_1X10 = common dso_local global i32 0, align 4
@BIT_MIPI_DATA_FORMAT_RAW10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR12_1X12 = common dso_local global i32 0, align 4
@BIT_MIPI_DATA_FORMAT_RAW12 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR14_1X14 = common dso_local global i32 0, align 4
@BIT_MIPI_DATA_FORMAT_RAW14 = common dso_local global i32 0, align 4
@BIT_PIXEL_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx7_csi*)* @imx7_csi_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_configure(%struct.imx7_csi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx7_csi*, align 8
  %4 = alloca %struct.imx_media_video_dev*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %3, align 8
  %10 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %11 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %10, i32 0, i32 2
  %12 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %11, align 8
  store %struct.imx_media_video_dev* %12, %struct.imx_media_video_dev** %4, align 8
  %13 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %14 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %5, align 8
  %17 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %18 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i64, i64* @IMX7_CSI_PAD_SINK, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %34 = call i32 @imx7_csi_deinterlace_enable(%struct.imx7_csi* %33, i32 1)
  %35 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @imx7_csi_buf_stride_set(%struct.imx7_csi* %35, i32 %38)
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %42 = call i32 @imx7_csi_deinterlace_enable(%struct.imx7_csi* %41, i32 0)
  %43 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %44 = call i32 @imx7_csi_buf_stride_set(%struct.imx7_csi* %43, i32 0)
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %47 = load i32, i32* @CSI_CSICR18, align 4
  %48 = call i32 @imx7_csi_reg_read(%struct.imx7_csi* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %50 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %45
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @imx7_csi_set_imagpara(%struct.imx7_csi* %67, i32 %68, i32 %71)
  %73 = load i32, i32* @BIT_BASEADDR_SWITCH_EN, align 4
  %74 = load i32, i32* @BIT_BASEADDR_SWITCH_SEL, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @BIT_BASEADDR_CHG_ERR_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @CSI_CSICR18, align 4
  %83 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %80, i32 %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %157

84:                                               ; preds = %45
  %85 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @imx7_csi_set_imagpara(%struct.imx7_csi* %85, i32 %86, i32 %89)
  %91 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %92 = load i32, i32* @CSI_CSICR1, align 4
  %93 = call i32 @imx7_csi_reg_read(%struct.imx7_csi* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @BIT_GCLK_MODE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @BIT_MIPI_DATA_FORMAT_MASK, align 4
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @BIT_DATA_FROM_MIPI, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %145 [
    i32 129, label %107
    i32 128, label %107
    i32 130, label %111
    i32 131, label %115
  ]

107:                                              ; preds = %84, %84
  %108 = load i32, i32* @BIT_MIPI_DATA_FORMAT_YUV422_8B, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %148

111:                                              ; preds = %84
  %112 = load i32, i32* @BIT_MIPI_DATA_FORMAT_RAW8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %148

115:                                              ; preds = %84
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_1X10, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* @BIT_MIPI_DATA_FORMAT_RAW10, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %141

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @MEDIA_BUS_FMT_SBGGR12_1X12, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* @BIT_MIPI_DATA_FORMAT_RAW12, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %140

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @MEDIA_BUS_FMT_SBGGR14_1X14, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @BIT_MIPI_DATA_FORMAT_RAW14, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %127
  br label %141

141:                                              ; preds = %140, %119
  %142 = load i32, i32* @BIT_PIXEL_BIT, align 4
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %148

145:                                              ; preds = %84
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %157

148:                                              ; preds = %141, %111, %107
  %149 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @CSI_CSICR1, align 4
  %152 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %149, i32 %150, i32 %151)
  %153 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @CSI_CSICR18, align 4
  %156 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %153, i32 %154, i32 %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %148, %145, %66
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @imx7_csi_deinterlace_enable(%struct.imx7_csi*, i32) #1

declare dso_local i32 @imx7_csi_buf_stride_set(%struct.imx7_csi*, i32) #1

declare dso_local i32 @imx7_csi_reg_read(%struct.imx7_csi*, i32) #1

declare dso_local i32 @imx7_csi_set_imagpara(%struct.imx7_csi*, i32, i32) #1

declare dso_local i32 @imx7_csi_reg_write(%struct.imx7_csi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
