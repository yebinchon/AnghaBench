; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pin_mux_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza1.c_rza1_pin_mux_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_pinctrl = type { %struct.rza1_port* }
%struct.rza1_port = type { i32 }
%struct.rza1_mux_conf = type { i64, i32, i32, i32 }

@MUX_FLAGS_BIDIR = common dso_local global i32 0, align 4
@RZA1_PBDC_REG = common dso_local global i32 0, align 4
@RZA1_PFC_REG = common dso_local global i32 0, align 4
@MUX_FUNC_PFC_MASK = common dso_local global i32 0, align 4
@RZA1_PFCE_REG = common dso_local global i32 0, align 4
@MUX_FUNC_PFCE_MASK = common dso_local global i32 0, align 4
@RZA1_PFCEA_REG = common dso_local global i32 0, align 4
@MUX_FUNC_PFCEA_MASK = common dso_local global i32 0, align 4
@MUX_FLAGS_SWIO_INPUT = common dso_local global i32 0, align 4
@MUX_FLAGS_SWIO_OUTPUT = common dso_local global i32 0, align 4
@RZA1_PM_REG = common dso_local global i32 0, align 4
@RZA1_PIPC_REG = common dso_local global i32 0, align 4
@RZA1_PMC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza1_pinctrl*, %struct.rza1_mux_conf*)* @rza1_pin_mux_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_pin_mux_single(%struct.rza1_pinctrl* %0, %struct.rza1_mux_conf* %1) #0 {
  %3 = alloca %struct.rza1_pinctrl*, align 8
  %4 = alloca %struct.rza1_mux_conf*, align 8
  %5 = alloca %struct.rza1_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rza1_pinctrl* %0, %struct.rza1_pinctrl** %3, align 8
  store %struct.rza1_mux_conf* %1, %struct.rza1_mux_conf** %4, align 8
  %10 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.rza1_pinctrl, %struct.rza1_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.rza1_port*, %struct.rza1_port** %11, align 8
  %13 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %4, align 8
  %14 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %12, i64 %15
  store %struct.rza1_port* %16, %struct.rza1_port** %5, align 8
  %17 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %4, align 8
  %18 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %4, align 8
  %21 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rza1_mux_conf*, %struct.rza1_mux_conf** %4, align 8
  %24 = getelementptr inbounds %struct.rza1_mux_conf, %struct.rza1_mux_conf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rza1_pin_reset(%struct.rza1_port* %26, i32 %27)
  %29 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %30 = getelementptr inbounds %struct.rza1_port, %struct.rza1_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.rza1_pinctrl*, %struct.rza1_pinctrl** %3, align 8
  %35 = call i32 @rza1_pinmux_get_flags(i32 %31, i32 %32, i32 %33, %struct.rza1_pinctrl* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MUX_FLAGS_BIDIR, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MUX_FLAGS_BIDIR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %53 = load i32, i32* @RZA1_PBDC_REG, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rza1_set_bit(%struct.rza1_port* %52, i32 %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %60 = load i32, i32* @RZA1_PFC_REG, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MUX_FUNC_PFC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @rza1_set_bit(%struct.rza1_port* %59, i32 %60, i32 %61, i32 %64)
  %66 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %67 = load i32, i32* @RZA1_PFCE_REG, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @MUX_FUNC_PFCE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @rza1_set_bit(%struct.rza1_port* %66, i32 %67, i32 %68, i32 %71)
  %73 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %74 = load i32, i32* @RZA1_PFCEA_REG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MUX_FUNC_PFCEA_MASK, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @rza1_set_bit(%struct.rza1_port* %73, i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @MUX_FLAGS_SWIO_INPUT, align 4
  %82 = load i32, i32* @MUX_FLAGS_SWIO_OUTPUT, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %56
  %87 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %88 = load i32, i32* @RZA1_PM_REG, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @MUX_FLAGS_SWIO_INPUT, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @rza1_set_bit(%struct.rza1_port* %87, i32 %88, i32 %89, i32 %92)
  br label %99

94:                                               ; preds = %56
  %95 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %96 = load i32, i32* @RZA1_PIPC_REG, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @rza1_set_bit(%struct.rza1_port* %95, i32 %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.rza1_port*, %struct.rza1_port** %5, align 8
  %101 = load i32, i32* @RZA1_PMC_REG, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @rza1_set_bit(%struct.rza1_port* %100, i32 %101, i32 %102, i32 1)
  ret i32 0
}

declare dso_local i32 @rza1_pin_reset(%struct.rza1_port*, i32) #1

declare dso_local i32 @rza1_pinmux_get_flags(i32, i32, i32, %struct.rza1_pinctrl*) #1

declare dso_local i32 @rza1_set_bit(%struct.rza1_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
