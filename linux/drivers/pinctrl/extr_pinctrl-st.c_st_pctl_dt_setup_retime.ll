; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_setup_retime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_setup_retime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.st_pctl_data* }
%struct.st_pctl_data = type { i64 }
%struct.st_pio_control = type { i32 }

@st_retime_style_packed = common dso_local global i64 0, align 8
@st_retime_style_dedicated = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_pinctrl*, i32, %struct.st_pio_control*)* @st_pctl_dt_setup_retime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pctl_dt_setup_retime(%struct.st_pinctrl* %0, i32 %1, %struct.st_pio_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_pio_control*, align 8
  %8 = alloca %struct.st_pctl_data*, align 8
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.st_pio_control* %2, %struct.st_pio_control** %7, align 8
  %9 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %10 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %9, i32 0, i32 0
  %11 = load %struct.st_pctl_data*, %struct.st_pctl_data** %10, align 8
  store %struct.st_pctl_data* %11, %struct.st_pctl_data** %8, align 8
  %12 = load %struct.st_pctl_data*, %struct.st_pctl_data** %8, align 8
  %13 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @st_retime_style_packed, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %21 = call i32 @st_pctl_dt_setup_retime_packed(%struct.st_pinctrl* %18, i32 %19, %struct.st_pio_control* %20)
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.st_pctl_data*, %struct.st_pctl_data** %8, align 8
  %24 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @st_retime_style_dedicated, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %32 = call i32 @st_pctl_dt_setup_retime_dedicated(%struct.st_pinctrl* %29, i32 %30, %struct.st_pio_control* %31)
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %28, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @st_pctl_dt_setup_retime_packed(%struct.st_pinctrl*, i32, %struct.st_pio_control*) #1

declare dso_local i32 @st_pctl_dt_setup_retime_dedicated(%struct.st_pinctrl*, i32, %struct.st_pio_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
