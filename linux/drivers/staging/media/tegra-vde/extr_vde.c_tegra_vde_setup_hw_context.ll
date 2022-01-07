; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_hw_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_hw_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.tegra_vde_h264_decoder_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.video_frame = type { i32, i32 }

@CMDQUE_CONTROL = common dso_local global i32 0, align 4
@INTR_STATUS = common dso_local global i32 0, align 4
@BSE_CONFIG = common dso_local global i32 0, align 4
@BSE_INT_ENB = common dso_local global i32 0, align 4
@FLAG_B_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MBE frames setup failed %d\0A\00", align 1
@FLAG_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MBE programming failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_vde*, %struct.tegra_vde_h264_decoder_ctx*, %struct.video_frame*, i64, i64, i32)* @tegra_vde_setup_hw_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_setup_hw_context(%struct.tegra_vde* %0, %struct.tegra_vde_h264_decoder_ctx* %1, %struct.video_frame* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_vde*, align 8
  %9 = alloca %struct.tegra_vde_h264_decoder_ctx*, align 8
  %10 = alloca %struct.video_frame*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %8, align 8
  store %struct.tegra_vde_h264_decoder_ctx* %1, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  store %struct.video_frame* %2, %struct.video_frame** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %18 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %22 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %23 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %21, i32 10, i32 %24, i32 240)
  %26 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %27 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %28 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CMDQUE_CONTROL, align 4
  %31 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %26, i32 11, i32 %29, i32 %30)
  %32 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %33 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %34 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %32, i32 32770, i32 %35, i32 80)
  %37 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %38 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %39 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %37, i32 10, i32 %40, i32 160)
  %42 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %43 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %44 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %42, i32 10, i32 %45, i32 20)
  %47 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %48 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %49 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %47, i32 10, i32 %50, i32 40)
  %52 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %53 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %54 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %52, i32 2560, i32 %55, i32 8)
  %57 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %58 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %59 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %57, i32 10, i32 %60, i32 0)
  %62 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %63 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %64 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tegra_vde_set_bits(%struct.tegra_vde* %62, i32 5, i32 %65, i32 4)
  %67 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %68 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %69 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tegra_vde_writel(%struct.tegra_vde* %67, i32 0, i32 %70, i32 28)
  %72 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %73 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %74 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @tegra_vde_writel(%struct.tegra_vde* %72, i32 0, i32 %75, i32 0)
  %77 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %78 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %79 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @tegra_vde_writel(%struct.tegra_vde* %77, i32 7, i32 %80, i32 4)
  %82 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %83 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %84 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @tegra_vde_writel(%struct.tegra_vde* %82, i32 7, i32 %85, i32 512)
  %87 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %88 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %89 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @tegra_vde_writel(%struct.tegra_vde* %87, i32 5, i32 %90, i32 4)
  %92 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %93 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %94 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @tegra_vde_writel(%struct.tegra_vde* %92, i32 0, i32 %95, i32 132)
  %97 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %98 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %99 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @tegra_vde_writel(%struct.tegra_vde* %97, i32 16, i32 %100, i32 8)
  %102 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %103 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %104 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @tegra_vde_writel(%struct.tegra_vde* %102, i32 336, i32 %105, i32 84)
  %107 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %108 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %109 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @tegra_vde_writel(%struct.tegra_vde* %107, i32 1356, i32 %110, i32 88)
  %112 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %113 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %114 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @tegra_vde_writel(%struct.tegra_vde* %112, i32 3636, i32 %115, i32 92)
  %117 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %118 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %119 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @tegra_vde_writel(%struct.tegra_vde* %117, i32 104597052, i32 %120, i32 16)
  %122 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %123 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %124 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @INTR_STATUS, align 4
  %127 = call i32 @tegra_vde_writel(%struct.tegra_vde* %122, i32 261120, i32 %125, i32 %126)
  %128 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %129 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %130 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @BSE_CONFIG, align 4
  %133 = call i32 @tegra_vde_writel(%struct.tegra_vde* %128, i32 5389, i32 %131, i32 %132)
  %134 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %135 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %136 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BSE_INT_ENB, align 4
  %139 = call i32 @tegra_vde_writel(%struct.tegra_vde* %134, i32 256, i32 %137, i32 %138)
  %140 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %141 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %142 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tegra_vde_writel(%struct.tegra_vde* %140, i32 0, i32 %143, i32 152)
  %145 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %146 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %147 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @tegra_vde_writel(%struct.tegra_vde* %145, i32 96, i32 %148, i32 156)
  %150 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %151 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 128
  %154 = load i32, i32* %13, align 4
  %155 = udiv i32 %154, 2
  %156 = call i32 @memset(i64 %153, i32 0, i32 %155)
  %157 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %158 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %159 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %160 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %159, i32 0, i32 11
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %163 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %166 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @tegra_setup_frameidx(%struct.tegra_vde* %157, %struct.video_frame* %158, i64 %161, i32 %164, i32 %167)
  %169 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %170 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %171 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %172 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %171, i32 0, i32 11
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %173, 1
  %175 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %176 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %175, i32 0, i32 16
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @tegra_vde_setup_iram_tables(%struct.tegra_vde* %169, %struct.video_frame* %170, i64 %174, i32 %177)
  %179 = call i32 (...) @wmb()
  %180 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %181 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %182 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @tegra_vde_writel(%struct.tegra_vde* %180, i32 0, i32 %183, i32 140)
  %185 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %12, align 8
  %188 = add i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %191 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @tegra_vde_writel(%struct.tegra_vde* %185, i32 %189, i32 %192, i32 84)
  %194 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %195 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = shl i32 %196, 11
  %198 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %199 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 3
  %202 = or i32 %197, %201
  store i32 %202, i32* %15, align 4
  %203 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %206 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @tegra_vde_writel(%struct.tegra_vde* %203, i32 %204, i32 %207, i32 136)
  %209 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %210 = call i32 @tegra_vde_wait_bsev(%struct.tegra_vde* %209, i32 0)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %6
  %214 = load i32, i32* %16, align 4
  store i32 %214, i32* %7, align 4
  br label %576

