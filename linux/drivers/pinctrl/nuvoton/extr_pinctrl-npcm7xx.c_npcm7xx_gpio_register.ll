; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_gpio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_gpio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pinctrl = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to add GPIO chip %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to add GPIO bank %u\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to add IRQ chip %u\0A\00", align 1
@npcmgpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_pinctrl*)* @npcm7xx_gpio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_gpio_register(%struct.npcm7xx_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.npcm7xx_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.npcm7xx_pinctrl* %0, %struct.npcm7xx_pinctrl** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %152, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %9 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %155

12:                                               ; preds = %6
  %13 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %14 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %17 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %24 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = call i32 @devm_gpiochip_add_data(i32 %15, %struct.TYPE_7__* %22, %struct.TYPE_8__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %12
  %33 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %34 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %156

38:                                               ; preds = %12
  %39 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %40 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %47 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_name(i32 %48)
  %50 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %51 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %59 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %68 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gpiochip_add_pin_range(%struct.TYPE_7__* %45, i32 %49, i32 %57, i32 %66, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %38
  %80 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %81 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %86 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = call i32 @gpiochip_remove(%struct.TYPE_7__* %91)
  br label %156

93:                                               ; preds = %38
  %94 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %95 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %102 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* @handle_level_irq, align 4
  %109 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %110 = call i32 @gpiochip_irqchip_add(%struct.TYPE_7__* %100, i32* %107, i32 0, i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %93
  %114 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %115 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %120 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = call i32 @gpiochip_remove(%struct.TYPE_7__* %125)
  br label %156

127:                                              ; preds = %93
  %128 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %129 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %136 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %143 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @npcmgpio_irq_handler, align 4
  %151 = call i32 @gpiochip_set_chained_irqchip(%struct.TYPE_7__* %134, i32* %141, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %127
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %6

155:                                              ; preds = %6
  store i32 0, i32* %2, align 4
  br label %175

156:                                              ; preds = %113, %79, %32
  br label %157

157:                                              ; preds = %170, %156
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %3, align 8
  %162 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = call i32 @gpiochip_remove(%struct.TYPE_7__* %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %5, align 4
  br label %157

173:                                              ; preds = %157
  %174 = load i32, i32* %4, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %173, %155
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @devm_gpiochip_add_data(i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_7__*) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
