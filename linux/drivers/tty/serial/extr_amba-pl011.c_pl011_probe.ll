; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_pl011_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32, i32, i32* }
%struct.amba_id = type { %struct.vendor_data* }
%struct.vendor_data = type { i64, i32 (%struct.amba_device.0*)*, i32 }
%struct.amba_device.0 = type opaque
%struct.uart_amba_port = type { i32, %struct.TYPE_2__, i32, %struct.vendor_data*, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UPIO_MEM32 = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@amba_pl011_pops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PL011 rev%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl011_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl011_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.uart_amba_port*, align 8
  %7 = alloca %struct.vendor_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %10 = load %struct.amba_id*, %struct.amba_id** %5, align 8
  %11 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %10, i32 0, i32 0
  %12 = load %struct.vendor_data*, %struct.vendor_data** %11, align 8
  store %struct.vendor_data* %12, %struct.vendor_data** %7, align 8
  %13 = call i32 (...) @pl011_find_free_port()
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %20 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.uart_amba_port* @devm_kzalloc(i32* %20, i32 48, i32 %21)
  store %struct.uart_amba_port* %22, %struct.uart_amba_port** %6, align 8
  %23 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %24 = icmp ne %struct.uart_amba_port* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %108

28:                                               ; preds = %18
  %29 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %30 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %29, i32 0, i32 1
  %31 = call i32 @devm_clk_get(i32* %30, i32* null)
  %32 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %33 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %35 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %41 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %108

44:                                               ; preds = %28
  %45 = load %struct.vendor_data*, %struct.vendor_data** %7, align 8
  %46 = getelementptr inbounds %struct.vendor_data, %struct.vendor_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %49 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.vendor_data*, %struct.vendor_data** %7, align 8
  %51 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %52 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %51, i32 0, i32 3
  store %struct.vendor_data* %50, %struct.vendor_data** %52, align 8
  %53 = load %struct.vendor_data*, %struct.vendor_data** %7, align 8
  %54 = getelementptr inbounds %struct.vendor_data, %struct.vendor_data* %53, i32 0, i32 1
  %55 = load i32 (%struct.amba_device.0*)*, i32 (%struct.amba_device.0*)** %54, align 8
  %56 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %57 = bitcast %struct.amba_device* %56 to %struct.amba_device.0*
  %58 = call i32 %55(%struct.amba_device.0* %57)
  %59 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %60 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vendor_data*, %struct.vendor_data** %7, align 8
  %62 = getelementptr inbounds %struct.vendor_data, %struct.vendor_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %44
  %66 = load i32, i32* @UPIO_MEM32, align 4
  br label %69

67:                                               ; preds = %44
  %68 = load i32, i32* @UPIO_MEM, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %72 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %75 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %80 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %83 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32* @amba_pl011_pops, i32** %84, align 8
  %85 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %86 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %89 = call i32 @amba_rev(%struct.amba_device* %88)
  %90 = call i32 @snprintf(i32 %87, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %92 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %91, i32 0, i32 1
  %93 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %94 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %95 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %94, i32 0, i32 0
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @pl011_setup_port(i32* %92, %struct.uart_amba_port* %93, i32* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %69
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %108

102:                                              ; preds = %69
  %103 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %104 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %105 = call i32 @amba_set_drvdata(%struct.amba_device* %103, %struct.uart_amba_port* %104)
  %106 = load %struct.uart_amba_port*, %struct.uart_amba_port** %6, align 8
  %107 = call i32 @pl011_register_port(%struct.uart_amba_port* %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %100, %39, %25, %16
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @pl011_find_free_port(...) #1

declare dso_local %struct.uart_amba_port* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @amba_rev(%struct.amba_device*) #1

declare dso_local i32 @pl011_setup_port(i32*, %struct.uart_amba_port*, i32*, i32) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.uart_amba_port*) #1

declare dso_local i32 @pl011_register_port(%struct.uart_amba_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
