; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.efm32_uart_port = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"energymicro,location\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"efm32,location\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid location\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"using location %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"fall back to location 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get alias id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.efm32_uart_port*)* @efm32_uart_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_uart_probe_dt(%struct.platform_device* %0, %struct.efm32_uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.efm32_uart_port*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.efm32_uart_port* %1, %struct.efm32_uart_port** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 5
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %33
  %43 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (%struct.efm32_uart_port*, i8*, ...) @efm_debug(%struct.efm32_uart_port* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %48 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %53

50:                                               ; preds = %30
  %51 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %52 = call i32 (%struct.efm32_uart_port*, i8*, ...) @efm_debug(%struct.efm32_uart_port* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = call i32 @of_alias_get_id(%struct.device_node* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %58, %36, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @efm_debug(%struct.efm32_uart_port*, i8*, ...) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
