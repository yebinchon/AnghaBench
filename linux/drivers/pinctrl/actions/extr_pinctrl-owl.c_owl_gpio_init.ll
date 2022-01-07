; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_pinctrl = type { %struct.TYPE_10__*, %struct.gpio_chip, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.gpio_chip = type { i32, i32, %struct.gpio_irq_chip, %struct.TYPE_7__*, i32, %struct.TYPE_10__*, i32 }
%struct.gpio_irq_chip = type { i32*, i32*, i32, %struct.owl_pinctrl*, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.owl_gpio_port*, i32 }
%struct.owl_gpio_port = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@owl_gpio_irq_ack = common dso_local global i32 0, align 4
@owl_gpio_irq_mask = common dso_local global i32 0, align 4
@owl_gpio_irq_unmask = common dso_local global i32 0, align 4
@owl_gpio_irq_set_type = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@owl_gpio_irq_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to register gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_pinctrl*)* @owl_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_gpio_init(%struct.owl_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.owl_pinctrl*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.gpio_irq_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.owl_gpio_port*, align 8
  store %struct.owl_pinctrl* %0, %struct.owl_pinctrl** %3, align 8
  %11 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %12 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %11, i32 0, i32 1
  store %struct.gpio_chip* %12, %struct.gpio_chip** %4, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %16 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %23 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 @dev_name(%struct.TYPE_10__* %24)
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %29 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 5
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %37 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 3
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %49 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @owl_gpio_irq_ack, align 4
  %52 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %53 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @owl_gpio_irq_mask, align 4
  %56 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %57 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @owl_gpio_irq_unmask, align 4
  %60 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %61 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @owl_gpio_irq_set_type, align 4
  %64 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %65 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %68 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %67, i32 0, i32 2
  store %struct.gpio_irq_chip* %68, %struct.gpio_irq_chip** %5, align 8
  %69 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %70 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %69, i32 0, i32 5
  %71 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %72 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %71, i32 0, i32 7
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  %73 = load i32, i32* @handle_simple_irq, align 4
  %74 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %75 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %77 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %78 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @owl_gpio_irq_handler, align 4
  %80 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %81 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %83 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %84 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %83, i32 0, i32 3
  store %struct.owl_pinctrl* %82, %struct.owl_pinctrl** %84, align 8
  %85 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %86 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %89 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %91 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %94 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %96 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i32* @devm_kcalloc(%struct.TYPE_10__* %97, i32 %100, i32 4, i32 %101)
  %103 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %104 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %106 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %1
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %178

112:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %161, %112
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %116 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %115, i32 0, i32 2
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %164

121:                                              ; preds = %113
  %122 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %123 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load %struct.owl_gpio_port*, %struct.owl_gpio_port** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.owl_gpio_port, %struct.owl_gpio_port* %126, i64 %128
  store %struct.owl_gpio_port* %129, %struct.owl_gpio_port** %10, align 8
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %152, %121
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.owl_gpio_port*, %struct.owl_gpio_port** %10, align 8
  %133 = getelementptr inbounds %struct.owl_gpio_port, %struct.owl_gpio_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %130
  %137 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %138 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %145 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32 %143, i32* %151, align 4
  br label %152

152:                                              ; preds = %136
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %130

155:                                              ; preds = %130
  %156 = load %struct.owl_gpio_port*, %struct.owl_gpio_port** %10, align 8
  %157 = getelementptr inbounds %struct.owl_gpio_port, %struct.owl_gpio_port* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %113

164:                                              ; preds = %113
  %165 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %166 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %165, i32 0, i32 1
  %167 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %168 = call i32 @gpiochip_add_data(%struct.gpio_chip* %166, %struct.owl_pinctrl* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %3, align 8
  %173 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = call i32 @dev_err(%struct.TYPE_10__* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %178

177:                                              ; preds = %164
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %171, %109
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.owl_pinctrl*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
