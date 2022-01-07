; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_gpio_burst_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_gpio_burst_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32)* }

@BS_CS = common dso_local global i32 0, align 4
@BS_DC = common dso_local global i32 0, align 4
@BS_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*, i32, i32*)* @broadsheet_gpio_burst_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheet_gpio_burst_write(%struct.broadsheetfb_par* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %10 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %12, align 8
  %14 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %15 = load i32, i32* @BS_CS, align 4
  %16 = call i32 %13(%struct.broadsheetfb_par* %14, i32 %15, i32 0)
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %18 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %20, align 8
  %22 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %23 = load i32, i32* @BS_DC, align 4
  %24 = call i32 %21(%struct.broadsheetfb_par* %22, i32 %23, i32 1)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %70, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %31 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %33, align 8
  %35 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %36 = load i32, i32* @BS_WR, align 4
  %37 = call i32 %34(%struct.broadsheetfb_par* %35, i32 %36, i32 0)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 4
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 3840
  %51 = shl i32 %50, 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %55 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.broadsheetfb_par*, i32)*, i32 (%struct.broadsheetfb_par*, i32)** %57, align 8
  %59 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 %58(%struct.broadsheetfb_par* %59, i32 %60)
  %62 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %63 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %65, align 8
  %67 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %68 = load i32, i32* @BS_WR, align 4
  %69 = call i32 %66(%struct.broadsheetfb_par* %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %29
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %25

73:                                               ; preds = %25
  %74 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %75 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %77, align 8
  %79 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %80 = load i32, i32* @BS_CS, align 4
  %81 = call i32 %78(%struct.broadsheetfb_par* %79, i32 %80, i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
