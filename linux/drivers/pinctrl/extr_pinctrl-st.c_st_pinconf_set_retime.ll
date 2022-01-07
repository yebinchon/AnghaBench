; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_retime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_retime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.st_pio_control = type { i32 }

@st_retime_style_packed = common dso_local global i64 0, align 8
@st_retime_style_dedicated = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pinctrl*, %struct.st_pio_control*, i32, i64)* @st_pinconf_set_retime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pinconf_set_retime(%struct.st_pinctrl* %0, %struct.st_pio_control* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca %struct.st_pio_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store %struct.st_pio_control* %1, %struct.st_pio_control** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %10 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @st_retime_style_packed, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %18 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @st_pinconf_set_retime_packed(%struct.st_pinctrl* %17, %struct.st_pio_control* %18, i64 %19, i32 %20)
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %24 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @st_retime_style_dedicated, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %34 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %40 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @st_pinconf_set_retime_dedicated(%struct.st_pinctrl* %39, %struct.st_pio_control* %40, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45, %16
  ret void
}

declare dso_local i32 @st_pinconf_set_retime_packed(%struct.st_pinctrl*, %struct.st_pio_control*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @st_pinconf_set_retime_dedicated(%struct.st_pinctrl*, %struct.st_pio_control*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
