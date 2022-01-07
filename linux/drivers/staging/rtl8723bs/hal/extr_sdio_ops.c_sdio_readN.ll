; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_readN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_readN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_hdl = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.TYPE_2__ = type { i64 }

@HW_VAR_APFM_ON_MAC = common dso_local global i32 0, align 4
@WLAN_IOREG_DEVICE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intf_hdl*, i32, i32, i64*)* @sdio_readN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_readN(%struct.intf_hdl* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intf_hdl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store %struct.intf_hdl* %0, %struct.intf_hdl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %19 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %20 = getelementptr inbounds %struct.intf_hdl, %struct.intf_hdl* %19, i32 0, i32 0
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  store %struct.adapter* %21, %struct.adapter** %10, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @_cvrt2ftaddr(i32 %22, i64* %12, i32* %13)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.adapter*, %struct.adapter** %10, align 8
  %25 = load i32, i32* @HW_VAR_APFM_ON_MAC, align 4
  %26 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %24, i32 %25, i64* %11)
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @WLAN_IOREG_DEVICE_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %42, label %33

33:                                               ; preds = %30, %4
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.adapter*, %struct.adapter** %10, align 8
  %38 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36, %33, %30
  %43 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i64*, i64** %9, align 8
  %47 = call i32 @sd_cmd52_read(%struct.intf_hdl* %43, i32 %44, i32 %45, i64* %46)
  store i32 %47, i32* %5, align 4
  br label %93

48:                                               ; preds = %36
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 3
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i64*, i64** %9, align 8
  %59 = call i32 @sd_read(%struct.intf_hdl* %55, i32 %56, i32 %57, i64* %58)
  store i32 %59, i32* %16, align 4
  br label %91

60:                                               ; preds = %48
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, -4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %15, align 8
  %66 = add nsw i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i64* @rtw_malloc(i32 %68)
  store i64* %69, i64** %17, align 8
  %70 = load i64*, i64** %17, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %93

73:                                               ; preds = %60
  %74 = load %struct.intf_hdl*, %struct.intf_hdl** %6, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i64*, i64** %17, align 8
  %78 = call i32 @sd_read(%struct.intf_hdl* %74, i32 %75, i32 %76, i64* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %73
  %82 = load i64*, i64** %9, align 8
  %83 = load i64*, i64** %17, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @memcpy(i64* %82, i64* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %73
  %89 = load i64*, i64** %17, align 8
  %90 = call i32 @kfree(i64* %89)
  br label %91

91:                                               ; preds = %88, %54
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %72, %42
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @_cvrt2ftaddr(i32, i64*, i32*) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @sd_cmd52_read(%struct.intf_hdl*, i32, i32, i64*) #1

declare dso_local i32 @sd_read(%struct.intf_hdl*, i32, i32, i64*) #1

declare dso_local i64* @rtw_malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
