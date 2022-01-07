; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c__sdio_local_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c__sdio_local_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intf_hdl }
%struct.intf_hdl = type { i32 }

@SDIO_LOCAL_DEVICE_ID = common dso_local global i32 0, align 4
@HW_VAR_APFM_ON_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32*)* @_sdio_local_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sdio_local_read(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
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
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.intf_hdl*, %struct.intf_hdl** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @_sd_cmd52_read(%struct.intf_hdl* %28, i32 %29, i32 %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %58

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @RND4(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32* @rtw_malloc(i32 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %58

41:                                               ; preds = %33
  %42 = load %struct.intf_hdl*, %struct.intf_hdl** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @_sd_read(%struct.intf_hdl* %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %41
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %40, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @HalSdioGetCmdAddr8723BSdio(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @_sd_cmd52_read(%struct.intf_hdl*, i32, i32, i32*) #1

declare dso_local i32 @RND4(i32) #1

declare dso_local i32* @rtw_malloc(i32) #1

declare dso_local i32 @_sd_read(%struct.intf_hdl*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
