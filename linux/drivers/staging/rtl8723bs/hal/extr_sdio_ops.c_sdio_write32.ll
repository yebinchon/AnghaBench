; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HW_VAR_APFM_ON_MAC = common dso_local global i32 0, align 4
@WLAN_IOREG_DEVICE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intf_hdl*, i32, i32)* @sdio_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdio_write32(%struct.intf_hdl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.intf_hdl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.intf_hdl* %0, %struct.intf_hdl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %17 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  store i64 0, i64* %14, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @_cvrt2ftaddr(i32 %19, i64* %10, i32* %11)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.adapter*, %struct.adapter** %8, align 8
  %22 = load i32, i32* @HW_VAR_APFM_ON_MAC, align 4
  %23 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %21, i32 %22, i64* %9)
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @WLAN_IOREG_DEVICE_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %3
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.adapter*, %struct.adapter** %8, align 8
  %35 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33, %30, %27
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @cpu_to_le32(i32 %40)
  store i64 %41, i64* %15, align 8
  %42 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @sd_cmd52_write(%struct.intf_hdl* %42, i32 %43, i32 4, i64* %15)
  store i64 %44, i64* %4, align 8
  br label %64

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 3
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @sd_write32(%struct.intf_hdl* %52, i32 %53, i32 %54, i64* %14)
  br label %62

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @cpu_to_le32(i32 %57)
  store i64 %58, i64* %15, align 8
  %59 = load %struct.intf_hdl*, %struct.intf_hdl** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @sd_cmd52_write(%struct.intf_hdl* %59, i32 %60, i32 4, i64* %15)
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %39
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i32 @_cvrt2ftaddr(i32, i64*, i32*) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @sd_cmd52_write(%struct.intf_hdl*, i32, i32, i64*) #1

declare dso_local i32 @sd_write32(%struct.intf_hdl*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
