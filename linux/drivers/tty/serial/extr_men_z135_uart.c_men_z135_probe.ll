; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { %struct.resource, %struct.device }
%struct.resource = type { i32 }
%struct.device = type { i32 }
%struct.mcb_device_id = type { i32 }
%struct.men_z135_port = type { i8*, %struct.TYPE_2__, i32, %struct.mcb_device* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, %struct.device*, i64, i8*, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEN_Z135_BASECLK = common dso_local global i32 0, align 4
@MEN_Z135_FIFO_SIZE = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i8* null, align 8
@men_z135_ops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@PORT_MEN_Z135 = common dso_local global i32 0, align 4
@men_z135_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to add UART: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcb_device*, %struct.mcb_device_id*)* @men_z135_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z135_probe(%struct.mcb_device* %0, %struct.mcb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcb_device*, align 8
  %5 = alloca %struct.mcb_device_id*, align 8
  %6 = alloca %struct.men_z135_port*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.mcb_device* %0, %struct.mcb_device** %4, align 8
  store %struct.mcb_device_id* %1, %struct.mcb_device_id** %5, align 8
  %10 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %11 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.men_z135_port* @devm_kzalloc(%struct.device* %12, i32 96, i32 %13)
  store %struct.men_z135_port* %14, %struct.men_z135_port** %6, align 8
  %15 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %16 = icmp ne %struct.men_z135_port* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %116

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @__get_free_page(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %25 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %27 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %116

33:                                               ; preds = %20
  %34 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %35 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %34, i32 0, i32 0
  store %struct.resource* %35, %struct.resource** %7, align 8
  %36 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %37 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %38 = call i32 @mcb_set_drvdata(%struct.mcb_device* %36, %struct.men_z135_port* %37)
  %39 = load i32, i32* @MEN_Z135_BASECLK, align 4
  %40 = mul nsw i32 %39, 16
  %41 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %42 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @MEN_Z135_FIFO_SIZE, align 4
  %45 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %46 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 10
  store i32 %44, i32* %47, align 8
  %48 = load i8*, i8** @UPIO_MEM, align 8
  %49 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %50 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  store i8* %48, i8** %51, align 8
  %52 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %53 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 9
  store i32* @men_z135_ops, i32** %54, align 8
  %55 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %56 = call i32 @mcb_get_irq(%struct.mcb_device* %55)
  %57 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %58 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 8
  store i32 %56, i32* %59, align 8
  %60 = load i8*, i8** @UPIO_MEM, align 8
  %61 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %62 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 7
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %65 = load i32, i32* @UPF_IOREMAP, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %68 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @line, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @line, align 4
  %72 = sext i32 %70 to i64
  %73 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %74 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  store i64 %72, i64* %75, align 8
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %78 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  store %struct.device* %76, %struct.device** %79, align 8
  %80 = load i32, i32* @PORT_MEN_Z135, align 4
  %81 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %82 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 4
  %84 = load %struct.resource*, %struct.resource** %7, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %88 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %91 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %94 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %95 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %94, i32 0, i32 3
  store %struct.mcb_device* %93, %struct.mcb_device** %95, align 8
  %96 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %97 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %96, i32 0, i32 2
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %100 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %99, i32 0, i32 1
  %101 = call i32 @uart_add_one_port(i32* @men_z135_driver, %struct.TYPE_2__* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %33
  br label %106

105:                                              ; preds = %33
  store i32 0, i32* %3, align 4
  br label %116

106:                                              ; preds = %104
  %107 = load %struct.men_z135_port*, %struct.men_z135_port** %6, align 8
  %108 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = call i32 @free_page(i64 %110)
  %112 = load %struct.device*, %struct.device** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %106, %105, %30, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.men_z135_port* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @mcb_set_drvdata(%struct.mcb_device*, %struct.men_z135_port*) #1

declare dso_local i32 @mcb_get_irq(%struct.mcb_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
