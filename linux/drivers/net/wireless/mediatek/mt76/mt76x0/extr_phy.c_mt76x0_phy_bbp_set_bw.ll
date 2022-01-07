; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_bbp_set_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_bbp_set_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@BW_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x0_phy_bbp_set_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_bbp_set_bw(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %7 [
    i32 132, label %8
    i32 133, label %8
    i32 131, label %9
    i32 129, label %10
    i32 135, label %11
    i32 128, label %12
    i32 134, label %12
    i32 130, label %12
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %2, %7
  store i32 0, i32* %5, align 4
  br label %13

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %13

10:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %13

11:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %13

12:                                               ; preds = %2, %2, %2
  br label %18

13:                                               ; preds = %11, %10, %9, %8
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %15 = load i32, i32* @BW_SETTING, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mt76x02_mcu_function_select(%struct.mt76x02_dev* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @mt76x02_mcu_function_select(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
