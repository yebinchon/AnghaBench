; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_port = type { i32, i32, %struct.uart_port, %struct.TYPE_4__*, i32 }
%struct.uart_port = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@stm32_uart_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@stm32_config_rs485 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_port*, %struct.platform_device*)* @stm32_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_init_port(%struct.stm32_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.stm32_port* %0, %struct.stm32_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %9, i32 0, i32 2
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load i32, i32* @UPIO_MEM, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 8
  store i32* @stm32_uart_ops, i32** %18, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 7
  store i32* %20, i32** %22, align 8
  %23 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = call i8* @platform_get_irq(%struct.platform_device* %31, i32 0)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ %37, %39 ], [ %42, %40 ]
  store i32 %44, i32* %3, align 4
  br label %174

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @stm32_config_rs485, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = call i32 @stm32_init_rs485(%struct.uart_port* %52, %struct.platform_device* %53)
  %55 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %56 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %45
  %63 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %64 = call i8* @platform_get_irq(%struct.platform_device* %63, i32 1)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %67 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %69 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %62
  %73 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %74 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ENXIO, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %81 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  br label %88

88:                                               ; preds = %85, %84
  %89 = phi i32 [ %82, %84 ], [ %87, %85 ]
  store i32 %89, i32* %3, align 4
  br label %174

90:                                               ; preds = %72, %62
  br label %91

91:                                               ; preds = %90, %45
  %92 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %93 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %99 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %101 = load i32, i32* @IORESOURCE_MEM, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %100, i32 %101, i32 0)
  store %struct.resource* %102, %struct.resource** %7, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.resource*, %struct.resource** %7, align 8
  %106 = call i32 @devm_ioremap_resource(i32* %104, %struct.resource* %105)
  %107 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %91
  %115 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %3, align 4
  br label %174

119:                                              ; preds = %91
  %120 = load %struct.resource*, %struct.resource** %7, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 2
  %127 = call i32 @spin_lock_init(i32* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @devm_clk_get(i32* %129, i32* null)
  %131 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %132 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %134 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @IS_ERR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %119
  %139 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %140 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @PTR_ERR(i32 %141)
  store i32 %142, i32* %3, align 4
  br label %174

143:                                              ; preds = %119
  %144 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %145 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @clk_prepare_enable(i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %174

152:                                              ; preds = %143
  %153 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %154 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @clk_get_rate(i32 %155)
  %157 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %158 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %161 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %152
  %166 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %167 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @clk_disable_unprepare(i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %165, %152
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %150, %138, %114, %88, %43
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @stm32_init_rs485(%struct.uart_port*, %struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
