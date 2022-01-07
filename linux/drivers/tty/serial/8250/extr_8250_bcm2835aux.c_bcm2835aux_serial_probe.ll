; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_bcm2835aux.c_bcm2835aux_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_bcm2835aux.c_bcm2835aux_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bcm2835aux_data = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_CAP_MINI = common dso_local global i32 0, align 4
@PORT_16550 = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not get clk: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"memory resource not found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to enable uart clock - %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unable to register 8250 port - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835aux_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm2835aux_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bcm2835aux_data* @devm_kzalloc(%struct.TYPE_9__* %8, i32 72, i32 %9)
  store %struct.bcm2835aux_data* %10, %struct.bcm2835aux_data** %4, align 8
  %11 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %12 = icmp ne %struct.bcm2835aux_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %183

16:                                               ; preds = %1
  %17 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %18 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 10
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* @UART_CAP_FIFO, align 4
  %23 = load i32, i32* @UART_CAP_MINI, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %26 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %31 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 9
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %33, align 8
  %34 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %35 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  %38 = load i32, i32* @PORT_16550, align 4
  %39 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %40 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 8
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* @UPIO_MEM, align 4
  %44 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %45 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 7
  store i32 %43, i32* %47, align 4
  %48 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %49 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 8, i32* %51, align 4
  %52 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %53 = load i32, i32* @UPF_FIXED_PORT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @UPF_SKIP_TEST, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %60 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @devm_clk_get(%struct.TYPE_9__* %64, i32* null)
  %66 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %67 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %69 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR_OR_ZERO(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %16
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %183

80:                                               ; preds = %16
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call i32 @platform_get_irq(%struct.platform_device* %81, i32 0)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %183

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %90 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32 %88, i32* %92, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = call %struct.resource* @platform_get_resource(%struct.platform_device* %93, i32 %94, i32 0)
  store %struct.resource* %95, %struct.resource** %5, align 8
  %96 = load %struct.resource*, %struct.resource** %5, align 8
  %97 = icmp ne %struct.resource* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %87
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %183

104:                                              ; preds = %87
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.resource*, %struct.resource** %5, align 8
  %108 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %106, %struct.resource* %107)
  %109 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %110 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 6
  store i32 %108, i32* %112, align 8
  %113 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %114 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PTR_ERR_OR_ZERO(i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %104
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %183

123:                                              ; preds = %104
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @of_alias_get_id(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %134 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  store i32 %132, i32* %136, align 8
  br label %137

137:                                              ; preds = %131, %123
  %138 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %139 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @clk_prepare_enable(i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %183

150:                                              ; preds = %137
  %151 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %152 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @clk_get_rate(i32 %153)
  %155 = mul nsw i32 %154, 2
  %156 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %157 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 5
  store i32 %155, i32* %159, align 4
  %160 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %161 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %160, i32 0, i32 2
  %162 = call i32 @serial8250_register_8250_port(%struct.TYPE_8__* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %150
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  br label %177

170:                                              ; preds = %150
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %173 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %176 = call i32 @platform_set_drvdata(%struct.platform_device* %174, %struct.bcm2835aux_data* %175)
  store i32 0, i32* %2, align 4
  br label %183

177:                                              ; preds = %165
  %178 = load %struct.bcm2835aux_data*, %struct.bcm2835aux_data** %4, align 8
  %179 = getelementptr inbounds %struct.bcm2835aux_data, %struct.bcm2835aux_data* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @clk_disable_unprepare(i32 %180)
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %170, %144, %121, %98, %85, %74, %13
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.bcm2835aux_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm2835aux_data*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
