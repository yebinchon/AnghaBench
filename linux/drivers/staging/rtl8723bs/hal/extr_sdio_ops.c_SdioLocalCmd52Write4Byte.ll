; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_SdioLocalCmd52Write4Byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_SdioLocalCmd52Write4Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { i32 }

@SDIO_LOCAL_DEVICE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32)* @SdioLocalCmd52Write4Byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SdioLocalCmd52Write4Byte(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intf_hdl*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.intf_hdl* %11, %struct.intf_hdl** %7, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = load i32, i32* @SDIO_LOCAL_DEVICE_ID, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter* %12, i32 %13, i32 %14, i32* %5)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.intf_hdl*, %struct.intf_hdl** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sd_cmd52_write(%struct.intf_hdl* %18, i32 %19, i32 4, i32* %8)
  ret void
}

declare dso_local i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sd_cmd52_write(%struct.intf_hdl*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
