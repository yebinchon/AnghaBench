; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson-axg-pmx.c_meson_axg_pmx_get_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson-axg-pmx.c_meson_axg_pmx_get_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.meson_axg_pmx_data* }
%struct.meson_axg_pmx_data = type { i32, %struct.meson_pmx_bank* }
%struct.meson_pmx_bank = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, %struct.meson_pmx_bank**)* @meson_axg_pmx_get_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_axg_pmx_get_bank(%struct.meson_pinctrl* %0, i32 %1, %struct.meson_pmx_bank** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_pmx_bank**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.meson_axg_pmx_data*, align 8
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.meson_pmx_bank** %2, %struct.meson_pmx_bank*** %7, align 8
  %10 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %11 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.meson_axg_pmx_data*, %struct.meson_axg_pmx_data** %13, align 8
  store %struct.meson_axg_pmx_data* %14, %struct.meson_axg_pmx_data** %9, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %52, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.meson_axg_pmx_data*, %struct.meson_axg_pmx_data** %9, align 8
  %18 = getelementptr inbounds %struct.meson_axg_pmx_data, %struct.meson_axg_pmx_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.meson_axg_pmx_data*, %struct.meson_axg_pmx_data** %9, align 8
  %24 = getelementptr inbounds %struct.meson_axg_pmx_data, %struct.meson_axg_pmx_data* %23, i32 0, i32 1
  %25 = load %struct.meson_pmx_bank*, %struct.meson_pmx_bank** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.meson_pmx_bank, %struct.meson_pmx_bank* %25, i64 %27
  %29 = getelementptr inbounds %struct.meson_pmx_bank, %struct.meson_pmx_bank* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %22, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.meson_axg_pmx_data*, %struct.meson_axg_pmx_data** %9, align 8
  %35 = getelementptr inbounds %struct.meson_axg_pmx_data, %struct.meson_axg_pmx_data* %34, i32 0, i32 1
  %36 = load %struct.meson_pmx_bank*, %struct.meson_pmx_bank** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.meson_pmx_bank, %struct.meson_pmx_bank* %36, i64 %38
  %40 = getelementptr inbounds %struct.meson_pmx_bank, %struct.meson_pmx_bank* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ule i32 %33, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.meson_axg_pmx_data*, %struct.meson_axg_pmx_data** %9, align 8
  %45 = getelementptr inbounds %struct.meson_axg_pmx_data, %struct.meson_axg_pmx_data* %44, i32 0, i32 1
  %46 = load %struct.meson_pmx_bank*, %struct.meson_pmx_bank** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.meson_pmx_bank, %struct.meson_pmx_bank* %46, i64 %48
  %50 = load %struct.meson_pmx_bank**, %struct.meson_pmx_bank*** %7, align 8
  store %struct.meson_pmx_bank* %49, %struct.meson_pmx_bank** %50, align 8
  store i32 0, i32* %4, align 4
  br label %58

51:                                               ; preds = %32, %21
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %43
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
