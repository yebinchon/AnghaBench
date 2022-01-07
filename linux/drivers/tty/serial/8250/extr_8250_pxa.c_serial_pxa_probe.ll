; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pxa.c_serial_pxa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pxa.c_serial_pxa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.pxa8250_data*, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.pxa8250_data = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@PORT_XSCALE = common dso_local global i32 0, align 4
@UPIO_MEM32 = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@serial_pxa_pm = common dso_local global i32 0, align 4
@serial_pxa_dl_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_pxa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pxa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_8250_port, align 8
  %5 = alloca %struct.pxa8250_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.uart_8250_port* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 64, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @IORESOURCE_IRQ, align 4
  %15 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 0)
  store %struct.resource* %15, %struct.resource** %7, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %132

24:                                               ; preds = %18
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.pxa8250_data* @devm_kzalloc(%struct.TYPE_5__* %26, i32 8, i32 %27)
  store %struct.pxa8250_data* %28, %struct.pxa8250_data** %5, align 8
  %29 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %30 = icmp ne %struct.pxa8250_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %132

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @devm_clk_get(%struct.TYPE_5__* %36, i32* null)
  %38 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %39 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %41 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %47 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %132

50:                                               ; preds = %34
  %51 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %52 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %132

59:                                               ; preds = %50
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @of_alias_get_id(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* @PORT_XSCALE, align 4
  %73 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @UPIO_MEM32, align 4
  %76 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 8
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 2, i32* %84, align 4
  %85 = load %struct.resource*, %struct.resource** %7, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 64, i32* %91, align 8
  %92 = load i32, i32* @UPF_IOREMAP, align 4
  %93 = load i32, i32* @UPF_SKIP_TEST, align 4
  %94 = or i32 %92, %93
  %95 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 7
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %100, align 8
  %101 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %102 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @clk_get_rate(i32 %103)
  %105 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @serial_pxa_pm, align 4
  %108 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %111 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store %struct.pxa8250_data* %110, %struct.pxa8250_data** %112, align 8
  %113 = load i32, i32* @serial_pxa_dl_write, align 4
  %114 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  %115 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %4)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %71
  br label %126

119:                                              ; preds = %71
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %122 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.pxa8250_data* %124)
  store i32 0, i32* %2, align 4
  br label %132

126:                                              ; preds = %118
  %127 = load %struct.pxa8250_data*, %struct.pxa8250_data** %5, align 8
  %128 = getelementptr inbounds %struct.pxa8250_data, %struct.pxa8250_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @clk_unprepare(i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %126, %119, %57, %45, %31, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local %struct.pxa8250_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @devm_clk_get(%struct.TYPE_5__*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @clk_prepare(i32) #2

declare dso_local i32 @of_alias_get_id(i32, i8*) #2

declare dso_local i32 @clk_get_rate(i32) #2

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa8250_data*) #2

declare dso_local i32 @clk_unprepare(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