215:                                              ; preds = %6
  %216 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %217 = call i32 @tegra_vde_push_to_bsev_icmdqueue(%struct.tegra_vde* %216, i32 -2147482628, i32 0)
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %16, align 4
  store i32 %221, i32* %7, align 4
  br label %576

222:                                              ; preds = %215
  store i32 22020096, i32* %15, align 4
  %223 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %224 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 512
  %227 = ashr i32 %226, 2
  %228 = and i32 %227, 65535
  %229 = load i32, i32* %15, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %15, align 4
  %231 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @tegra_vde_push_to_bsev_icmdqueue(%struct.tegra_vde* %231, i32 %232, i32 1)
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %222
  %237 = load i32, i32* %16, align 4
  store i32 %237, i32* %7, align 4
  br label %576

238:                                              ; preds = %222
  %239 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %240 = call i32 @tegra_vde_push_to_bsev_icmdqueue(%struct.tegra_vde* %239, i32 -2079390388, i32 0)
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* %16, align 4
  store i32 %244, i32* %7, align 4
  br label %576

245:                                              ; preds = %238
  %246 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %247 = call i32 @tegra_vde_push_to_bsev_icmdqueue(%struct.tegra_vde* %246, i32 -2147483520, i32 0)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %7, align 4
  br label %576

252:                                              ; preds = %245
  %253 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %254 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = ashr i32 %255, 2
  %257 = and i32 %256, 65535
  %258 = or i32 238288896, %257
  store i32 %258, i32* %15, align 4
  %259 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @tegra_vde_push_to_bsev_icmdqueue(%struct.tegra_vde* %259, i32 %260, i32 1)
  store i32 %261, i32* %16, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %252
  %265 = load i32, i32* %16, align 4
  store i32 %265, i32* %7, align 4
  br label %576

