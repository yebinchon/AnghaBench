; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_active_to_lps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_active_to_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@REG_SCH_TX_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to flush TX queue\0A\00", align 1
@REG_SYS_FUNC = common dso_local global i32 0, align 4
@SYS_FUNC_BBRSTB = common dso_local global i32 0, align 4
@SYS_FUNC_BB_GLB_RSTN = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i32 0, align 4
@CR_HCI_TXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_HCI_RXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_SECURITY_ENABLE = common dso_local global i32 0, align 4
@REG_DUAL_TSF_RST = common dso_local global i32 0, align 4
@DUAL_TSF_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8192eu_active_to_lps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192eu_active_to_lps(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %14 = load i32, i32* @REG_TXPAUSE, align 4
  %15 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %13, i32 %14, i32 255)
  store i32 100, i32* %7, align 4
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %26, %1
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %20 = load i32, i32* @REG_SCH_TX_CMD, align 4
  %21 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %18, label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @dev_warn(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %97

38:                                               ; preds = %30
  %39 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %40 = load i32, i32* @REG_SYS_FUNC, align 4
  %41 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @SYS_FUNC_BBRSTB, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %47 = load i32, i32* @REG_SYS_FUNC, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %46, i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 2)
  %51 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %52 = load i32, i32* @REG_SYS_FUNC, align 4
  %53 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @SYS_FUNC_BB_GLB_RSTN, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %59 = load i32, i32* @REG_SYS_FUNC, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %58, i32 %59, i32 %60)
  %62 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %63 = load i32, i32* @REG_CR, align 4
  %64 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 65280
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @CR_HCI_TXDMA_ENABLE, align 4
  %68 = load i32, i32* @CR_HCI_RXDMA_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %73 = load i32, i32* @REG_CR, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %72, i32 %73, i32 %74)
  %76 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %77 = load i32, i32* @REG_CR, align 4
  %78 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @CR_SECURITY_ENABLE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %84 = load i32, i32* @REG_CR, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %83, i32 %84, i32 %85)
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %88 = load i32, i32* @REG_DUAL_TSF_RST, align 4
  %89 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @DUAL_TSF_TX_OK, align 4
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %94 = load i32, i32* @REG_DUAL_TSF_RST, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %38, %33
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
