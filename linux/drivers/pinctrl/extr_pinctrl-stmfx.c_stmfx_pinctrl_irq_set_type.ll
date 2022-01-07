; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.stmfx_pinctrl = type { i64*, i64*, i64* }

@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @stmfx_pinctrl_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_pinctrl_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.stmfx_pinctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %13 = call %struct.stmfx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.stmfx_pinctrl* %13, %struct.stmfx_pinctrl** %7, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @get_reg(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @get_mask(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %112

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %36 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %34
  store i64 %41, i64* %39, align 8
  %42 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %43 = load i32, i32* @handle_edge_irq, align 4
  %44 = call i32 @irq_set_handler_locked(%struct.irq_data* %42, i32 %43)
  br label %58

45:                                               ; preds = %28
  %46 = load i64, i64* %9, align 8
  %47 = xor i64 %46, -1
  %48 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %49 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, %47
  store i64 %54, i64* %52, align 8
  %55 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %56 = load i32, i32* @handle_level_irq, align 4
  %57 = call i32 @irq_set_handler_locked(%struct.irq_data* %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %33
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63, %58
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %71 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, %69
  store i64 %76, i64* %74, align 8
  br label %87

77:                                               ; preds = %63
  %78 = load i64, i64* %9, align 8
  %79 = xor i64 %78, -1
  %80 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %81 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %85, %79
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %77, %68
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %96 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %94
  store i64 %101, i64* %99, align 8
  br label %111

102:                                              ; preds = %87
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %7, align 8
  %105 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = and i64 %109, %103
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %102, %93
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %25
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.stmfx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @get_reg(i32) #1

declare dso_local i64 @get_mask(i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
