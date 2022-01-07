; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_local_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_local_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SDIO_LOCAL_DEVICE_ID = common dso_local global i32 0, align 4
@HW_VAR_APFM_ON_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_local_read(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.intf_hdl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.intf_hdl* %17, %struct.intf_hdl** %10, align 8
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = load i32, i32* @SDIO_LOCAL_DEVICE_ID, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter* %18, i32 %19, i32 %20, i32* %7)
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = load i32, i32* @HW_VAR_APFM_ON_MAC, align 4
  %24 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %22, i32 %23, i32* %11)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27, %4
  %34 = load %struct.intf_hdl*, %struct.intf_hdl** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @sd_cmd52_read(%struct.intf_hdl* %34, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %64

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @RND4(i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32* @rtw_malloc(i32 %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %64

47:                                               ; preds = %39
  %48 = load %struct.intf_hdl*, %struct.intf_hdl** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @sd_read(%struct.intf_hdl* %48, i32 %49, i32 %50, i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i32* %56, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %47
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %46, %33
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @sd_cmd52_read(%struct.intf_hdl*, i32, i32, i32*) #1

declare dso_local i32 @RND4(i32) #1

declare dso_local i32* @rtw_malloc(i32) #1

declare dso_local i32 @sd_read(%struct.intf_hdl*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
