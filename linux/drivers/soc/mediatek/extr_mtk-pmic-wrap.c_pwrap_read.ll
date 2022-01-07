; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*, i32, i32*)* @pwrap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_read(%struct.pmic_wrapper* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.pmic_wrapper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %4, align 8
  %8 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.pmic_wrapper*, i32, i32*)**
  %12 = load i32 (%struct.pmic_wrapper*, i32, i32*)*, i32 (%struct.pmic_wrapper*, i32, i32*)** %11, align 8
  %13 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 %12(%struct.pmic_wrapper* %13, i32 %14, i32* %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
