; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1.c_dcon_init_xo_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1.c_dcon_init_xo_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcon_gpio = type { i32, i32 }
%struct.dcon_priv = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@gpios_asis = common dso_local global %struct.dcon_gpio* null, align 8
@gpios = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to request %s GPIO: %d\0A\00", align 1
@OLPC_GPIO_DCON_IRQ = common dso_local global i32 0, align 4
@GPIO_EVENTS_ENABLE = common dso_local global i32 0, align 4
@OLPC_GPIO_DCON_LOAD = common dso_local global i32 0, align 4
@GPIO_OUTPUT_VAL = common dso_local global i32 0, align 4
@DCON_SOURCE_CPU = common dso_local global i64 0, align 8
@DCON_SOURCE_DCON = common dso_local global i64 0, align 8
@OLPC_DCON_STAT0 = common dso_local global i64 0, align 8
@OLPC_DCON_STAT1 = common dso_local global i64 0, align 8
@OLPC_DCON_IRQ = common dso_local global i64 0, align 8
@OLPC_DCON_BLANK = common dso_local global i64 0, align 8
@OLPC_DCON_LOAD = common dso_local global i64 0, align 8
@DCON_IRQ = common dso_local global i32 0, align 4
@dcon_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DCON\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to request DCON's irq\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GPIO_INPUT_INVERT = common dso_local global i32 0, align 4
@OLPC_GPIO_DCON_BLANK = common dso_local global i32 0, align 4
@GPIO_INPUT_FILTER = common dso_local global i32 0, align 4
@GPIO_INPUT_EVENT_COUNT = common dso_local global i32 0, align 4
@GPIO_FE7_SEL = common dso_local global i32 0, align 4
@GPIO_NEGATIVE_EDGE_EN = common dso_local global i32 0, align 4
@GPIO_FLTR7_AMOUNT = common dso_local global i32 0, align 4
@GPIO_NEGATIVE_EDGE_STS = common dso_local global i32 0, align 4
@GPIO_POSITIVE_EDGE_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcon_priv*)* @dcon_init_xo_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_init_xo_1(%struct.dcon_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dcon_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcon_gpio*, align 8
  store %struct.dcon_priv* %0, %struct.dcon_priv** %3, align 8
  %8 = load %struct.dcon_gpio*, %struct.dcon_gpio** @gpios_asis, align 8
  %9 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %8, i64 0
  store %struct.dcon_gpio* %9, %struct.dcon_gpio** %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.dcon_gpio*, %struct.dcon_gpio** @gpios_asis, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.dcon_gpio* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %10
  %16 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.dcon_gpio*, %struct.dcon_gpio** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %20, i64 %22
  %24 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dcon_gpio*, %struct.dcon_gpio** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %26, i64 %28
  %30 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @devm_gpiod_get(i32* %19, i32 %25, i32 %31)
  %33 = load i32*, i32** @gpios, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32*, i32** @gpios, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %15
  %45 = load i32*, i32** @gpios, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.dcon_gpio*, %struct.dcon_gpio** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %51, i64 %53
  %55 = getelementptr inbounds %struct.dcon_gpio, %struct.dcon_gpio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %183

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %66 = load i32, i32* @GPIO_EVENTS_ENABLE, align 4
  %67 = call i32 @cs5535_gpio_clear(i32 %65, i32 %66)
  %68 = load i32, i32* @OLPC_GPIO_DCON_LOAD, align 4
  %69 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %70 = call i64 @cs5535_gpio_isset(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @DCON_SOURCE_CPU, align 8
  br label %76

74:                                               ; preds = %64
  %75 = load i64, i64* @DCON_SOURCE_DCON, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %79 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %81 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %84 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32*, i32** @gpios, align 8
  %86 = load i64, i64* @OLPC_DCON_STAT0, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gpiod_direction_input(i32 %88)
  %90 = load i32*, i32** @gpios, align 8
  %91 = load i64, i64* @OLPC_DCON_STAT1, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @gpiod_direction_input(i32 %93)
  %95 = load i32*, i32** @gpios, align 8
  %96 = load i64, i64* @OLPC_DCON_IRQ, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gpiod_direction_input(i32 %98)
  %100 = load i32*, i32** @gpios, align 8
  %101 = load i64, i64* @OLPC_DCON_BLANK, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @gpiod_direction_input(i32 %103)
  %105 = load i32*, i32** @gpios, align 8
  %106 = load i64, i64* @OLPC_DCON_LOAD, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %110 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DCON_SOURCE_CPU, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @gpiod_direction_output(i32 %108, i32 %114)
  %116 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %117 = call i32 @cs5535_gpio_setup_event(i32 %116, i32 2, i32 0)
  %118 = load i32, i32* @DCON_IRQ, align 4
  %119 = call i32 @cs5535_gpio_set_irq(i32 2, i32 %118)
  %120 = call zeroext i8 @inb(i32 1232)
  store i8 %120, i8* %4, align 1
  %121 = load i32, i32* @DCON_IRQ, align 4
  %122 = shl i32 1, %121
  %123 = xor i32 %122, -1
  %124 = load i8, i8* %4, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %4, align 1
  %128 = load i8, i8* %4, align 1
  %129 = call i32 @outb(i8 zeroext %128, i32 1232)
  %130 = load i32, i32* @DCON_IRQ, align 4
  %131 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %132 = call i64 @request_irq(i32 %130, i32* @dcon_interrupt, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.dcon_priv* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %76
  %135 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %183

138:                                              ; preds = %76
  %139 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %140 = load i32, i32* @GPIO_INPUT_INVERT, align 4
  %141 = call i32 @cs5535_gpio_clear(i32 %139, i32 %140)
  %142 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %143 = load i32, i32* @GPIO_INPUT_FILTER, align 4
  %144 = call i32 @cs5535_gpio_set(i32 %142, i32 %143)
  %145 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %146 = load i32, i32* @GPIO_INPUT_FILTER, align 4
  %147 = call i32 @cs5535_gpio_clear(i32 %145, i32 %146)
  %148 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %149 = load i32, i32* @GPIO_INPUT_EVENT_COUNT, align 4
  %150 = call i32 @cs5535_gpio_clear(i32 %148, i32 %149)
  %151 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %152 = load i32, i32* @GPIO_INPUT_EVENT_COUNT, align 4
  %153 = call i32 @cs5535_gpio_clear(i32 %151, i32 %152)
  %154 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %155 = load i32, i32* @GPIO_FE7_SEL, align 4
  %156 = call i32 @cs5535_gpio_set(i32 %154, i32 %155)
  %157 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %158 = load i32, i32* @GPIO_NEGATIVE_EDGE_EN, align 4
  %159 = call i32 @cs5535_gpio_clear(i32 %157, i32 %158)
  %160 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %161 = load i32, i32* @GPIO_NEGATIVE_EDGE_EN, align 4
  %162 = call i32 @cs5535_gpio_set(i32 %160, i32 %161)
  %163 = load i32, i32* @GPIO_FLTR7_AMOUNT, align 4
  %164 = call i32 @cs5535_gpio_set(i32 0, i32 %163)
  %165 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %166 = load i32, i32* @GPIO_NEGATIVE_EDGE_STS, align 4
  %167 = call i32 @cs5535_gpio_set(i32 %165, i32 %166)
  %168 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %169 = load i32, i32* @GPIO_NEGATIVE_EDGE_STS, align 4
  %170 = call i32 @cs5535_gpio_set(i32 %168, i32 %169)
  %171 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %172 = load i32, i32* @GPIO_POSITIVE_EDGE_STS, align 4
  %173 = call i32 @cs5535_gpio_set(i32 %171, i32 %172)
  %174 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %175 = load i32, i32* @GPIO_POSITIVE_EDGE_STS, align 4
  %176 = call i32 @cs5535_gpio_set(i32 %174, i32 %175)
  %177 = load i32, i32* @OLPC_GPIO_DCON_IRQ, align 4
  %178 = load i32, i32* @GPIO_EVENTS_ENABLE, align 4
  %179 = call i32 @cs5535_gpio_set(i32 %177, i32 %178)
  %180 = load i32, i32* @OLPC_GPIO_DCON_BLANK, align 4
  %181 = load i32, i32* @GPIO_EVENTS_ENABLE, align 4
  %182 = call i32 @cs5535_gpio_set(i32 %180, i32 %181)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %138, %134, %44
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @ARRAY_SIZE(%struct.dcon_gpio*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @cs5535_gpio_clear(i32, i32) #1

declare dso_local i64 @cs5535_gpio_isset(i32, i32) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @cs5535_gpio_setup_event(i32, i32, i32) #1

declare dso_local i32 @cs5535_gpio_set_irq(i32, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i8*, %struct.dcon_priv*) #1

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
