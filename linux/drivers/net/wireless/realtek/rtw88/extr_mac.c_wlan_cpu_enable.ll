; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_wlan_cpu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_wlan_cpu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_RSV_CTRL = common dso_local global i64 0, align 8
@BIT_WLMCU_IOIF = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@BIT_FEN_CPUEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @wlan_cpu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_cpu_enable(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = load i64, i64* @REG_RSV_CTRL, align 8
  %10 = add nsw i64 %9, 1
  %11 = load i32, i32* @BIT_WLMCU_IOIF, align 4
  %12 = call i32 @rtw_write8_set(%struct.rtw_dev* %8, i64 %10, i32 %11)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* @BIT_FEN_CPUEN, align 4
  %17 = call i32 @rtw_write8_set(%struct.rtw_dev* %13, i64 %15, i32 %16)
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %20 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @BIT_FEN_CPUEN, align 4
  %23 = call i32 @rtw_write8_clr(%struct.rtw_dev* %19, i64 %21, i32 %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i64, i64* @REG_RSV_CTRL, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* @BIT_WLMCU_IOIF, align 4
  %28 = call i32 @rtw_write8_clr(%struct.rtw_dev* %24, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write8_clr(%struct.rtw_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