266:                                              ; preds = %252
  store i32 8388613, i32* %15, align 4
  %267 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %268 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = shl i32 %269, 11
  %271 = load i32, i32* %15, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %15, align 4
  %273 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %274 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = shl i32 %275, 3
  %277 = load i32, i32* %15, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %15, align 4
  %279 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %280 = load i32, i32* %15, align 4
  %281 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %282 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @tegra_vde_writel(%struct.tegra_vde* %279, i32 %280, i32 %283, i32 16)
  %285 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %286 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = shl i32 %290, 17
  store i32 %291, i32* %15, align 4
  %292 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %293 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = shl i32 %294, 13
  %296 = load i32, i32* %15, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %15, align 4
  %298 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %299 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = shl i32 %300, 7
  %302 = load i32, i32* %15, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %15, align 4
  %304 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %305 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = shl i32 %306, 5
  %308 = load i32, i32* %15, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %15, align 4
  %310 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %311 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %15, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %15, align 4
  %315 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %316 = load i32, i32* %15, align 4
  %317 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %318 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @tegra_vde_writel(%struct.tegra_vde* %315, i32 %316, i32 %319, i32 64)
  %321 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %322 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = shl i32 %323, 25
  store i32 %324, i32* %15, align 4
  %325 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %326 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %325, i32 0, i32 15
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = xor i1 %329, true
  %331 = zext i1 %330 to i32
  %332 = shl i32 %331, 2
  %333 = load i32, i32* %15, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %15, align 4
  %335 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %336 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %335, i32 0, i32 14
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  %339 = xor i1 %338, true
  %340 = xor i1 %339, true
  %341 = zext i1 %340 to i32
  %342 = load i32, i32* %15, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %15, align 4
  %344 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %345 = load i32, i32* %15, align 4
  %346 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %347 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @tegra_vde_writel(%struct.tegra_vde* %344, i32 %345, i32 %348, i32 68)
  %350 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %351 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %350, i32 0, i32 7
  %352 = load i32, i32* %351, align 4
  store i32 %352, i32* %15, align 4
  %353 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %354 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %353, i32 0, i32 8
  %355 = load i32, i32* %354, align 8
  %356 = shl i32 %355, 5
  %357 = load i32, i32* %15, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %15, align 4
  %359 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %360 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %359, i32 0, i32 9
  %361 = load i32, i32* %360, align 4
  %362 = shl i32 %361, 10
  %363 = load i32, i32* %15, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %15, align 4
  %365 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %366 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %365, i32 0, i32 13
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  %370 = xor i1 %369, true
  %371 = zext i1 %370 to i32
  %372 = shl i32 %371, 15
  %373 = load i32, i32* %15, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %15, align 4
  %375 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %376 = load i32, i32* %15, align 4
  %377 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %378 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @tegra_vde_writel(%struct.tegra_vde* %375, i32 %376, i32 %379, i32 72)
  store i32 201326592, i32* %15, align 4
  %381 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %382 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %381, i64 0
  %383 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @FLAG_B_FRAME, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  %388 = xor i1 %387, true
  %389 = xor i1 %388, true
  %390 = zext i1 %389 to i32
  %391 = shl i32 %390, 24
  %392 = load i32, i32* %15, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %15, align 4
  %394 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %395 = load i32, i32* %15, align 4
  %396 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %397 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @tegra_vde_writel(%struct.tegra_vde* %394, i32 %395, i32 %398, i32 76)
  store i32 58720256, i32* %15, align 4
  %400 = load i64, i64* %12, align 8
  %401 = call i64 @GENMASK(i32 19, i32 15)
  %402 = and i64 %400, %401
  %403 = load i32, i32* %15, align 4
  %404 = sext i32 %403 to i64
  %405 = or i64 %404, %402
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %15, align 4
  %407 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %408 = load i32, i32* %15, align 4
  %409 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %410 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = call i32 @tegra_vde_writel(%struct.tegra_vde* %407, i32 %408, i32 %411, i32 104)
  %413 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %414 = load i64, i64* %11, align 8
  %415 = trunc i64 %414 to i32
  %416 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %417 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @tegra_vde_writel(%struct.tegra_vde* %413, i32 %415, i32 %418, i32 108)
  store i32 268435461, i32* %15, align 4
  %420 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %421 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = shl i32 %422, 11
  %424 = load i32, i32* %15, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %15, align 4
  %426 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %427 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = shl i32 %428, 3
  %430 = load i32, i32* %15, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* %15, align 4
  %432 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %433 = load i32, i32* %15, align 4
  %434 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %435 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @tegra_vde_writel(%struct.tegra_vde* %432, i32 %433, i32 %436, i32 128)
  store i32 645922816, i32* %15, align 4
  %438 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %439 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = shl i32 %440, 4
  %442 = load i32, i32* %15, align 4
  %443 = or i32 %442, %441
  store i32 %443, i32* %15, align 4
  %444 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %445 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %444, i32 0, i32 10
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  %450 = shl i32 %449, 1
  %451 = load i32, i32* %15, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %15, align 4
  %453 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %454 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %453, i32 0, i32 12
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  %457 = xor i1 %456, true
  %458 = xor i1 %457, true
  %459 = zext i1 %458 to i32
  %460 = load i32, i32* %15, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %15, align 4
  %462 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %465 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @tegra_vde_writel(%struct.tegra_vde* %462, i32 %463, i32 %466, i32 128)
  %468 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %469 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %470 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @tegra_vde_writel(%struct.tegra_vde* %468, i32 -201326591, i32 %471, i32 128)
  %473 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %474 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %475 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @tegra_vde_writel(%struct.tegra_vde* %473, i32 536870912, i32 %476, i32 128)
  %478 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %479 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %480 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @tegra_vde_writel(%struct.tegra_vde* %478, i32 -201326335, i32 %481, i32 128)
  store i32 536870912, i32* %15, align 4
  %483 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %484 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %483, i32 0, i32 7
  %485 = load i32, i32* %484, align 4
  %486 = shl i32 %485, 8
  %487 = load i32, i32* %15, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %15, align 4
  %489 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %490 = load i32, i32* %15, align 4
  %491 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %492 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @tegra_vde_writel(%struct.tegra_vde* %489, i32 %490, i32 %493, i32 128)
  %495 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %496 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %497 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %496, i32 0, i32 11
  %498 = load i64, i64* %497, align 8
  %499 = sub nsw i64 %498, 1
  %500 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %501 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %500, i32 0, i32 4
  %502 = load i32, i32* %501, align 8
  %503 = icmp eq i32 %502, 0
  %504 = zext i1 %503 to i32
  %505 = call i32 @tegra_vde_setup_mbe_frame_idx(%struct.tegra_vde* %495, i64 %499, i32 %504)
  store i32 %505, i32* %16, align 4
  %506 = load i32, i32* %16, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %513

