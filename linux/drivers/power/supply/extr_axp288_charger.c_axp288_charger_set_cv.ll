; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_set_cv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_set_cv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_chrg_info = type { i32, i32 }

@CV_4100MV = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_4100MV = common dso_local global i32 0, align 4
@CV_4150MV = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_4150MV = common dso_local global i32 0, align 4
@CV_4200MV = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_4200MV = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_4350MV = common dso_local global i32 0, align 4
@CV_4350MV = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_BIT_POS = common dso_local global i32 0, align 4
@AXP20X_CHRG_CTRL1 = common dso_local global i32 0, align 4
@CHRG_CCCV_CV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_chrg_info*, i32)* @axp288_charger_set_cv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_charger_set_cv(%struct.axp288_chrg_info* %0, i32 %1) #0 {
  %3 = alloca %struct.axp288_chrg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp288_chrg_info* %0, %struct.axp288_chrg_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CV_4100MV, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @CHRG_CCCV_CV_4100MV, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CV_4100MV, align 4
  store i32 %12, i32* %4, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CV_4150MV, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @CHRG_CCCV_CV_4150MV, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @CV_4150MV, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CV_4200MV, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @CHRG_CCCV_CV_4200MV, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @CV_4200MV, align 4
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @CHRG_CCCV_CV_4350MV, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @CV_4350MV, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CHRG_CCCV_CV_BIT_POS, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %37 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AXP20X_CHRG_CTRL1, align 4
  %40 = load i32, i32* @CHRG_CCCV_CV_MASK, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %3, align 8
  %48 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %32
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
