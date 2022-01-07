; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_set_wss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_set_wss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.omap_dss_device = type { i32 }
%struct.venc_config = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"venc_set_wss\0A\00", align 1
@venc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VENC_BSTAMP_WSS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32)* @venc_set_wss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_set_wss(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_config*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @venc, i32 0, i32 1))
  %9 = call %struct.venc_config* @venc_timings_to_config(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @venc, i32 0, i32 2))
  store %struct.venc_config* %9, %struct.venc_config** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %10, 1048575
  %12 = shl i32 %11, 8
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @venc, i32 0, i32 0), align 4
  %13 = call i32 (...) @venc_runtime_get()
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @VENC_BSTAMP_WSS_DATA, align 4
  %19 = load %struct.venc_config*, %struct.venc_config** %5, align 8
  %20 = getelementptr inbounds %struct.venc_config, %struct.venc_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @venc, i32 0, i32 0), align 4
  %23 = or i32 %21, %22
  %24 = call i32 @venc_write_reg(i32 %18, i32 %23)
  %25 = call i32 (...) @venc_runtime_put()
  br label %26

26:                                               ; preds = %17, %16
  %27 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @venc, i32 0, i32 1))
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.venc_config* @venc_timings_to_config(i32*) #1

declare dso_local i32 @venc_runtime_get(...) #1

declare dso_local i32 @venc_write_reg(i32, i32) #1

declare dso_local i32 @venc_runtime_put(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
