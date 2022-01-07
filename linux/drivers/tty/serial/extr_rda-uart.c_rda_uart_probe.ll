; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rda_uart_port = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32*, i32, i64, i32, i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.platform_device = type { i64, %struct.TYPE_6__ }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@RDA_UART_PORT_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"id %d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"could not get mem\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@rda_uart_ports = common dso_local global %struct.rda_uart_port** null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"port %d already allocated\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"could not get clk\0A\00", align 1
@PORT_RDA = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"clock rate is zero\0A\00", align 1
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_LOW_LATENCY = common dso_local global i32 0, align 4
@RDA_UART_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@rda_uart_ops = common dso_local global i32 0, align 4
@rda_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rda_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rda_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.rda_uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @of_alias_get_id(i64 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RDA_UART_PORT_NUM, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26, %21
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %198

41:                                               ; preds = %26
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %4, align 8
  %45 = load %struct.resource*, %struct.resource** %4, align 8
  %46 = icmp ne %struct.resource* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %198

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @platform_get_irq(%struct.platform_device* %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %198

60:                                               ; preds = %53
  %61 = load %struct.rda_uart_port**, %struct.rda_uart_port*** @rda_uart_ports, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.rda_uart_port*, %struct.rda_uart_port** %61, i64 %64
  %66 = load %struct.rda_uart_port*, %struct.rda_uart_port** %65, align 8
  %67 = icmp ne %struct.rda_uart_port* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %198

77:                                               ; preds = %60
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.rda_uart_port* @devm_kzalloc(%struct.TYPE_6__* %79, i32 96, i32 %80)
  store %struct.rda_uart_port* %81, %struct.rda_uart_port** %5, align 8
  %82 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %83 = icmp ne %struct.rda_uart_port* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %198

87:                                               ; preds = %77
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = call i32 @devm_clk_get(%struct.TYPE_6__* %89, i32* null)
  %91 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %92 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %94 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %87
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 1
  %101 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %103 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %198

106:                                              ; preds = %87
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 1
  %109 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %110 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 11
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %111, align 8
  %112 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %113 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %119 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load i32, i32* @PORT_RDA, align 4
  %122 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %123 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 9
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @UPIO_MEM, align 4
  %126 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %127 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 8
  store i32 %125, i32* %128, align 4
  %129 = load %struct.resource*, %struct.resource** %4, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %133 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 7
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %137 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 8
  %139 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %140 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @clk_get_rate(i32 %141)
  %143 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %144 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  store i64 %142, i64* %145, align 8
  %146 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %147 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %106
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 1
  %154 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %198

157:                                              ; preds = %106
  %158 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %159 = load i32, i32* @UPF_IOREMAP, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @UPF_LOW_LATENCY, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %164 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 8
  %166 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %167 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 6
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* @RDA_UART_TX_FIFO_SIZE, align 4
  %170 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %171 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 5
  store i32 %169, i32* %172, align 8
  %173 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %174 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 4
  store i32* @rda_uart_ops, i32** %175, align 8
  %176 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %177 = load %struct.rda_uart_port**, %struct.rda_uart_port*** @rda_uart_ports, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.rda_uart_port*, %struct.rda_uart_port** %177, i64 %180
  store %struct.rda_uart_port* %176, %struct.rda_uart_port** %181, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %184 = call i32 @platform_set_drvdata(%struct.platform_device* %182, %struct.rda_uart_port* %183)
  %185 = load %struct.rda_uart_port*, %struct.rda_uart_port** %5, align 8
  %186 = getelementptr inbounds %struct.rda_uart_port, %struct.rda_uart_port* %185, i32 0, i32 0
  %187 = call i32 @uart_add_one_port(i32* @rda_uart_driver, %struct.TYPE_5__* %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %157
  %191 = load %struct.rda_uart_port**, %struct.rda_uart_port*** @rda_uart_ports, align 8
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.rda_uart_port*, %struct.rda_uart_port** %191, i64 %194
  store %struct.rda_uart_port* null, %struct.rda_uart_port** %195, align 8
  br label %196

196:                                              ; preds = %190, %157
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %151, %98, %84, %68, %58, %47, %32
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i64 @of_alias_get_id(i64, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.rda_uart_port* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rda_uart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
