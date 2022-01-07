; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_port = type { i32**, i32*, i32*, %struct.uart_port }
%struct.uart_port = type { i64, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@asc_uart_ops = common dso_local global i32 0, align 4
@ASC_FIFO_SIZE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get Pinctrl: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to look up Pinctrl state 'default': %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no-hw-flowctrl\00", align 1
@NO_HW_FLOWCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asc_port*, %struct.platform_device*)* @asc_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asc_init_port(%struct.asc_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asc_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.asc_port* %0, %struct.asc_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %10 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %9, i32 0, i32 3
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load i32, i32* @UPIO_MEM, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 7
  store i32* @asc_uart_ops, i32** %18, align 8
  %19 = load i32, i32* @ASC_FIFO_SIZE, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = call i32 @platform_get_irq(%struct.platform_device* %26, i32 0)
  %28 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i32* @devm_ioremap_resource(i32* %34, %struct.resource* %35)
  %37 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @IS_ERR(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %3, align 4
  br label %173

49:                                               ; preds = %2
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 1
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32* @devm_clk_get(i32* %59, i32* null)
  %61 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %62 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %64 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @IS_ERR(i32* %65)
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %173

72:                                               ; preds = %49
  %73 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %74 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @clk_prepare_enable(i32* %75)
  %77 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %78 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @clk_get_rate(i32* %79)
  %81 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %82 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %85 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @WARN_ON(i32 %89)
  %91 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %92 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @clk_disable_unprepare(i32* %93)
  %95 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32* @devm_pinctrl_get(i32* %96)
  %98 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %99 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %101 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @IS_ERR(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %72
  %106 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %107 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @PTR_ERR(i32* %108)
  store i32 %109, i32* %8, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %173

115:                                              ; preds = %72
  %116 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %117 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i8* @pinctrl_lookup_state(i32* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %122 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %121, i32 0, i32 0
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* @DEFAULT, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  store i32* %120, i32** %125, align 8
  %126 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %127 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %126, i32 0, i32 0
  %128 = load i32**, i32*** %127, align 8
  %129 = load i64, i64* @DEFAULT, align 8
  %130 = getelementptr inbounds i32*, i32** %128, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @IS_ERR(i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %115
  %135 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %136 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %135, i32 0, i32 0
  %137 = load i32**, i32*** %136, align 8
  %138 = load i64, i64* @DEFAULT, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @PTR_ERR(i32* %140)
  store i32 %141, i32* %8, align 4
  %142 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %173

147:                                              ; preds = %115
  %148 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %149 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i8* @pinctrl_lookup_state(i32* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %154 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* @NO_HW_FLOWCTRL, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  store i32* %152, i32** %157, align 8
  %158 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %159 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @NO_HW_FLOWCTRL, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @IS_ERR(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %147
  %167 = load %struct.asc_port*, %struct.asc_port** %4, align 8
  %168 = getelementptr inbounds %struct.asc_port, %struct.asc_port* %167, i32 0, i32 0
  %169 = load i32**, i32*** %168, align 8
  %170 = load i64, i64* @NO_HW_FLOWCTRL, align 8
  %171 = getelementptr inbounds i32*, i32** %169, i64 %170
  store i32* null, i32** %171, align 8
  br label %172

172:                                              ; preds = %166, %147
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %134, %105, %69, %44
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32* @devm_pinctrl_get(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @pinctrl_lookup_state(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
