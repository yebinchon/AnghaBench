; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_idmac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i64, i32, i64, i32, i32, i32, %struct.imx_media_video_dev* }
%struct.imx_media_video_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"csi_idmac_setup failed: %d\0A\00", align 1
@IPU_IRQ_NFB4EOF = common dso_local global i32 0, align 4
@csi_idmac_nfb4eof_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"imx-smfc-nfb4eof\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error registering NFB4EOF irq: %d\0A\00", align 1
@IPU_IRQ_EOF = common dso_local global i32 0, align 4
@csi_idmac_eof_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"imx-smfc-eof\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error registering eof irq: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_priv*)* @csi_idmac_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_idmac_start(%struct.csi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi_priv*, align 8
  %4 = alloca %struct.imx_media_video_dev*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %3, align 8
  %7 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %8 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %7, i32 0, i32 16
  %9 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %8, align 8
  store %struct.imx_media_video_dev* %9, %struct.imx_media_video_dev** %4, align 8
  %10 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %11 = call i32 @csi_idmac_get_ipu_resources(%struct.csi_priv* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %150

16:                                               ; preds = %1
  %17 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %18 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %21 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %24 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ipu_smfc_map_channel(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  %28 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.v4l2_pix_format* %30, %struct.v4l2_pix_format** %5, align 8
  %31 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %32 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %35 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %34, i32 0, i32 2
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @imx_media_alloc_dma_buf(i32 %33, i32* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %16
  br label %146

43:                                               ; preds = %16
  %44 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %45 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %44, i32 0, i32 12
  store i64 0, i64* %45, align 8
  %46 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %47 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %46, i32 0, i32 11
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %50 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %49, i32 0, i32 10
  store i64 0, i64* %50, align 8
  %51 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %52 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %54 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %56 = call i32 @csi_idmac_setup(%struct.csi_priv* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %61 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %60, i32 0, i32 6
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @v4l2_err(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %139

64:                                               ; preds = %43
  %65 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %66 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %69 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IPU_IRQ_NFB4EOF, align 4
  %72 = call i8* @ipu_idmac_channel_irq(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %74 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %76 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %79 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @csi_idmac_nfb4eof_interrupt, align 4
  %82 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %83 = call i32 @devm_request_irq(i32 %77, i8* %80, i32 %81, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.csi_priv* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %64
  %87 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %88 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %87, i32 0, i32 6
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @v4l2_err(i32* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %135

91:                                               ; preds = %64
  %92 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %93 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %96 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IPU_IRQ_EOF, align 4
  %99 = call i8* @ipu_idmac_channel_irq(i32 %94, i32 %97, i32 %98)
  %100 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %101 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %103 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %106 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @csi_idmac_eof_interrupt, align 4
  %109 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %110 = call i32 @devm_request_irq(i32 %104, i8* %107, i32 %108, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.csi_priv* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %91
  %114 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %115 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %114, i32 0, i32 6
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @v4l2_err(i32* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %126

118:                                              ; preds = %91
  %119 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %120 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %119, i32 0, i32 5
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %123 = call i64 @msecs_to_jiffies(i32 %122)
  %124 = add nsw i64 %121, %123
  %125 = call i32 @mod_timer(i32* %120, i64 %124)
  store i32 0, i32* %2, align 4
  br label %150

126:                                              ; preds = %113
  %127 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %128 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %131 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %134 = call i32 @devm_free_irq(i32 %129, i8* %132, %struct.csi_priv* %133)
  br label %135

135:                                              ; preds = %126, %86
  %136 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %137 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %138 = call i32 @csi_idmac_unsetup(%struct.csi_priv* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %59
  %140 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %141 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %144 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %143, i32 0, i32 2
  %145 = call i32 @imx_media_free_dma_buf(i32 %142, i32* %144)
  br label %146

146:                                              ; preds = %139, %42
  %147 = load %struct.csi_priv*, %struct.csi_priv** %3, align 8
  %148 = call i32 @csi_idmac_put_ipu_resources(%struct.csi_priv* %147)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %118, %14
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @csi_idmac_get_ipu_resources(%struct.csi_priv*) #1

declare dso_local i32 @ipu_smfc_map_channel(i32, i32, i32) #1

declare dso_local i32 @imx_media_alloc_dma_buf(i32, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @csi_idmac_setup(%struct.csi_priv*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i8* @ipu_idmac_channel_irq(i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32, i8*, i32, i32, i8*, %struct.csi_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @devm_free_irq(i32, i8*, %struct.csi_priv*) #1

declare dso_local i32 @csi_idmac_unsetup(%struct.csi_priv*, i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, i32*) #1

declare dso_local i32 @csi_idmac_put_ipu_resources(%struct.csi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
