; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dw8250_data = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@UPIO_MEM32BE = common dso_local global i32 0, align 4
@dw8250_serial_in32be = common dso_local global i32 0, align 4
@dw8250_serial_out32be = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"marvell,armada-38x-uart\00", align 1
@dw8250_serial_out38x = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"APMC0D08\00", align 1
@UPIO_MEM32 = common dso_local global i32 0, align 4
@dw8250_serial_in32 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"lpss_priv\00", align 1
@dw8250_idma_filter = common dso_local global i32 0, align 4
@PORT_OCTEON = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@dw8250_serial_inq = common dso_local global i32 0, align 4
@dw8250_serial_outq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.dw8250_data*)* @dw8250_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw8250_quirks(%struct.uart_port* %0, %struct.dw8250_data* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.dw8250_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.dw8250_data* %1, %struct.dw8250_data** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_alias_get_id(%struct.device_node* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %13
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  %33 = call i64 @of_device_is_big_endian(%struct.device_node* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* @UPIO_MEM32BE, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dw8250_serial_in32be, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @dw8250_serial_out32be, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %35, %27
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i64 @of_device_is_compatible(%struct.device_node* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @dw8250_serial_out38x, align 4
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %69

54:                                               ; preds = %2
  %55 = call i64 @acpi_dev_present(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 -1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* @UPIO_MEM32, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 2
  store i32 2, i32* %62, align 8
  %63 = load i32, i32* @dw8250_serial_in32, align 4
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.dw8250_data*, %struct.dw8250_data** %4, align 8
  %67 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %54
  br label %69

69:                                               ; preds = %68, %53
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @to_platform_device(%struct.TYPE_6__* %72)
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call i64 @platform_get_resource_byname(i32 %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.dw8250_data*, %struct.dw8250_data** %4, align 8
  %84 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dw8250_data*, %struct.dw8250_data** %4, align 8
  %93 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @dw8250_idma_filter, align 4
  %97 = load %struct.dw8250_data*, %struct.dw8250_data** %4, align 8
  %98 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %77, %69
  ret void
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i64 @of_device_is_big_endian(%struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @acpi_dev_present(i8*, i32*, i32) #1

declare dso_local i64 @platform_get_resource_byname(i32, i32, i8*) #1

declare dso_local i32 @to_platform_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
