; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_vt8500_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_vt8500_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt8500_port = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_7__ }
%struct.resource = type { i32 }
%struct.of_device_id = type { i32* }

@wmt_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@VT8500_MAX_PORTS = common dso_local global i32 0, align 4
@vt8500_ports_in_use = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@VT8500_RECOMMENDED_CLK = common dso_local global i32 0, align 4
@PORT_VT8500 = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@vt8500_uart_pops = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@VT8500_OVERSAMPLING_DIVISOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"VT8500 UART%d\00", align 1
@vt8500_uart_ports = common dso_local global %struct.vt8500_port** null, align 8
@vt8500_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8500_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vt8500_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load i32, i32* @wmt_dt_ids, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = call %struct.of_device_id* @of_match_device(i32 %16, %struct.TYPE_7__* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %8, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %224

25:                                               ; preds = %1
  %26 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %27 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %5, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_IRQ, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %6, align 8
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %25
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %224

43:                                               ; preds = %37
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = call i32 @of_alias_get_id(%struct.device_node* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @VT8500_MAX_PORTS, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %55

54:                                               ; preds = %43
  store i32 -1, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @vt8500_ports_in_use, align 4
  %60 = load i32, i32* @VT8500_MAX_PORTS, align 4
  %61 = call i32 @find_first_zero_bit(i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @VT8500_MAX_PORTS, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %224

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @vt8500_ports_in_use, align 4
  %72 = call i64 @test_and_set_bit(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %224

77:                                               ; preds = %69
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.vt8500_port* @devm_kzalloc(%struct.TYPE_7__* %79, i32 72, i32 %80)
  store %struct.vt8500_port* %81, %struct.vt8500_port** %4, align 8
  %82 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %83 = icmp ne %struct.vt8500_port* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %224

87:                                               ; preds = %77
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = load %struct.resource*, %struct.resource** %5, align 8
  %91 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %89, %struct.resource* %90)
  %92 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %93 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 10
  store i32 %91, i32* %94, align 8
  %95 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %96 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @IS_ERR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %87
  %102 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %103 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %224

107:                                              ; preds = %87
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.device_node*, %struct.device_node** %110, align 8
  %112 = call i32 @of_clk_get(%struct.device_node* %111, i32 0)
  %113 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %114 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %116 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 1
  %123 = call i32 @dev_err(%struct.TYPE_7__* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %224

126:                                              ; preds = %107
  %127 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %128 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @clk_prepare_enable(i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 1
  %136 = call i32 @dev_err(%struct.TYPE_7__* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %2, align 4
  br label %224

138:                                              ; preds = %126
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %142 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %144 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @clk_get_rate(i32 %145)
  %147 = load i32, i32* @VT8500_RECOMMENDED_CLK, align 4
  %148 = call i32 @DIV_ROUND_CLOSEST(i32 %146, i32 %147)
  %149 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %150 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @PORT_VT8500, align 4
  %152 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %153 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 9
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @UPIO_MEM, align 4
  %156 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %157 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 8
  store i32 %155, i32* %158, align 8
  %159 = load %struct.resource*, %struct.resource** %5, align 8
  %160 = getelementptr inbounds %struct.resource, %struct.resource* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %163 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 7
  store i32 %161, i32* %164, align 4
  %165 = load %struct.resource*, %struct.resource** %6, align 8
  %166 = getelementptr inbounds %struct.resource, %struct.resource* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %169 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 6
  store i32 %167, i32* %170, align 8
  %171 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %172 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i32 16, i32* %173, align 8
  %174 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %175 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  store i32* @vt8500_uart_pops, i32** %176, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %179 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 1
  %183 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %184 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %185, align 8
  %186 = load i32, i32* @UPF_IOREMAP, align 4
  %187 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %190 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  %192 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %193 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @clk_get_rate(i32 %194)
  %196 = mul nsw i32 16, %195
  %197 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %198 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %196, %199
  %201 = load i32, i32* @VT8500_OVERSAMPLING_DIVISOR, align 4
  %202 = sdiv i32 %200, %201
  %203 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %204 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  store i32 %202, i32* %205, align 4
  %206 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %207 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @snprintf(i32 %208, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %214 = load %struct.vt8500_port**, %struct.vt8500_port*** @vt8500_uart_ports, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.vt8500_port*, %struct.vt8500_port** %214, i64 %216
  store %struct.vt8500_port* %213, %struct.vt8500_port** %217, align 8
  %218 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %219 = getelementptr inbounds %struct.vt8500_port, %struct.vt8500_port* %218, i32 0, i32 2
  %220 = call i32 @uart_add_one_port(i32* @vt8500_uart_driver, %struct.TYPE_6__* %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = load %struct.vt8500_port*, %struct.vt8500_port** %4, align 8
  %223 = call i32 @platform_set_drvdata(%struct.platform_device* %221, %struct.vt8500_port* %222)
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %138, %133, %120, %101, %84, %74, %66, %40, %22
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local %struct.vt8500_port* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vt8500_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
