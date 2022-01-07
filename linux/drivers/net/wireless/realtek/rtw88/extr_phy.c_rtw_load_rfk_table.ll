; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_load_rfk_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_load_rfk_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info* }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32 }
%struct.rtw_chip_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_load_rfk_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_load_rfk_table(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca %struct.rtw_dpk_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 1
  %7 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  store %struct.rtw_chip_info* %7, %struct.rtw_chip_info** %3, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.rtw_dpk_info* %10, %struct.rtw_dpk_info** %4, align 8
  %11 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = call i32 @BIT(i32 17)
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %17, i32 7716, i32 %18, i32 1)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %21 = call i32 @BIT(i32 28)
  %22 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i32 7376, i32 %21, i32 1)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = call i32 @BIT(i32 29)
  %25 = call i32 @rtw_write32_mask(%struct.rtw_dev* %23, i32 7376, i32 %24, i32 1)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %27 = call i32 @BIT(i32 30)
  %28 = call i32 @rtw_write32_mask(%struct.rtw_dev* %26, i32 7376, i32 %27, i32 1)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = call i32 @BIT(i32 31)
  %31 = call i32 @rtw_write32_mask(%struct.rtw_dev* %29, i32 7376, i32 %30, i32 0)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %33 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %34 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtw_load_table(%struct.rtw_dev* %32, i32 %35)
  %37 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %4, align 8
  %38 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_load_table(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
