; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_init_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_init_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32*, i32, i32 }
%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@MXS_AUART_RTSCTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"DMA and flow control via gpio may cause some problems. DMA disabled!\0A\00", align 1
@UART_GPIO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*, %struct.device*)* @mxs_auart_init_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_init_gpios(%struct.mxs_auart_port* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_auart_port*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_desc*, align 8
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = call i32 @mctrl_gpio_init_noauto(%struct.device* %8, i32 0)
  %10 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %11 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %13 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %19 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = call i32 (...) @RTS_AT_AUART()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 (...) @CTS_AT_AUART()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @MXS_AUART_RTSCTS, align 4
  %30 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %31 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %30, i32 0, i32 2
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @MXS_AUART_RTSCTS, align 4
  %39 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %40 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %39, i32 0, i32 2
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %25
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @UART_GPIO_MAX, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %49 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.gpio_desc* @mctrl_gpio_to_gpiod(i32 %50, i32 %51)
  store %struct.gpio_desc* %52, %struct.gpio_desc** %7, align 8
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %54 = icmp ne %struct.gpio_desc* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %57 = call i32 @gpiod_get_direction(%struct.gpio_desc* %56)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %61 = call i32 @gpiod_to_irq(%struct.gpio_desc* %60)
  %62 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %63 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %77

68:                                               ; preds = %55, %47
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  %71 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %72 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %43

81:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @mctrl_gpio_init_noauto(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @RTS_AT_AUART(...) #1

declare dso_local i32 @CTS_AT_AUART(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.gpio_desc* @mctrl_gpio_to_gpiod(i32, i32) #1

declare dso_local i32 @gpiod_get_direction(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
