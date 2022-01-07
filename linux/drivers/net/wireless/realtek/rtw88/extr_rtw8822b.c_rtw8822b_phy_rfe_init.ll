; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_phy_rfe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_phy_rfe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_phy_rfe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_phy_rfe_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %3 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %4 = call i32 @BIT(i32 29)
  %5 = call i32 @BIT(i32 28)
  %6 = or i32 %4, %5
  %7 = call i32 @rtw_write32_mask(%struct.rtw_dev* %3, i32 100, i32 %6, i32 3)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = call i32 @BIT(i32 26)
  %10 = call i32 @BIT(i32 25)
  %11 = or i32 %9, %10
  %12 = call i32 @rtw_write32_mask(%struct.rtw_dev* %8, i32 76, i32 %11, i32 0)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = call i32 @BIT(i32 2)
  %15 = call i32 @rtw_write32_mask(%struct.rtw_dev* %13, i32 64, i32 %14, i32 1)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = call i32 @rtw_write32_mask(%struct.rtw_dev* %16, i32 6544, i32 63, i32 48)
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %19 = call i32 @BIT(i32 11)
  %20 = call i32 @BIT(i32 10)
  %21 = or i32 %19, %20
  %22 = call i32 @rtw_write32_mask(%struct.rtw_dev* %18, i32 6544, i32 %21, i32 3)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %23, i32 2420, i32 63, i32 63)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %26 = call i32 @BIT(i32 11)
  %27 = call i32 @BIT(i32 10)
  %28 = or i32 %26, %27
  %29 = call i32 @rtw_write32_mask(%struct.rtw_dev* %25, i32 2420, i32 %28, i32 3)
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
