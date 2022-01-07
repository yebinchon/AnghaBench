; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_sdio.c_wl1271_sdio_set_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_sdio.c_wl1271_sdio_set_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wl12xx_sdio_glue = type { i32 }
%struct.sdio_func = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @wl1271_sdio_set_block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_sdio_set_block_size(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl12xx_sdio_glue*, align 8
  %6 = alloca %struct.sdio_func*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wl12xx_sdio_glue* @dev_get_drvdata(i32 %9)
  store %struct.wl12xx_sdio_glue* %10, %struct.wl12xx_sdio_glue** %5, align 8
  %11 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %5, align 8
  %12 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sdio_func* @dev_to_sdio_func(i32 %13)
  store %struct.sdio_func* %14, %struct.sdio_func** %6, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %16 = call i32 @sdio_claim_host(%struct.sdio_func* %15)
  %17 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @sdio_set_block_size(%struct.sdio_func* %17, i32 %18)
  %20 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %21 = call i32 @sdio_release_host(%struct.sdio_func* %20)
  ret void
}

declare dso_local %struct.wl12xx_sdio_glue* @dev_get_drvdata(i32) #1

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
