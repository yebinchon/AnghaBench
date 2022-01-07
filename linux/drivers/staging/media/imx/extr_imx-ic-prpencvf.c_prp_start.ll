; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i64, %struct.imx_media_video_dev*, %struct.imx_ic_priv* }
%struct.imx_media_video_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.imx_ic_priv = type { i32, i32, i32 }

@IPU_IRQ_NFB4EOF = common dso_local global i32 0, align 4
@prp_nfb4eof_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"imx-ic-prp-nfb4eof\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error registering NFB4EOF irq: %d\0A\00", align 1
@IPU_IRQ_EOF = common dso_local global i32 0, align 4
@prp_eof_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"imx-ic-prp-eof\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error registering eof irq: %d\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"upstream stream on failed: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*)* @prp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_start(%struct.prp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.prp_priv*, align 8
  %4 = alloca %struct.imx_ic_priv*, align 8
  %5 = alloca %struct.imx_media_video_dev*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %3, align 8
  %8 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %9 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %8, i32 0, i32 14
  %10 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %9, align 8
  store %struct.imx_ic_priv* %10, %struct.imx_ic_priv** %4, align 8
  %11 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %12 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %11, i32 0, i32 13
  %13 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %12, align 8
  store %struct.imx_media_video_dev* %13, %struct.imx_media_video_dev** %5, align 8
  %14 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %15 = call i32 @prp_get_ipu_resources(%struct.prp_priv* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %203

20:                                               ; preds = %1
  %21 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %5, align 8
  %22 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.v4l2_pix_format* %24, %struct.v4l2_pix_format** %6, align 8
  %25 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %26 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %29 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %28, i32 0, i32 2
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @imx_media_alloc_dma_buf(i32 %27, i32* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %199

37:                                               ; preds = %20
  %38 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %39 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %38, i32 0, i32 12
  store i64 0, i64* %39, align 8
  %40 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %41 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %40, i32 0, i32 11
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %44 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %43, i32 0, i32 10
  store i64 0, i64* %44, align 8
  %45 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %46 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %48 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %50 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ipu_rot_mode_is_irt(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %56 = call i32 @prp_setup_rotation(%struct.prp_priv* %55)
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %37
  %58 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %59 = call i32 @prp_setup_norotation(%struct.prp_priv* %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %192

64:                                               ; preds = %60
  %65 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %66 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %69 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IPU_IRQ_NFB4EOF, align 4
  %72 = call i8* @ipu_idmac_channel_irq(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %74 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %76 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %79 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @prp_nfb4eof_interrupt, align 4
  %82 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %83 = call i32 @devm_request_irq(i32 %77, i8* %80, i32 %81, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.prp_priv* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %64
  %87 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %88 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @v4l2_err(i32* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %188

91:                                               ; preds = %64
  %92 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %93 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ipu_rot_mode_is_irt(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %99 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %102 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IPU_IRQ_EOF, align 4
  %105 = call i8* @ipu_idmac_channel_irq(i32 %100, i32 %103, i32 %104)
  %106 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %107 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  br label %119

108:                                              ; preds = %91
  %109 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %110 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %113 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IPU_IRQ_EOF, align 4
  %116 = call i8* @ipu_idmac_channel_irq(i32 %111, i32 %114, i32 %115)
  %117 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %118 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %108, %97
  %120 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %121 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %124 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @prp_eof_interrupt, align 4
  %127 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %128 = call i32 @devm_request_irq(i32 %122, i8* %125, i32 %126, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.prp_priv* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %119
  %132 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %133 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @v4l2_err(i32* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  br label %179

136:                                              ; preds = %119
  %137 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %138 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @video, align 4
  %141 = load i32, i32* @s_stream, align 4
  %142 = call i32 @v4l2_subdev_call(i32 %139, i32 %140, i32 %141, i32 1)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %136
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @ENOIOCTLCMD, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  br label %153

152:                                              ; preds = %145, %136
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i32 [ %151, %150 ], [ 0, %152 ]
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %159 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %158, i32 0, i32 1
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @v4l2_err(i32* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %170

162:                                              ; preds = %153
  %163 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %164 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %163, i32 0, i32 5
  %165 = load i64, i64* @jiffies, align 8
  %166 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %167 = call i64 @msecs_to_jiffies(i32 %166)
  %168 = add nsw i64 %165, %167
  %169 = call i32 @mod_timer(i32* %164, i64 %168)
  store i32 0, i32* %2, align 4
  br label %203

170:                                              ; preds = %157
  %171 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %172 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %175 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %178 = call i32 @devm_free_irq(i32 %173, i8* %176, %struct.prp_priv* %177)
  br label %179

179:                                              ; preds = %170, %131
  %180 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %181 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %184 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %187 = call i32 @devm_free_irq(i32 %182, i8* %185, %struct.prp_priv* %186)
  br label %188

188:                                              ; preds = %179, %86
  %189 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %190 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %191 = call i32 @prp_unsetup(%struct.prp_priv* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %63
  %193 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %4, align 8
  %194 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %197 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %196, i32 0, i32 2
  %198 = call i32 @imx_media_free_dma_buf(i32 %195, i32* %197)
  br label %199

199:                                              ; preds = %192, %36
  %200 = load %struct.prp_priv*, %struct.prp_priv** %3, align 8
  %201 = call i32 @prp_put_ipu_resources(%struct.prp_priv* %200)
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %199, %162, %18
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @prp_get_ipu_resources(%struct.prp_priv*) #1

declare dso_local i32 @imx_media_alloc_dma_buf(i32, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @prp_setup_rotation(%struct.prp_priv*) #1

declare dso_local i32 @prp_setup_norotation(%struct.prp_priv*) #1

declare dso_local i8* @ipu_idmac_channel_irq(i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32, i8*, i32, i32, i8*, %struct.prp_priv*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @devm_free_irq(i32, i8*, %struct.prp_priv*) #1

declare dso_local i32 @prp_unsetup(%struct.prp_priv*, i32) #1

declare dso_local i32 @imx_media_free_dma_buf(i32, i32*) #1

declare dso_local i32 @prp_put_ipu_resources(%struct.prp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
