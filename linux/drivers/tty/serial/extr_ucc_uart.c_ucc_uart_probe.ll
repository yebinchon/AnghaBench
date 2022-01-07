; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_ucc_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_ucc_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.uart_qe_port = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.device_node* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i32*, %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i32, i64, i32, i32, i32, i32, i64 }
%struct.resource = type { i64 }
%struct.qe_firmware_info = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"soft-uart\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"using Soft-UART mode\0A\00", align 1
@soft_uart = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Soft-UART\00", align 1
@firmware_loaded = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown CPU model\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"fsl_qe_ucode_uart_%u_%u%u.bin\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"waiting for firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@uart_firmware_cont = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"could not load firmware %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"can't allocate QE port structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"missing 'reg' property in device tree\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"invalid 'reg' property in device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"UCC is unspecified in device tree\0A\00", align 1
@UCC_MAX_NUM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"no support for UCC%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"rx-clock-name\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"missing rx-clock-name in device tree\0A\00", align 1
@QE_BRG1 = common dso_local global i64 0, align 8
@QE_BRG16 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [38 x i8] c"rx-clock-name must be a BRG for UART\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tx-clock-name\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"missing tx-clock-name in device tree\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"tx-clock-name must be a BRG for UART\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"port-number\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"missing port-number in device tree\0A\00", align 1
@UCC_MAX_UART = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"port-number must be 0-%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"could not map IRQ for UCC%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"fsl,qe\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"qe\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"could not find 'qe' node\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"brg-frequency\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"missing brg-frequency in device tree\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"missing QE bus-frequency in device tree\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"invalid QE bus-frequency in device tree\0A\00", align 1
@qe_uart_pops = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@TX_NUM_FIFO = common dso_local global i32 0, align 4
@TX_BUF_SIZE = common dso_local global i32 0, align 4
@RX_NUM_FIFO = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@UCC_WAIT_CLOSING = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@ucc_uart_driver = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [28 x i8] c"could not add /dev/ttyQE%u\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"UCC%u assigned to /dev/ttyQE%u\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"mknod command is 'mknod /dev/ttyQE%u c %u %u'\0A\00", align 1
@SERIAL_QE_MAJOR = common dso_local global i32 0, align 4
@SERIAL_QE_MINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ucc_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uart_qe_port*, align 8
  %8 = alloca %struct.resource, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qe_firmware_info*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %4, align 8
  store %struct.uart_qe_port* null, %struct.uart_qe_port** %7, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i64 @of_find_property(%struct.device_node* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @soft_uart, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* @soft_uart, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %26
  %30 = call %struct.qe_firmware_info* (...) @qe_get_firmware_info()
  store %struct.qe_firmware_info* %30, %struct.qe_firmware_info** %10, align 8
  %31 = load %struct.qe_firmware_info*, %struct.qe_firmware_info** %10, align 8
  %32 = icmp ne %struct.qe_firmware_info* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.qe_firmware_info*, %struct.qe_firmware_info** %10, align 8
  %35 = getelementptr inbounds %struct.qe_firmware_info, %struct.qe_firmware_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strstr(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* @firmware_loaded, align 4
  br label %79

40:                                               ; preds = %33, %29
  %41 = call i32 @soc_info(i32* %13, i32* %14)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %480

50:                                               ; preds = %40
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %59 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_info(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* @uart_firmware_cont, align 4
  %69 = call i32 @request_firmware_nowait(i32 %60, i32 %61, i8* %62, %struct.TYPE_10__* %64, i32 %65, %struct.TYPE_10__* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %50
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %76 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %480

78:                                               ; preds = %50
  br label %79

79:                                               ; preds = %78, %39
  br label %80

80:                                               ; preds = %79, %26
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.uart_qe_port* @kzalloc(i32 160, i32 %81)
  store %struct.uart_qe_port* %82, %struct.uart_qe_port** %7, align 8
  %83 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %84 = icmp ne %struct.uart_qe_port* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %480

91:                                               ; preds = %80
  %92 = load %struct.device_node*, %struct.device_node** %4, align 8
  %93 = call i32 @of_address_to_resource(%struct.device_node* %92, i32 0, %struct.resource* %8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %476

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %476

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %114 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 9
  store i64 %112, i64* %115, align 8
  %116 = load %struct.device_node*, %struct.device_node** %4, align 8
  %117 = call i8* @of_get_property(%struct.device_node* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %5, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %110
  %122 = load %struct.device_node*, %struct.device_node** %4, align 8
  %123 = call i8* @of_get_property(%struct.device_node* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %5, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %9, align 4
  br label %476

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ult i32 %136, 1
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @UCC_MAX_NUM, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %138, %134
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @ENODEV, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %9, align 4
  br label %476

151:                                              ; preds = %138
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %152, align 4
  %154 = sub i32 %153, 1
  %155 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %156 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.device_node*, %struct.device_node** %4, align 8
  %158 = call i8* @of_get_property(%struct.device_node* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32* null)
  store i8* %158, i8** %6, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %151
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %163, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %165 = load i32, i32* @ENODEV, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %476

167:                                              ; preds = %151
  %168 = load i8*, i8** %6, align 8
  %169 = call i8* @qe_clock_source(i8* %168)
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %172 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %175 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @QE_BRG1, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %167
  %181 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %182 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @QE_BRG16, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %180, %167
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %191 = load i32, i32* @ENODEV, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %9, align 4
  br label %476

193:                                              ; preds = %180
  %194 = load %struct.device_node*, %struct.device_node** %4, align 8
  %195 = call i8* @of_get_property(%struct.device_node* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32* null)
  store i8* %195, i8** %6, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %204, label %198

198:                                              ; preds = %193
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %200, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %202 = load i32, i32* @ENODEV, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %9, align 4
  br label %476

204:                                              ; preds = %193
  %205 = load i8*, i8** %6, align 8
  %206 = call i8* @qe_clock_source(i8* %205)
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %209 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  store i64 %207, i64* %210, align 8
  %211 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %212 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @QE_BRG1, align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %224, label %217

217:                                              ; preds = %204
  %218 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %219 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @QE_BRG16, align 8
  %223 = icmp sgt i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %217, %204
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %228 = load i32, i32* @ENODEV, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %9, align 4
  br label %476

230:                                              ; preds = %217
  %231 = load %struct.device_node*, %struct.device_node** %4, align 8
  %232 = call i8* @of_get_property(%struct.device_node* %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32* null)
  %233 = bitcast i8* %232 to i32*
  store i32* %233, i32** %5, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %9, align 4
  br label %476

242:                                              ; preds = %230
  %243 = load i32*, i32** %5, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %246 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  %248 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %249 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @UCC_MAX_UART, align 4
  %253 = icmp uge i32 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %242
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %255, i32 0, i32 0
  %257 = load i32, i32* @UCC_MAX_UART, align 4
  %258 = sub nsw i32 %257, 1
  %259 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %9, align 4
  br label %476

262:                                              ; preds = %242
  %263 = load %struct.device_node*, %struct.device_node** %4, align 8
  %264 = call i64 @irq_of_parse_and_map(%struct.device_node* %263, i32 0)
  %265 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %266 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  store i64 %264, i64* %267, align 8
  %268 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %269 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %262
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %277 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = add i32 %278, 1
  %280 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %275, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %279)
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %9, align 4
  br label %476

283:                                              ; preds = %262
  %284 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  store %struct.device_node* %284, %struct.device_node** %4, align 8
  %285 = load %struct.device_node*, %struct.device_node** %4, align 8
  %286 = icmp ne %struct.device_node* %285, null
  br i1 %286, label %298, label %287

287:                                              ; preds = %283
  %288 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  store %struct.device_node* %288, %struct.device_node** %4, align 8
  %289 = load %struct.device_node*, %struct.device_node** %4, align 8
  %290 = icmp ne %struct.device_node* %289, null
  br i1 %290, label %297, label %291

291:                                              ; preds = %287
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 0
  %294 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %293, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  %295 = load i32, i32* @EINVAL, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %9, align 4
  br label %476

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297, %283
  %299 = load %struct.device_node*, %struct.device_node** %4, align 8
  %300 = call i8* @of_get_property(%struct.device_node* %299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32* null)
  %301 = bitcast i8* %300 to i32*
  store i32* %301, i32** %5, align 8
  %302 = load i32*, i32** %5, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %310, label %304

304:                                              ; preds = %298
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 0
  %307 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %306, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0))
  %308 = load i32, i32* @EINVAL, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %9, align 4
  br label %473

310:                                              ; preds = %298
  %311 = load i32*, i32** %5, align 8
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = load i32*, i32** %5, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %318 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 2
  store i32 %316, i32* %319, align 8
  br label %350

320:                                              ; preds = %310
  %321 = load %struct.device_node*, %struct.device_node** %4, align 8
  %322 = call i8* @of_get_property(%struct.device_node* %321, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32* null)
  %323 = bitcast i8* %322 to i32*
  store i32* %323, i32** %5, align 8
  %324 = load i32*, i32** %5, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %332, label %326

326:                                              ; preds = %320
  %327 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %328 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %327, i32 0, i32 0
  %329 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0))
  %330 = load i32, i32* @EINVAL, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %9, align 4
  br label %473

332:                                              ; preds = %320
  %333 = load i32*, i32** %5, align 8
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %332
  %337 = load i32*, i32** %5, align 8
  %338 = load i32, i32* %337, align 4
  %339 = udiv i32 %338, 2
  %340 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %341 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 2
  store i32 %339, i32* %342, align 8
  br label %349

343:                                              ; preds = %332
  %344 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %345 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %344, i32 0, i32 0
  %346 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %345, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %9, align 4
  br label %473

349:                                              ; preds = %336
  br label %350

350:                                              ; preds = %349, %314
  %351 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %352 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 8
  %354 = call i32 @spin_lock_init(i32* %353)
  %355 = load %struct.device_node*, %struct.device_node** %4, align 8
  %356 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %357 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %356, i32 0, i32 8
  store %struct.device_node* %355, %struct.device_node** %357, align 8
  %358 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %359 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %358, i32 0, i32 0
  %360 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %361 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 7
  store %struct.TYPE_10__* %359, %struct.TYPE_10__** %362, align 8
  %363 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %364 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 6
  store i32* @qe_uart_pops, i32** %365, align 8
  %366 = load i32, i32* @UPIO_MEM, align 4
  %367 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %368 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 5
  store i32 %366, i32* %369, align 4
  %370 = load i32, i32* @TX_NUM_FIFO, align 4
  %371 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %372 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %371, i32 0, i32 3
  store i32 %370, i32* %372, align 8
  %373 = load i32, i32* @TX_BUF_SIZE, align 4
  %374 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %375 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %374, i32 0, i32 7
  store i32 %373, i32* %375, align 8
  %376 = load i32, i32* @RX_NUM_FIFO, align 4
  %377 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %378 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %377, i32 0, i32 4
  store i32 %376, i32* %378, align 4
  %379 = load i32, i32* @RX_BUF_SIZE, align 4
  %380 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %381 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %380, i32 0, i32 6
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* @UCC_WAIT_CLOSING, align 4
  %383 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %384 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %383, i32 0, i32 5
  store i32 %382, i32* %384, align 8
  %385 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %386 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 3
  store i32 512, i32* %387, align 4
  %388 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %389 = load i32, i32* @UPF_IOREMAP, align 4
  %390 = or i32 %388, %389
  %391 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %392 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 4
  store i32 %390, i32* %393, align 8
  %394 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %395 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %398 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 2
  store i32 %396, i32* %399, align 8
  %400 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %403 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 8
  store i64 %401, i64* %404, align 8
  %405 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %406 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %410 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 3
  store i64 %408, i64* %411, align 8
  %412 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %413 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %416 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 7
  store i32 %414, i32* %417, align 4
  %418 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %419 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %422 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 6
  store i32 %420, i32* %423, align 8
  %424 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %425 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 4
  store i32 1, i32* %426, align 8
  %427 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %428 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %428, i32 0, i32 5
  store i32 1, i32* %429, align 4
  %430 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %431 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %430, i32 0, i32 1
  %432 = call i32 @uart_add_one_port(i32* @ucc_uart_driver, %struct.TYPE_9__* %431)
  store i32 %432, i32* %9, align 4
  %433 = load i32, i32* %9, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %443

435:                                              ; preds = %350
  %436 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %437 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %436, i32 0, i32 0
  %438 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %439 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %437, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 %441)
  br label %473

443:                                              ; preds = %350
  %444 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %445 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %446 = call i32 @platform_set_drvdata(%struct.platform_device* %444, %struct.uart_qe_port* %445)
  %447 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %448 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %447, i32 0, i32 0
  %449 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %450 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = add i32 %451, 1
  %453 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %454 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_info(%struct.TYPE_10__* %448, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %452, i32 %456)
  %458 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %459 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %458, i32 0, i32 0
  %460 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %461 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @SERIAL_QE_MAJOR, align 4
  %465 = load i64, i64* @SERIAL_QE_MINOR, align 8
  %466 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %467 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = zext i32 %469 to i64
  %471 = add nsw i64 %465, %470
  %472 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_dbg(%struct.TYPE_10__* %459, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0), i32 %463, i32 %464, i64 %471)
  store i32 0, i32* %2, align 4
  br label %480

473:                                              ; preds = %435, %343, %326, %304
  %474 = load %struct.device_node*, %struct.device_node** %4, align 8
  %475 = call i32 @of_node_put(%struct.device_node* %474)
  br label %476

476:                                              ; preds = %473, %291, %273, %254, %236, %224, %198, %187, %161, %143, %127, %104, %96
  %477 = load %struct.uart_qe_port*, %struct.uart_qe_port** %7, align 8
  %478 = call i32 @kfree(%struct.uart_qe_port* %477)
  %479 = load i32, i32* %9, align 4
  store i32 %479, i32* %2, align 4
  br label %480

480:                                              ; preds = %476, %443, %85, %72, %44
  %481 = load i32, i32* %2, align 4
  ret i32 %481
}

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.qe_firmware_info* @qe_get_firmware_info(...) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @soc_info(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.uart_qe_port* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @qe_clock_source(i8*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_qe_port*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @kfree(%struct.uart_qe_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
