; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.tegra_uart_port = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Tx Dma allocation failed, err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Rx Dma allocation failed, err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Uart HW init failed, err = %d\0A\00", align 1
@tegra_uart_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @tegra_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %6)
  store %struct.tegra_uart_port* %7, %struct.tegra_uart_port** %4, align 8
  %8 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %14 = call i32 @tegra_uart_dma_channel_allocate(%struct.tegra_uart_port* %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %94

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %32 = call i32 @tegra_uart_dma_channel_allocate(%struct.tegra_uart_port* %31, i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %84

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %44 = call i32 @tegra_uart_hw_init(%struct.tegra_uart_port* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %75

53:                                               ; preds = %42
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @tegra_uart_isr, align 4
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_name(i32 %60)
  %62 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %63 = call i32 @request_irq(i32 %56, i32 %57, i32 0, i32 %61, %struct.tegra_uart_port* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %53
  %67 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %75

74:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %94

75:                                               ; preds = %66, %47
  %76 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %82 = call i32 @tegra_uart_dma_channel_free(%struct.tegra_uart_port* %81, i32 1)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %91 = call i32 @tegra_uart_dma_channel_free(%struct.tegra_uart_port* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %74, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local i32 @tegra_uart_dma_channel_allocate(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tegra_uart_hw_init(%struct.tegra_uart_port*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.tegra_uart_port*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @tegra_uart_dma_channel_free(%struct.tegra_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
