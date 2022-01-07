; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.st_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.st_pinconf* }
%struct.st_pinconf = type { i32, i32 }
%struct.st_pio_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @st_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_pinctrl*, align 8
  %8 = alloca %struct.st_pinconf*, align 8
  %9 = alloca %struct.st_pio_control*, align 8
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.st_pinctrl* %12, %struct.st_pinctrl** %7, align 8
  %13 = load %struct.st_pinctrl*, %struct.st_pinctrl** %7, align 8
  %14 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.st_pinconf*, %struct.st_pinconf** %19, align 8
  store %struct.st_pinconf* %20, %struct.st_pinconf** %8, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %55, %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.st_pinctrl*, %struct.st_pinctrl** %7, align 8
  %24 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %22, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %21
  %33 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %34 = load %struct.st_pinconf*, %struct.st_pinconf** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.st_pinconf, %struct.st_pinconf* %34, i64 %36
  %38 = getelementptr inbounds %struct.st_pinconf, %struct.st_pinconf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev* %33, i32 %39)
  store %struct.st_pio_control* %40, %struct.st_pio_control** %9, align 8
  %41 = load %struct.st_pio_control*, %struct.st_pio_control** %9, align 8
  %42 = load %struct.st_pinconf*, %struct.st_pinconf** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.st_pinconf, %struct.st_pinconf* %42, i64 %44
  %46 = getelementptr inbounds %struct.st_pinconf, %struct.st_pinconf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.st_pinconf*, %struct.st_pinconf** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.st_pinconf, %struct.st_pinconf* %48, i64 %50
  %52 = getelementptr inbounds %struct.st_pinconf, %struct.st_pinconf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @st_pctl_set_function(%struct.st_pio_control* %41, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %32
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %21

58:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @st_pctl_set_function(%struct.st_pio_control*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
