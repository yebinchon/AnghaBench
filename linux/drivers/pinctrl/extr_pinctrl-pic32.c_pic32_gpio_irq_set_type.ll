; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pic32_gpio_bank = type { i64 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@CNEN_REG = common dso_local global i32 0, align 4
@CNNE_REG = common dso_local global i32 0, align 4
@PIC32_CNCON_EDGE = common dso_local global i32 0, align 4
@CNCON_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pic32_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pic32_gpio_bank*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.pic32_gpio_bank* @irqd_to_bank(%struct.irq_data* %8)
  store %struct.pic32_gpio_bank* %9, %struct.pic32_gpio_bank** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %95 [
    i32 128, label %17
    i32 129, label %43
    i32 130, label %69
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %20 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @CNEN_REG, align 4
  %23 = call i64 @PIC32_SET(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @writel(i32 %18, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %28 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @CNNE_REG, align 4
  %31 = call i64 @PIC32_CLR(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel(i32 %26, i64 %32)
  %34 = load i32, i32* @PIC32_CNCON_EDGE, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %37 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @CNCON_REG, align 4
  %40 = call i64 @PIC32_SET(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writel(i32 %35, i64 %41)
  br label %98

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %46 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @CNEN_REG, align 4
  %49 = call i64 @PIC32_CLR(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writel(i32 %44, i64 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %54 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @CNNE_REG, align 4
  %57 = call i64 @PIC32_SET(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @writel(i32 %52, i64 %58)
  %60 = load i32, i32* @PIC32_CNCON_EDGE, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %63 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @CNCON_REG, align 4
  %66 = call i64 @PIC32_SET(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = call i32 @writel(i32 %61, i64 %67)
  br label %98

69:                                               ; preds = %2
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %72 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @CNEN_REG, align 4
  %75 = call i64 @PIC32_SET(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @writel(i32 %70, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %80 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @CNNE_REG, align 4
  %83 = call i64 @PIC32_SET(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = call i32 @writel(i32 %78, i64 %84)
  %86 = load i32, i32* @PIC32_CNCON_EDGE, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %6, align 8
  %89 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @CNCON_REG, align 4
  %92 = call i64 @PIC32_SET(i32 %91)
  %93 = add nsw i64 %90, %92
  %94 = call i32 @writel(i32 %87, i64 %93)
  br label %98

95:                                               ; preds = %2
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %102

98:                                               ; preds = %69, %43, %17
  %99 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %100 = load i32, i32* @handle_edge_irq, align 4
  %101 = call i32 @irq_set_handler_locked(%struct.irq_data* %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.pic32_gpio_bank* @irqd_to_bank(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @PIC32_SET(i32) #1

declare dso_local i64 @PIC32_CLR(i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
