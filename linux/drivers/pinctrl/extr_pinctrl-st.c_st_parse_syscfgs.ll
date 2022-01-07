; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_parse_syscfgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_parse_syscfgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.regmap*, %struct.device*, %struct.TYPE_2__*, %struct.st_pctl_data* }
%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.st_pio_control }
%struct.st_pio_control = type { i32, i8*, i8*, i8*, i8* }
%struct.st_pctl_data = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@ST_GPIO_PINS_PER_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"st,retime-pin-mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pinctrl*, i32, %struct.device_node*)* @st_parse_syscfgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_parse_syscfgs(%struct.st_pinctrl* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.st_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.st_pctl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_pio_control*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.regmap*, align 8
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %13 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %13, i32 0, i32 3
  %15 = load %struct.st_pctl_data*, %struct.st_pctl_data** %14, align 8
  store %struct.st_pctl_data* %15, %struct.st_pctl_data** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, 4
  %18 = load i32, i32* @ST_GPIO_PINS_PER_BANK, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ST_GPIO_PINS_PER_BANK, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.st_pio_control* %30, %struct.st_pio_control** %10, align 8
  %31 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %32 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %31, i32 0, i32 1
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %11, align 8
  %34 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %35 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %34, i32 0, i32 0
  %36 = load %struct.regmap*, %struct.regmap** %35, align 8
  store %struct.regmap* %36, %struct.regmap** %12, align 8
  %37 = load %struct.device*, %struct.device** %11, align 8
  %38 = load %struct.regmap*, %struct.regmap** %12, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.st_pctl_data*, %struct.st_pctl_data** %7, align 8
  %41 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @st_pc_get_value(%struct.device* %37, %struct.regmap* %38, i32 %39, i32 %42, i32 0, i32 31)
  %44 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %45 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = load %struct.regmap*, %struct.regmap** %12, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 4
  %50 = load %struct.st_pctl_data*, %struct.st_pctl_data** %7, align 8
  %51 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @st_pc_get_value(%struct.device* %46, %struct.regmap* %47, i32 %49, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %57 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.device*, %struct.device** %11, align 8
  %59 = load %struct.regmap*, %struct.regmap** %12, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sdiv i32 %60, 4
  %62 = load %struct.st_pctl_data*, %struct.st_pctl_data** %7, align 8
  %63 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @st_pc_get_value(%struct.device* %58, %struct.regmap* %59, i32 %61, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %69 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.device*, %struct.device** %11, align 8
  %71 = load %struct.regmap*, %struct.regmap** %12, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sdiv i32 %72, 4
  %74 = load %struct.st_pctl_data*, %struct.st_pctl_data** %7, align 8
  %75 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i8* @st_pc_get_value(%struct.device* %70, %struct.regmap* %71, i32 %73, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %81 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %83 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %82, i32 0, i32 0
  store i32 255, i32* %83, align 8
  %84 = load %struct.device_node*, %struct.device_node** %6, align 8
  %85 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %86 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %85, i32 0, i32 0
  %87 = call i32 @of_property_read_u32(%struct.device_node* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %86)
  %88 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.st_pio_control*, %struct.st_pio_control** %10, align 8
  %91 = call i32 @st_pctl_dt_setup_retime(%struct.st_pinctrl* %88, i32 %89, %struct.st_pio_control* %90)
  ret void
}

declare dso_local i8* @st_pc_get_value(%struct.device*, %struct.regmap*, i32, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @st_pctl_dt_setup_retime(%struct.st_pinctrl*, i32, %struct.st_pio_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
