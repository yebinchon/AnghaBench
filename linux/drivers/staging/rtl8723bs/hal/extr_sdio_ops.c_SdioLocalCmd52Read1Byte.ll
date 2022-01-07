; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_SdioLocalCmd52Read1Byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_SdioLocalCmd52Read1Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { i32 }

@SDIO_LOCAL_DEVICE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SdioLocalCmd52Read1Byte(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intf_hdl*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.intf_hdl* %9, %struct.intf_hdl** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load i32, i32* @SDIO_LOCAL_DEVICE_ID, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter* %10, i32 %11, i32 %12, i32* %4)
  %14 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @sd_cmd52_read(%struct.intf_hdl* %14, i32 %15, i32 1, i32* %5)
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @sd_cmd52_read(%struct.intf_hdl*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
