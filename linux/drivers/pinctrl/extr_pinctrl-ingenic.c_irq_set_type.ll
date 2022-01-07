; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4760_GPIO_PAT1 = common dso_local global i32 0, align 4
@JZ4760_GPIO_PAT0 = common dso_local global i32 0, align 4
@JZ4740_GPIO_TRIG = common dso_local global i32 0, align 4
@JZ4740_GPIO_DIR = common dso_local global i32 0, align 4
@ID_X1000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_gpio_chip*, i32, i32)* @irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_set_type(%struct.ingenic_gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ingenic_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ingenic_gpio_chip* %0, %struct.ingenic_gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %10 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ID_JZ4760, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @JZ4760_GPIO_PAT1, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @JZ4760_GPIO_PAT0, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @JZ4740_GPIO_TRIG, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @JZ4740_GPIO_DIR, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %112 [
    i32 130, label %24
    i32 131, label %53
    i32 129, label %82
    i32 128, label %111
  ]

24:                                               ; preds = %22
  %25 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %26 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ID_X1000, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %33, i32 %34, i32 %35, i32 1)
  %37 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %37, i32 %38, i32 %39, i32 1)
  %41 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %42 = call i32 @ingenic_gpio_shadow_set_bit_load(%struct.ingenic_gpio_chip* %41)
  br label %52

43:                                               ; preds = %24
  %44 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %44, i32 %45, i32 %46, i32 1)
  %48 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %48, i32 %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %43, %32
  br label %141

53:                                               ; preds = %22
  %54 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %55 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ID_X1000, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %71 = call i32 @ingenic_gpio_shadow_set_bit_load(%struct.ingenic_gpio_chip* %70)
  br label %81

72:                                               ; preds = %53
  %73 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %77, i32 %78, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %72, %61
  br label %141

82:                                               ; preds = %22
  %83 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %84 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ID_X1000, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %91, i32 %92, i32 %93, i32 1)
  %95 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %95, i32 %96, i32 %97, i32 0)
  %99 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %100 = call i32 @ingenic_gpio_shadow_set_bit_load(%struct.ingenic_gpio_chip* %99)
  br label %110

101:                                              ; preds = %82
  %102 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %102, i32 %103, i32 %104, i32 1)
  %106 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %106, i32 %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %101, %90
  br label %141

111:                                              ; preds = %22
  br label %112

112:                                              ; preds = %22, %111
  %113 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %114 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ID_X1000, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %121, i32 %122, i32 %123, i32 0)
  %125 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip* %125, i32 %126, i32 %127, i32 0)
  %129 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %130 = call i32 @ingenic_gpio_shadow_set_bit_load(%struct.ingenic_gpio_chip* %129)
  br label %140

131:                                              ; preds = %112
  %132 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %132, i32 %133, i32 %134, i32 0)
  %136 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %136, i32 %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %131, %120
  br label %141

141:                                              ; preds = %140, %110, %81, %52
  ret void
}

declare dso_local i32 @ingenic_gpio_shadow_set_bit(%struct.ingenic_gpio_chip*, i32, i32, i32) #1

declare dso_local i32 @ingenic_gpio_shadow_set_bit_load(%struct.ingenic_gpio_chip*) #1

declare dso_local i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
