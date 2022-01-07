; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_gpio_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_gpio_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.broadsheetfb_par*, i32, i32)*, {}*, {}* }

@BS_DC = common dso_local global i32 0, align 4
@BS_CS = common dso_local global i32 0, align 4
@BS_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*)* @broadsheet_gpio_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_gpio_get_data(%struct.broadsheetfb_par* %0) #0 {
  %2 = alloca %struct.broadsheetfb_par*, align 8
  %3 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %2, align 8
  %4 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %5 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = bitcast {}** %7 to i32 (%struct.broadsheetfb_par*)**
  %9 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %8, align 8
  %10 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %11 = call i32 %9(%struct.broadsheetfb_par* %10)
  %12 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %13 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %15, align 8
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %18 = load i32, i32* @BS_DC, align 4
  %19 = call i32 %16(%struct.broadsheetfb_par* %17, i32 %18, i32 1)
  %20 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %21 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %23, align 8
  %25 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %26 = load i32, i32* @BS_CS, align 4
  %27 = call i32 %24(%struct.broadsheetfb_par* %25, i32 %26, i32 0)
  %28 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %29 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %31, align 8
  %33 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %34 = load i32, i32* @BS_WR, align 4
  %35 = call i32 %32(%struct.broadsheetfb_par* %33, i32 %34, i32 0)
  %36 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %37 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = bitcast {}** %39 to i32 (%struct.broadsheetfb_par*)**
  %41 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %40, align 8
  %42 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %43 = call i32 %41(%struct.broadsheetfb_par* %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %45 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %47, align 8
  %49 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %50 = load i32, i32* @BS_WR, align 4
  %51 = call i32 %48(%struct.broadsheetfb_par* %49, i32 %50, i32 1)
  %52 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %53 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %55, align 8
  %57 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %58 = load i32, i32* @BS_CS, align 4
  %59 = call i32 %56(%struct.broadsheetfb_par* %57, i32 %58, i32 1)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
