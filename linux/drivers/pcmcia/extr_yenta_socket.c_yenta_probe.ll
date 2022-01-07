; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.yenta_socket*)* }
%struct.yenta_socket = type { i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.pci_dev* }
%struct.TYPE_7__ = type { i32, i32, %struct.pci_dev*, i32, %struct.yenta_socket*, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.pci_dev = type { i32, i32, i64, i32, i32 }
%struct.pci_device_id = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"no bus associated! (try 'pci=assign-busses')\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@yenta_socket_operations = common dso_local global i32 0, align 4
@pccard_nonstatic_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SS_CAP_PAGE_REGS = common dso_local global i32 0, align 4
@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"yenta_socket\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No cardbus resource!\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CardBus bridge found [%04x:%04x]\0A\00", align 1
@CB_SOCKET_MASK = common dso_local global i32 0, align 4
@CARDBUS_TYPE_DEFAULT = common dso_local global i64 0, align 8
@cardbus_type = common dso_local global %struct.TYPE_8__* null, align 8
@yenta_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"yenta\00", align 1
@yenta_interrupt_wrapper = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"no PCI IRQ, CardBus support disabled for this socket.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"check your BIOS CardBus, BIOS IRQ or ACPI settings.\0A\00", align 1
@SS_CAP_CARDBUS = common dso_local global i32 0, align 4
@isa_interrupts = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Socket status: %08x\0A\00", align 1
@CB_SOCKET_STATE = common dso_local global i32 0, align 4
@dev_attr_yenta_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @yenta_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.yenta_socket*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %264

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.yenta_socket* @kzalloc(i32 88, i32 %19)
  store %struct.yenta_socket* %20, %struct.yenta_socket** %6, align 8
  %21 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %22 = icmp ne %struct.yenta_socket* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %264

26:                                               ; preds = %18
  %27 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %28 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  store i32* @yenta_socket_operations, i32** %29, align 8
  %30 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %31 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  store i32* @pccard_nonstatic_ops, i32** %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %36 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32* %34, i32** %38, align 8
  %39 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %40 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %41 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store %struct.yenta_socket* %39, %struct.yenta_socket** %42, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %45 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @SS_CAP_PAGE_REGS, align 4
  %48 = load i32, i32* @SS_CAP_PCCARD, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %51 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %54 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 4096, i32* %55, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %58 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store %struct.pci_dev* %56, %struct.pci_dev** %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %62 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %61, i32 0, i32 5
  store %struct.pci_dev* %60, %struct.pci_dev** %62, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %65 = call i32 @pci_set_drvdata(%struct.pci_dev* %63, %struct.yenta_socket* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i64 @pci_enable_device(%struct.pci_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %26
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %258

72:                                               ; preds = %26
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i32 @pci_request_regions(%struct.pci_dev* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %255

78:                                               ; preds = %72
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i32 @pci_resource_start(%struct.pci_dev* %79, i32 0)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %252

88:                                               ; preds = %78
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i32 @pci_resource_start(%struct.pci_dev* %89, i32 0)
  %91 = call i32 @ioremap(i32 %90, i32 4096)
  %92 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %93 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %95 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %252

101:                                              ; preds = %88
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32*, i8*, ...) @dev_info(i32* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %112 = call i32 @yenta_config_init(%struct.yenta_socket* %111)
  %113 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %114 = load i32, i32* @CB_SOCKET_MASK, align 4
  %115 = call i32 @cb_writel(%struct.yenta_socket* %113, i32 %114, i32 0)
  %116 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %117 = call i32 @yenta_allocate_resources(%struct.yenta_socket* %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %122 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %124 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CARDBUS_TYPE_DEFAULT, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %154

128:                                              ; preds = %101
  %129 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %130 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cardbus_type, align 8
  %133 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %132)
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %128
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cardbus_type, align 8
  %137 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %138 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %139
  %141 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %142 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %141, i32 0, i32 4
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %142, align 8
  %143 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %144 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %143, i32 0, i32 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32 (%struct.yenta_socket*)*, i32 (%struct.yenta_socket*)** %146, align 8
  %148 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %149 = call i32 %147(%struct.yenta_socket* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %135
  br label %245

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153, %128, %101
  %155 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %156 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %161 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @yenta_interrupt, align 4
  %164 = load i32, i32* @IRQF_SHARED, align 4
  %165 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %166 = call i64 @request_irq(i64 %162, i32 %163, i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.yenta_socket* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %159, %154
  %169 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %170 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  %171 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %172 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %171, i32 0, i32 1
  %173 = load i32, i32* @yenta_interrupt_wrapper, align 4
  %174 = call i32 @timer_setup(i32* %172, i32 %173, i32 0)
  %175 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %176 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %175, i32 0, i32 1
  %177 = load i64, i64* @jiffies, align 8
  %178 = load i64, i64* @HZ, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @mod_timer(i32* %176, i64 %179)
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = call i32 (i32*, i8*, ...) @dev_info(i32* %182, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %184 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %185 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %184, i32 0, i32 0
  %186 = call i32 (i32*, i8*, ...) @dev_info(i32* %185, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %194

187:                                              ; preds = %159
  %188 = load i32, i32* @SS_CAP_CARDBUS, align 4
  %189 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %190 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %187, %168
  %195 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %196 = call i32 @yenta_interrogate(%struct.yenta_socket* %195)
  %197 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %198 = load i32, i32* @isa_interrupts, align 4
  %199 = call i32 @yenta_get_socket_capabilities(%struct.yenta_socket* %197, i32 %198)
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %200, i32 0, i32 0
  %202 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %203 = load i32, i32* @CB_SOCKET_STATE, align 4
  %204 = call i32 @cb_readl(%struct.yenta_socket* %202, i32 %203)
  %205 = call i32 (i32*, i8*, ...) @dev_info(i32* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  %206 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %207 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @yenta_fixup_parent_bridge(i32 %208)
  %210 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %211 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %210, i32 0, i32 3
  %212 = call i32 @pcmcia_register_socket(%struct.TYPE_7__* %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %194
  br label %229

216:                                              ; preds = %194
  %217 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %218 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %217, i32 0, i32 0
  %219 = call i32 @device_create_file(i32* %218, i32* @dev_attr_yenta_registers)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %225

223:                                              ; preds = %216
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %3, align 4
  br label %264

225:                                              ; preds = %222
  %226 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %227 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %226, i32 0, i32 3
  %228 = call i32 @pcmcia_unregister_socket(%struct.TYPE_7__* %227)
  br label %229

229:                                              ; preds = %225, %215
  %230 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %231 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %236 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %239 = call i32 @free_irq(i64 %237, %struct.yenta_socket* %238)
  br label %244

240:                                              ; preds = %229
  %241 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %242 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %241, i32 0, i32 1
  %243 = call i32 @del_timer_sync(i32* %242)
  br label %244

244:                                              ; preds = %240, %234
  br label %245

245:                                              ; preds = %244, %152
  %246 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %247 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @iounmap(i32 %248)
  %250 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %251 = call i32 @yenta_free_resources(%struct.yenta_socket* %250)
  br label %252

252:                                              ; preds = %245, %98, %82
  %253 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %254 = call i32 @pci_release_regions(%struct.pci_dev* %253)
  br label %255

255:                                              ; preds = %252, %77
  %256 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %257 = call i32 @pci_disable_device(%struct.pci_dev* %256)
  br label %258

258:                                              ; preds = %255, %69
  %259 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %260 = call i32 @pci_set_drvdata(%struct.pci_dev* %259, %struct.yenta_socket* null)
  %261 = load %struct.yenta_socket*, %struct.yenta_socket** %6, align 8
  %262 = call i32 @kfree(%struct.yenta_socket* %261)
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %258, %223, %23, %12
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.yenta_socket* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.yenta_socket*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @yenta_config_init(%struct.yenta_socket*) #1

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @yenta_allocate_resources(%struct.yenta_socket*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @request_irq(i64, i32, i32, i8*, %struct.yenta_socket*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @yenta_interrogate(%struct.yenta_socket*) #1

declare dso_local i32 @yenta_get_socket_capabilities(%struct.yenta_socket*, i32) #1

declare dso_local i32 @cb_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @yenta_fixup_parent_bridge(i32) #1

declare dso_local i32 @pcmcia_register_socket(%struct.TYPE_7__*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @pcmcia_unregister_socket(%struct.TYPE_7__*) #1

declare dso_local i32 @free_irq(i64, %struct.yenta_socket*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @yenta_free_resources(%struct.yenta_socket*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.yenta_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
