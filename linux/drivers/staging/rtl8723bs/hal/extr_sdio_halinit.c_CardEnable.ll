; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_CardEnable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_CardEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@HW_VAR_APFM_ON_MAC = common dso_local global i32 0, align 4
@REG_RSV_CTRL = common dso_local global i32 0, align 4
@PWR_CUT_ALL_MSK = common dso_local global i32 0, align 4
@PWR_FAB_ALL_MSK = common dso_local global i32 0, align 4
@PWR_INTF_SDIO_MSK = common dso_local global i32 0, align 4
@rtl8723B_card_enable_flow = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*)* @CardEnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CardEnable(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load i64, i64* @_FAIL, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load i32, i32* @HW_VAR_APFM_ON_MAC, align 4
  %9 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %7, i32 %8, i64* %3)
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = load i32, i32* @REG_RSV_CTRL, align 4
  %15 = call i32 @rtw_write8(%struct.adapter* %13, i32 %14, i32 0)
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @PWR_CUT_ALL_MSK, align 4
  %18 = load i32, i32* @PWR_FAB_ALL_MSK, align 4
  %19 = load i32, i32* @PWR_INTF_SDIO_MSK, align 4
  %20 = load i32, i32* @rtl8723B_card_enable_flow, align 4
  %21 = call i64 @HalPwrSeqCmdParsing(%struct.adapter* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  store i64 1, i64* %5, align 8
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load i32, i32* @HW_VAR_APFM_ON_MAC, align 4
  %28 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %26, i32 %27, i64* %5)
  br label %29

29:                                               ; preds = %25, %12
  br label %32

30:                                               ; preds = %1
  %31 = load i64, i64* @_SUCCESS, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i64 @HalPwrSeqCmdParsing(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
