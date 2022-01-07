; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64, %struct.clk*, %struct.TYPE_3__*, i32, i32*, i32, i32, i32 }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.platform_device = type { i64, %struct.TYPE_3__ }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@BCM63XX_NR_UARTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ports = common dso_local global %struct.uart_port* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@UPIO_MEM = common dso_local global i32 0, align 4
@bcm_uart_ops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@bcm_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @of_alias_get_id(i64 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @of_alias_get_id(i64 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %14
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BCM63XX_NR_UARTS, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %180

51:                                               ; preds = %42
  %52 = load %struct.uart_port*, %struct.uart_port** @ports, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i64 %55
  store %struct.uart_port* %56, %struct.uart_port** %6, align 8
  %57 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 3
  %59 = load %struct.clk*, %struct.clk** %58, align 8
  %60 = icmp ne %struct.clk* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %180

64:                                               ; preds = %51
  %65 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %66 = call i32 @memset(%struct.uart_port* %65, i32 0, i32 64)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 0)
  store %struct.resource* %69, %struct.resource** %4, align 8
  %70 = load %struct.resource*, %struct.resource** %4, align 8
  %71 = icmp ne %struct.resource* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %180

75:                                               ; preds = %64
  %76 = load %struct.resource*, %struct.resource** %4, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 1
  %83 = load %struct.resource*, %struct.resource** %4, align 8
  %84 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_3__* %82, %struct.resource* %83)
  %85 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 3
  store %struct.clk* %84, %struct.clk** %86, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 3
  %89 = load %struct.clk*, %struct.clk** %88, align 8
  %90 = call i64 @IS_ERR(%struct.clk* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %75
  %93 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 3
  %95 = load %struct.clk*, %struct.clk** %94, align 8
  %96 = call i32 @PTR_ERR(%struct.clk* %95)
  store i32 %96, i32* %2, align 4
  br label %180

97:                                               ; preds = %75
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load i32, i32* @IORESOURCE_IRQ, align 4
  %100 = call %struct.resource* @platform_get_resource(%struct.platform_device* %98, i32 %99, i32 0)
  store %struct.resource* %100, %struct.resource** %5, align 8
  %101 = load %struct.resource*, %struct.resource** %5, align 8
  %102 = icmp ne %struct.resource* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %180

106:                                              ; preds = %97
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 1
  %109 = call %struct.clk* @clk_get(%struct.TYPE_3__* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %109, %struct.clk** %7, align 8
  %110 = load %struct.clk*, %struct.clk** %7, align 8
  %111 = call i64 @IS_ERR(%struct.clk* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call %struct.clk* @of_clk_get(i64 %123, i32 0)
  store %struct.clk* %124, %struct.clk** %7, align 8
  br label %125

125:                                              ; preds = %119, %113, %106
  %126 = load %struct.clk*, %struct.clk** %7, align 8
  %127 = call i64 @IS_ERR(%struct.clk* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %180

132:                                              ; preds = %125
  %133 = load i32, i32* @UPIO_MEM, align 4
  %134 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 4
  %136 = load %struct.resource*, %struct.resource** %5, align 8
  %137 = getelementptr inbounds %struct.resource, %struct.resource* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %140 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 6
  store i32* @bcm_uart_ops, i32** %142, align 8
  %143 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %144 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 1
  %148 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 4
  store %struct.TYPE_3__* %147, %struct.TYPE_3__** %149, align 8
  %150 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 0
  store i32 16, i32* %151, align 8
  %152 = load %struct.clk*, %struct.clk** %7, align 8
  %153 = call i32 @clk_get_rate(%struct.clk* %152)
  %154 = sdiv i32 %153, 2
  %155 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %161 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.clk*, %struct.clk** %7, align 8
  %163 = call i32 @clk_put(%struct.clk* %162)
  %164 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %165 = call i32 @uart_add_one_port(i32* @bcm_uart_driver, %struct.uart_port* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %132
  %169 = load %struct.uart_port*, %struct.uart_port** @ports, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %169, i64 %172
  %174 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %173, i32 0, i32 3
  store %struct.clk* null, %struct.clk** %174, align 8
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %2, align 4
  br label %180

176:                                              ; preds = %132
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %179 = call i32 @platform_set_drvdata(%struct.platform_device* %177, %struct.uart_port* %178)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %176, %168, %129, %103, %92, %72, %61, %48
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i8* @of_alias_get_id(i64, i8*) #1

declare dso_local i32 @memset(%struct.uart_port*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get(%struct.TYPE_3__*, i8*) #1

declare dso_local %struct.clk* @of_clk_get(i64, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
