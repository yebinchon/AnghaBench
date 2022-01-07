; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_GetHwReg8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_GetHwReg8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@REG_TDECTRL = common dso_local global i32 0, align 4
@rf_off = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i32 0, align 4
@BTEfuseUsedBytes = common dso_local global i32 0, align 4
@REG_TXPKT_EMPTY = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@REG_SYS_CLKR = common dso_local global i32 0, align 4
@REG_WOWLAN_WAKE_REASON = common dso_local global i32 0, align 4
@SDIO_LOCAL_BASE = common dso_local global i32 0, align 4
@SDIO_REG_HRPWM1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetHwReg8723B(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %11)
  store %struct.hal_com_data* %12, %struct.hal_com_data** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %89 [
    i32 129, label %14
    i32 138, label %19
    i32 132, label %31
    i32 133, label %59
    i32 134, label %64
    i32 135, label %69
    i32 136, label %70
    i32 139, label %73
    i32 137, label %78
  ]

14:                                               ; preds = %3
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i32, i32* @REG_TXPAUSE, align 4
  %17 = call i32 @rtw_read8(%struct.adapter* %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load i32, i32* @REG_TDECTRL, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i32 @rtw_read8(%struct.adapter* %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = call i32 @BIT(i32 0)
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %94

31:                                               ; preds = %3
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = call %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @rf_off, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %31
  %44 = load i32*, i32** %6, align 8
  store i32 1, i32* %44, align 4
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = load i32, i32* @REG_RCR, align 4
  %48 = call i32 @rtw_read32(%struct.adapter* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 458752
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  store i32 0, i32* %54, align 4
  br label %57

55:                                               ; preds = %45
  %56 = load i32*, i32** %6, align 8
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57, %43
  br label %94

59:                                               ; preds = %3
  %60 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %61 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %94

64:                                               ; preds = %3
  %65 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %66 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %94

69:                                               ; preds = %3
  br label %94

70:                                               ; preds = %3
  %71 = load i32, i32* @BTEfuseUsedBytes, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %94

73:                                               ; preds = %3
  %74 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %75 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  br label %94

78:                                               ; preds = %3
  %79 = load %struct.adapter*, %struct.adapter** %4, align 8
  %80 = load i32, i32* @REG_TXPKT_EMPTY, align 4
  %81 = call i32 @rtw_read16(%struct.adapter* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @BIT(i32 10)
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %94

89:                                               ; preds = %3
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @GetHwReg(%struct.adapter* %90, i32 %91, i32* %92)
  br label %94

94:                                               ; preds = %89, %78, %73, %70, %69, %64, %59, %58, %19, %14
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.TYPE_4__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_read16(%struct.adapter*, i32) #1

declare dso_local i32 @GetHwReg(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
