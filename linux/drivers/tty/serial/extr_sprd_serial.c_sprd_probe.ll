; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.uart_port }
%struct.uart_port = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@sprd_port = common dso_local global %struct.TYPE_5__** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_SPRD = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@SPRD_DEF_RATE = common dso_local global i32 0, align 4
@SPRD_FIFO_SIZE = common dso_local global i32 0, align 4
@serial_sprd_ops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sprd_ports_num = common dso_local global i32 0, align 4
@sprd_uart_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register SPRD-UART driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %15, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %9

26:                                               ; preds = %21, %9
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %169

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @sprd_probe_dt_alias(i32 %35, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_5__* @devm_kzalloc(i32* %40, i32 56, i32 %41)
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %34
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %169

56:                                               ; preds = %34
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %57, i64 %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store %struct.uart_port* %62, %struct.uart_port** %5, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 10
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @PORT_SPRD, align 4
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @UPIO_MEM, align 4
  %74 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @SPRD_DEF_RATE, align 4
  %77 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @SPRD_FIFO_SIZE, align 4
  %80 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 5
  store i32* @serial_sprd_ops, i32** %83, align 8
  %84 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %85 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %88 = call i32 @sprd_clk_init(%struct.uart_port* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %56
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %169

93:                                               ; preds = %56
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load i32, i32* @IORESOURCE_MEM, align 4
  %96 = call %struct.resource* @platform_get_resource(%struct.platform_device* %94, i32 %95, i32 0)
  store %struct.resource* %96, %struct.resource** %4, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.resource*, %struct.resource** %4, align 8
  %100 = call i32 @devm_ioremap_resource(i32* %98, %struct.resource* %99)
  %101 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @IS_ERR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %93
  %109 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %2, align 4
  br label %169

113:                                              ; preds = %93
  %114 = load %struct.resource*, %struct.resource** %4, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call i32 @platform_get_irq(%struct.platform_device* %119, i32 0)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %169

125:                                              ; preds = %113
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %129, i64 %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = call i32 @sprd_rx_alloc_buf(%struct.TYPE_5__* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %169

139:                                              ; preds = %125
  %140 = load i32, i32* @sprd_ports_num, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %139
  %143 = call i32 @uart_register_driver(i32* @sprd_uart_driver)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %169

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %139
  %151 = load i32, i32* @sprd_ports_num, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @sprd_ports_num, align 4
  %153 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %154 = call i32 @uart_add_one_port(i32* @sprd_uart_driver, %struct.uart_port* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sprd_port, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %158, i64 %160
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %161, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = call i32 @sprd_remove(%struct.platform_device* %162)
  br label %164

164:                                              ; preds = %157, %150
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %167 = call i32 @platform_set_drvdata(%struct.platform_device* %165, %struct.uart_port* %166)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %164, %146, %137, %123, %108, %91, %53, %31
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i32 @sprd_probe_dt_alias(i32, i32*) #1

declare dso_local %struct.TYPE_5__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sprd_clk_init(%struct.uart_port*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @sprd_rx_alloc_buf(%struct.TYPE_5__*) #1

declare dso_local i32 @uart_register_driver(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @sprd_remove(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
