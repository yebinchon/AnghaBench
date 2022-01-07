; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_of_get_stm32_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_of_get_stm32_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_port = type { i32, i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@STM32_MAX_PORTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"st,hw-flow-ctrl\00", align 1
@stm32_ports = common dso_local global %struct.stm32_port* null, align 8
@USART_CR1_RXNEIE = common dso_local global i32 0, align 4
@RX_BUF_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stm32_port* (%struct.platform_device*)* @stm32_of_get_stm32_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stm32_port* @stm32_of_get_stm32_port(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.stm32_port*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.stm32_port* null, %struct.stm32_port** %2, align 8
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @of_alias_get_id(%struct.device_node* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store %struct.stm32_port* null, %struct.stm32_port** %2, align 8
  br label %67

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STM32_MAX_PORTS, align 4
  %26 = icmp sge i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store %struct.stm32_port* null, %struct.stm32_port** %2, align 8
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32 @of_property_read_bool(%struct.device_node* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.stm32_port*, %struct.stm32_port** @stm32_ports, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %34, i64 %36
  %38 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %37, i32 0, i32 4
  store i32 %33, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.stm32_port*, %struct.stm32_port** @stm32_ports, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %40, i64 %42
  %44 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @USART_CR1_RXNEIE, align 4
  %47 = load %struct.stm32_port*, %struct.stm32_port** @stm32_ports, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %47, i64 %49
  %51 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  %52 = load %struct.stm32_port*, %struct.stm32_port** @stm32_ports, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %52, i64 %54
  %56 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @RX_BUF_L, align 4
  %58 = load %struct.stm32_port*, %struct.stm32_port** @stm32_ports, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %58, i64 %60
  %62 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load %struct.stm32_port*, %struct.stm32_port** @stm32_ports, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %63, i64 %65
  store %struct.stm32_port* %66, %struct.stm32_port** %2, align 8
  br label %67

67:                                               ; preds = %31, %30, %18, %12
  %68 = load %struct.stm32_port*, %struct.stm32_port** %2, align 8
  ret %struct.stm32_port* %68
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
