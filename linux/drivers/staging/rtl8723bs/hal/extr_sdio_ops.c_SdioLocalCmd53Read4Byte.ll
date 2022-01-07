; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_SdioLocalCmd53Read4Byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_SdioLocalCmd53Read4Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SDIO_LOCAL_DEVICE_ID = common dso_local global i32 0, align 4
@HW_VAR_APFM_ON_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @SdioLocalCmd53Read4Byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SdioLocalCmd53Read4Byte(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intf_hdl*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.intf_hdl* %11, %struct.intf_hdl** %7, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i32, i32* @SDIO_LOCAL_DEVICE_ID, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter* %12, i32 %13, i32 %14, i32* %4)
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = load i32, i32* @HW_VAR_APFM_ON_MAC, align 4
  %18 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %16, i32 %17, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21, %2
  %28 = load %struct.intf_hdl*, %struct.intf_hdl** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @sd_cmd52_read(%struct.intf_hdl* %28, i32 %29, i32 4, i32* %8)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.intf_hdl*, %struct.intf_hdl** %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @sd_read32(%struct.intf_hdl* %34, i32 %35, i32* null)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @sd_cmd52_read(%struct.intf_hdl*, i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @sd_read32(%struct.intf_hdl*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
