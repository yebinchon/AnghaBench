; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mctrl_gpios = type { i32*, i32*, %struct.uart_port* }
%struct.uart_port = type { i32 }

@UART_GPIO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"failed to find corresponding irq for %s (idx=%d, err=%d)\0A\00", align 1
@mctrl_gpios_desc = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@mctrl_gpio_irq_handle = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to request irq for %s (idx=%d, err=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mctrl_gpios* @mctrl_gpio_init(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mctrl_gpios*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mctrl_gpios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mctrl_gpios* @mctrl_gpio_init_noauto(i32 %11, i32 %12)
  store %struct.mctrl_gpios* %13, %struct.mctrl_gpios** %6, align 8
  %14 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %15 = call i64 @IS_ERR(%struct.mctrl_gpios* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  store %struct.mctrl_gpios* %18, %struct.mctrl_gpios** %3, align 8
  br label %125

19:                                               ; preds = %2
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %22 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %21, i32 0, i32 2
  store %struct.uart_port* %20, %struct.uart_port** %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %120, %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @UART_GPIO_MAX, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %123

27:                                               ; preds = %23
  %28 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %29 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @mctrl_gpio_flags_is_dir_out(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %27
  br label %120

41:                                               ; preds = %36
  %42 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %43 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gpiod_to_irq(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %41
  %53 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.mctrl_gpios* @ERR_PTR(i32 %65)
  store %struct.mctrl_gpios* %66, %struct.mctrl_gpios** %3, align 8
  br label %125

67:                                               ; preds = %41
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %70 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %76 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %83 = call i32 @irq_set_status_flags(i32 %81, i32 %82)
  %84 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %88 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @mctrl_gpio_irq_handle, align 4
  %95 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %96 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_name(i32 %98)
  %100 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %101 = call i32 @devm_request_irq(i32 %86, i32 %93, i32 %94, i32 %95, i32 %99, %struct.mctrl_gpios* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %67
  %105 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = call %struct.mctrl_gpios* @ERR_PTR(i32 %117)
  store %struct.mctrl_gpios* %118, %struct.mctrl_gpios** %3, align 8
  br label %125

119:                                              ; preds = %67
  br label %120

120:                                              ; preds = %119, %40
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %23

123:                                              ; preds = %23
  %124 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  store %struct.mctrl_gpios* %124, %struct.mctrl_gpios** %3, align 8
  br label %125

125:                                              ; preds = %123, %104, %52, %17
  %126 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %3, align 8
  ret %struct.mctrl_gpios* %126
}

declare dso_local %struct.mctrl_gpios* @mctrl_gpio_init_noauto(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mctrl_gpios*) #1

declare dso_local i64 @mctrl_gpio_flags_is_dir_out(i32) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.mctrl_gpios* @ERR_PTR(i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.mctrl_gpios*) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
