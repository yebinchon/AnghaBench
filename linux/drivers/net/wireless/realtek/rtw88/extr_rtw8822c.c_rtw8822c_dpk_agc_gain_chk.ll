; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_agc_gain_chk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_agc_gain_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_DPK_DAGC = common dso_local global i32 0, align 4
@RTW_DPK_GAIN_LESS = common dso_local global i32 0, align 4
@RTW_DPK_GAIN_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32)* @rtw8822c_dpk_agc_gain_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_agc_gain_chk(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RTW_DPK_DAGC, align 4
  %13 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %10, i32 %11, i32 %12)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @rtw8822c_dpk_dgain_read(%struct.rtw_dev* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 1535
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @RTW_DPK_GAIN_LESS, align 4
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 768
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @RTW_DPK_GAIN_LARGE, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_dgain_read(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
