; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clps711x_port = type { i32, i32, %struct.TYPE_11__, %struct.clk*, %struct.clk* }
%struct.TYPE_11__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.clk* }
%struct.clk = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@UPIO_MEM32 = common dso_local global i32 0, align 4
@PORT_CLPS711X = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@uart_clps711x_ops = common dso_local global i32 0, align 4
@clps711x_uart = common dso_local global i32 0, align 4
@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON_UARTEN = common dso_local global i32 0, align 4
@uart_clps711x_int_tx = common dso_local global i32 0, align 4
@uart_clps711x_int_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uart_clps711x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_clps711x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clps711x_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.clps711x_port* @devm_kzalloc(%struct.TYPE_12__* %15, i32 88, i32 %16)
  store %struct.clps711x_port* %17, %struct.clps711x_port** %5, align 8
  %18 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %19 = icmp ne %struct.clps711x_port* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %221

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.clk* @devm_clk_get(%struct.TYPE_12__* %25, i32* null)
  store %struct.clk* %26, %struct.clk** %7, align 8
  %27 = load %struct.clk*, %struct.clk** %7, align 8
  %28 = call i64 @IS_ERR(%struct.clk* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.clk*, %struct.clk** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.clk* %31)
  store i32 %32, i32* %2, align 4
  br label %221

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %6, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_12__* %38, %struct.resource* %39)
  %41 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %42 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 10
  store %struct.clk* %40, %struct.clk** %43, align 8
  %44 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %45 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 10
  %47 = load %struct.clk*, %struct.clk** %46, align 8
  %48 = call i64 @IS_ERR(%struct.clk* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %52 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 10
  %54 = load %struct.clk*, %struct.clk** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.clk* %54)
  store i32 %55, i32* %2, align 4
  br label %221

56:                                               ; preds = %33
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i8* @platform_get_irq(%struct.platform_device* %57, i32 0)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %221

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %67 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i8* @platform_get_irq(%struct.platform_device* %69, i32 1)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %73 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %75 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %80 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %2, align 4
  br label %221

82:                                               ; preds = %64
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call %struct.clk* @syscon_regmap_lookup_by_phandle(%struct.device_node* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %86 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %85, i32 0, i32 3
  store %struct.clk* %84, %struct.clk** %86, align 8
  %87 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %88 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %87, i32 0, i32 3
  %89 = load %struct.clk*, %struct.clk** %88, align 8
  %90 = call i64 @IS_ERR(%struct.clk* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %94 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %93, i32 0, i32 3
  %95 = load %struct.clk*, %struct.clk** %94, align 8
  %96 = call i32 @PTR_ERR(%struct.clk* %95)
  store i32 %96, i32* %2, align 4
  br label %221

97:                                               ; preds = %82
  %98 = load %struct.device_node*, %struct.device_node** %4, align 8
  %99 = call i32 @of_alias_get_id(%struct.device_node* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %101 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 9
  store i32 %99, i32* %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %106 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 8
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %107, align 8
  %108 = load i32, i32* @UPIO_MEM32, align 4
  %109 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %110 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 7
  store i32 %108, i32* %111, align 4
  %112 = load %struct.resource*, %struct.resource** %6, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %116 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* @PORT_CLPS711X, align 4
  %119 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %120 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 5
  store i32 %118, i32* %121, align 4
  %122 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %123 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i32 16, i32* %124, align 4
  %125 = load i32, i32* @UPF_SKIP_TEST, align 4
  %126 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %129 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.clk*, %struct.clk** %7, align 8
  %132 = call i32 @clk_get_rate(%struct.clk* %131)
  %133 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %134 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  store i32 %132, i32* %135, align 8
  %136 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %137 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  store i32* @uart_clps711x_ops, i32** %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %141 = call i32 @platform_set_drvdata(%struct.platform_device* %139, %struct.clps711x_port* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call %struct.clk* @mctrl_gpio_init_noauto(%struct.TYPE_12__* %143, i32 0)
  %145 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %146 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %145, i32 0, i32 4
  store %struct.clk* %144, %struct.clk** %146, align 8
  %147 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %148 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %147, i32 0, i32 4
  %149 = load %struct.clk*, %struct.clk** %148, align 8
  %150 = call i64 @IS_ERR(%struct.clk* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %97
  %153 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %154 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %153, i32 0, i32 4
  %155 = load %struct.clk*, %struct.clk** %154, align 8
  %156 = call i32 @PTR_ERR(%struct.clk* %155)
  store i32 %156, i32* %2, align 4
  br label %221

157:                                              ; preds = %97
  %158 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %159 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %158, i32 0, i32 2
  %160 = call i32 @uart_add_one_port(i32* @clps711x_uart, %struct.TYPE_11__* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %2, align 4
  br label %221

165:                                              ; preds = %157
  %166 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %167 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %166, i32 0, i32 2
  %168 = call i32 @uart_console(%struct.TYPE_11__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %172 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %171, i32 0, i32 3
  %173 = load %struct.clk*, %struct.clk** %172, align 8
  %174 = load i32, i32* @SYSCON_OFFSET, align 4
  %175 = load i32, i32* @SYSCON_UARTEN, align 4
  %176 = call i32 @regmap_update_bits(%struct.clk* %173, i32 %174, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %170, %165
  %178 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %179 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %183 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @uart_clps711x_int_tx, align 4
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = call i32 @dev_name(%struct.TYPE_12__* %188)
  %190 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %191 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %190, i32 0, i32 2
  %192 = call i32 @devm_request_irq(%struct.TYPE_12__* %181, i32 %185, i32 %186, i32 0, i32 %189, %struct.TYPE_11__* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %177
  %196 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %197 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %196, i32 0, i32 2
  %198 = call i32 @uart_remove_one_port(i32* @clps711x_uart, %struct.TYPE_11__* %197)
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %2, align 4
  br label %221

200:                                              ; preds = %177
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %204 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @uart_clps711x_int_rx, align 4
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_name(%struct.TYPE_12__* %208)
  %210 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %211 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %210, i32 0, i32 2
  %212 = call i32 @devm_request_irq(%struct.TYPE_12__* %202, i32 %205, i32 %206, i32 0, i32 %209, %struct.TYPE_11__* %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %200
  %216 = load %struct.clps711x_port*, %struct.clps711x_port** %5, align 8
  %217 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %216, i32 0, i32 2
  %218 = call i32 @uart_remove_one_port(i32* @clps711x_uart, %struct.TYPE_11__* %217)
  br label %219

219:                                              ; preds = %215, %200
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %195, %163, %152, %92, %78, %62, %50, %30, %20
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.clps711x_port* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.clk* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.clps711x_port*) #1

declare dso_local %struct.clk* @mctrl_gpio_init_noauto(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @uart_console(%struct.TYPE_11__*) #1

declare dso_local i32 @regmap_update_bits(%struct.clk*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