508:                                              ; preds = %266
  %509 = load %struct.device*, %struct.device** %14, align 8
  %510 = load i32, i32* %16, align 4
  %511 = call i32 @dev_err(%struct.device* %509, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %510)
  %512 = load i32, i32* %16, align 4
  store i32 %512, i32* %7, align 4
  br label %576

513:                                              ; preds = %266
  %514 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %515 = call i32 @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde* %514, i32 0, i32 2556)
  %516 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %517 = call i32 @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde* %516, i32 2, i32 1641983232)
  %518 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %519 = call i32 @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde* %518, i32 4, i32 1658760448)
  %520 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %521 = call i32 @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde* %520, i32 6, i32 1675537664)
  %522 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %523 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %524 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %523, i64 0
  %525 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde* %522, i32 8, i32 %526)
  store i32 -67108864, i32* %15, align 4
  %528 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %529 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %528, i64 0
  %530 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @FLAG_B_FRAME, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  %535 = xor i1 %534, true
  %536 = xor i1 %535, true
  %537 = zext i1 %536 to i32
  %538 = shl i32 %537, 2
  %539 = load i32, i32* %15, align 4
  %540 = or i32 %539, %538
  store i32 %540, i32* %15, align 4
  %541 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %9, align 8
  %542 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %541, i32 0, i32 10
  %543 = load i32, i32* %542, align 8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %559, label %545

545:                                              ; preds = %513
  %546 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %547 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %546, i64 0
  %548 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @FLAG_REFERENCE, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  %553 = xor i1 %552, true
  %554 = xor i1 %553, true
  %555 = zext i1 %554 to i32
  %556 = shl i32 %555, 1
  %557 = load i32, i32* %15, align 4
  %558 = or i32 %557, %556
  store i32 %558, i32* %15, align 4
  br label %559

559:                                              ; preds = %545, %513
  %560 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %561 = load i32, i32* %15, align 4
  %562 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %563 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @tegra_vde_writel(%struct.tegra_vde* %560, i32 %561, i32 %564, i32 128)
  %566 = load %struct.tegra_vde*, %struct.tegra_vde** %8, align 8
  %567 = call i32 @tegra_vde_wait_mbe(%struct.tegra_vde* %566)
  store i32 %567, i32* %16, align 4
  %568 = load i32, i32* %16, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %575

570:                                              ; preds = %559
  %571 = load %struct.device*, %struct.device** %14, align 8
  %572 = load i32, i32* %16, align 4
  %573 = call i32 @dev_err(%struct.device* %571, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %572)
  %574 = load i32, i32* %16, align 4
  store i32 %574, i32* %7, align 4
  br label %576

575:                                              ; preds = %559
  store i32 0, i32* %7, align 4
  br label %576

576:                                              ; preds = %575, %570, %508, %264, %250, %243, %236, %220, %213
  %577 = load i32, i32* %7, align 4
  ret i32 %577
}

declare dso_local i32 @tegra_vde_set_bits(%struct.tegra_vde*, i32, i32, i32) #1

declare dso_local i32 @tegra_vde_writel(%struct.tegra_vde*, i32, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @tegra_setup_frameidx(%struct.tegra_vde*, %struct.video_frame*, i64, i32, i32) #1

declare dso_local i32 @tegra_vde_setup_iram_tables(%struct.tegra_vde*, %struct.video_frame*, i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @tegra_vde_wait_bsev(%struct.tegra_vde*, i32) #1

declare dso_local i32 @tegra_vde_push_to_bsev_icmdqueue(%struct.tegra_vde*, i32, i32) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @tegra_vde_setup_mbe_frame_idx(%struct.tegra_vde*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra_vde_mbe_set_0xa_reg(%struct.tegra_vde*, i32, i32) #1

declare dso_local i32 @tegra_vde_wait_mbe(%struct.tegra_vde*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
