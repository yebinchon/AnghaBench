; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_linflexuart.c_linflex_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get alias id, errno %d\0A\00", align 1
@UART_NR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"driver limited to %d serial ports\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PORT_LINFLEXUART = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@linflex_pops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@linflex_ports = common dso_local global %struct.uart_port** null, align 8
@linflex_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @linflex_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linflex_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.uart_port* @devm_kzalloc(%struct.TYPE_4__* %13, i32 48, i32 %14)
  store %struct.uart_port* %15, %struct.uart_port** %5, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %17 = icmp ne %struct.uart_port* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %114

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_alias_get_id(%struct.device_node* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_err(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %114

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @UART_NR, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* @UART_NR, align 4
  %40 = call i32 @dev_err(%struct.TYPE_4__* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %114

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 0)
  store %struct.resource* %49, %struct.resource** %6, align 8
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = icmp ne %struct.resource* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %114

55:                                               ; preds = %43
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call i32 @devm_ioremap_resource(%struct.TYPE_4__* %62, %struct.resource* %63)
  %65 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %55
  %73 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %114

77:                                               ; preds = %55
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 6
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  %82 = load i32, i32* @PORT_LINFLEXUART, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @UPIO_MEM, align 4
  %86 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = call i32 @platform_get_irq(%struct.platform_device* %88, i32 0)
  %90 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %93 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %92, i32 0, i32 2
  store i32* @linflex_pops, i32** %93, align 8
  %94 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %95 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %98 = load %struct.uart_port**, %struct.uart_port*** @linflex_ports, align 8
  %99 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %98, i64 %102
  store %struct.uart_port* %97, %struct.uart_port** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %106 = call i32 @platform_set_drvdata(%struct.platform_device* %104, %struct.uart_port* %105)
  %107 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %108 = call i32 @uart_add_one_port(i32* @linflex_reg, %struct.uart_port* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %77
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %114

113:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %111, %72, %52, %36, %26, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.uart_port* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_4__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
