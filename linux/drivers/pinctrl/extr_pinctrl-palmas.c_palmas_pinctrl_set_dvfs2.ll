; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-palmas.c_palmas_pinctrl_set_dvfs2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-palmas.c_palmas_pinctrl_set_dvfs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pctrl_chip_info = type { i32, i32 }

@PALMAS_PRIMARY_SECONDARY_PAD3_DVFS2 = common dso_local global i32 0, align 4
@PALMAS_PU_PD_OD_BASE = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SECONDARY_PAD3 update failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_pctrl_chip_info*, i32)* @palmas_pinctrl_set_dvfs2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_pinctrl_set_dvfs2(%struct.palmas_pctrl_chip_info* %0, i32 %1) #0 {
  %3 = alloca %struct.palmas_pctrl_chip_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.palmas_pctrl_chip_info* %0, %struct.palmas_pctrl_chip_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD3_DVFS2, align 4
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ]
  store i32 %13, i32* %6, align 4
  %14 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %3, align 8
  %15 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PALMAS_PU_PD_OD_BASE, align 4
  %18 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD3, align 4
  %19 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD3_DVFS2, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @palmas_update_bits(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load %struct.palmas_pctrl_chip_info*, %struct.palmas_pctrl_chip_info** %3, align 8
  %26 = getelementptr inbounds %struct.palmas_pctrl_chip_info, %struct.palmas_pctrl_chip_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %12
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @palmas_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
