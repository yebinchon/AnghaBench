; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_of_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_of_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mps2_uart_port = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@ports_idr = common dso_local global i32 0, align 4
@MPS2_MAX_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UART_PORT_COMBINED_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mps2_uart_port*)* @mps2_of_get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps2_of_get_port(%struct.platform_device* %0, %struct.mps2_uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mps2_uart_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mps2_uart_port* %1, %struct.mps2_uart_port** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i32 @of_alias_get_id(%struct.device_node* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %24 = bitcast %struct.mps2_uart_port* %23 to i8*
  %25 = load i32, i32* @MPS2_MAX_PORTS, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @idr_alloc_cyclic(i32* @ports_idr, i8* %24, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %30 = bitcast %struct.mps2_uart_port* %29 to i8*
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MPS2_MAX_PORTS, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @idr_alloc(i32* @ports_idr, i8* %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %35
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = call i32 @platform_irq_count(%struct.platform_device* %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @UART_PORT_COMBINED_IRQ, align 4
  %46 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %47 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %5, align 8
  %53 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %38, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @idr_alloc(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
