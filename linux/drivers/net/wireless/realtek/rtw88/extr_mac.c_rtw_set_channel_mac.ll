; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_set_channel_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_set_channel_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_DATA_SC = common dso_local global i32 0, align 4
@REG_WMAC_TRXPTCL_CTL = common dso_local global i32 0, align 4
@BIT_RFMOD = common dso_local global i32 0, align 4
@BIT_RFMOD_80M = common dso_local global i32 0, align 4
@BIT_RFMOD_40M = common dso_local global i32 0, align 4
@REG_AFE_CTRL1 = common dso_local global i32 0, align 4
@BIT_MAC_CLK_SEL = common dso_local global i32 0, align 4
@MAC_CLK_HW_DEF_80M = common dso_local global i32 0, align 4
@BIT_SHIFT_MAC_CLK_SEL = common dso_local global i32 0, align 4
@REG_USTIME_TSF = common dso_local global i32 0, align 4
@MAC_CLK_SPEED = common dso_local global i32 0, align 4
@REG_USTIME_EDCA = common dso_local global i32 0, align 4
@REG_CCK_CHECK = common dso_local global i32 0, align 4
@BIT_CHECK_CCK_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_set_channel_mac(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 9, i32* %9, align 4
  br label %21

20:                                               ; preds = %16
  store i32 10, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %23 = load i32, i32* @REG_DATA_SC, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @BIT_TXSC_20M(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @BIT_TXSC_40M(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @rtw_write8(%struct.rtw_dev* %22, i32 %23, i32 %28)
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %31 = load i32, i32* @REG_WMAC_TRXPTCL_CTL, align 4
  %32 = call i32 @rtw_read32(%struct.rtw_dev* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @BIT_RFMOD, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %47 [
    i32 128, label %38
    i32 129, label %42
    i32 130, label %46
  ]

38:                                               ; preds = %21
  %39 = load i32, i32* @BIT_RFMOD_80M, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %48

42:                                               ; preds = %21
  %43 = load i32, i32* @BIT_RFMOD_40M, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %48

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %21, %46
  br label %48

48:                                               ; preds = %47, %42, %38
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %50 = load i32, i32* @REG_WMAC_TRXPTCL_CTL, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @rtw_write32(%struct.rtw_dev* %49, i32 %50, i32 %51)
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %54 = load i32, i32* @REG_AFE_CTRL1, align 4
  %55 = call i32 @rtw_read32(%struct.rtw_dev* %53, i32 %54)
  %56 = load i32, i32* @BIT_MAC_CLK_SEL, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @MAC_CLK_HW_DEF_80M, align 4
  %60 = load i32, i32* @BIT_SHIFT_MAC_CLK_SEL, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %65 = load i32, i32* @REG_AFE_CTRL1, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @rtw_write32(%struct.rtw_dev* %64, i32 %65, i32 %66)
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %69 = load i32, i32* @REG_USTIME_TSF, align 4
  %70 = load i32, i32* @MAC_CLK_SPEED, align 4
  %71 = call i32 @rtw_write8(%struct.rtw_dev* %68, i32 %69, i32 %70)
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %73 = load i32, i32* @REG_USTIME_EDCA, align 4
  %74 = load i32, i32* @MAC_CLK_SPEED, align 4
  %75 = call i32 @rtw_write8(%struct.rtw_dev* %72, i32 %73, i32 %74)
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %77 = load i32, i32* @REG_CCK_CHECK, align 4
  %78 = call i32 @rtw_read8(%struct.rtw_dev* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @BIT_CHECK_CCK_EN, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 35
  br i1 %84, label %85, label %89

85:                                               ; preds = %48
  %86 = load i32, i32* @BIT_CHECK_CCK_EN, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %48
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %91 = load i32, i32* @REG_CCK_CHECK, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @rtw_write8(%struct.rtw_dev* %90, i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT_TXSC_20M(i32) #1

declare dso_local i32 @BIT_TXSC_40M(i32) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
