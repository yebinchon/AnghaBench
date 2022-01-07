; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64 }
%struct.mxs_auart_port = type { i32, i32, i32 }

@auart_driver = common dso_local global i32 0, align 4
@auart_port = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_auart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mxs_auart_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mxs_auart_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mxs_auart_port* %5, %struct.mxs_auart_port** %3, align 8
  %6 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %7 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %6, i32 0, i32 2
  %8 = call i32 @uart_remove_one_port(i32* @auart_driver, i32* %7)
  %9 = load i32**, i32*** @auart_port, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  store i32* null, i32** %13, align 8
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %15 = call i32 @mxs_auart_free_gpio_irq(%struct.mxs_auart_port* %14)
  %16 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %17 = call i64 @is_asm9260_auart(%struct.mxs_auart_port* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %21 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %25 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  br label %28

28:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local %struct.mxs_auart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, i32*) #1

declare dso_local i32 @mxs_auart_free_gpio_irq(%struct.mxs_auart_port*) #1

declare dso_local i64 @is_asm9260_auart(%struct.mxs_auart_port*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
