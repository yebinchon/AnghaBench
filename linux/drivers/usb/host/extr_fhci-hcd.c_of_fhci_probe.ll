; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_of_fhci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-hcd.c_of_fhci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_12__*, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.device* }
%struct.fhci_hcd = type { i32*, i32*, i64, i64, %struct.TYPE_11__**, %struct.TYPE_11__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@fhci_driver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"could not create hcd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"hub-power-budget\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"could not get regs\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"could not ioremap regs\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"can't get pram offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FHCI_PRAM_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to allocate usb pram\0A\00", align 1
@QE_ASSIGN_PAGE_TO_DEVICE = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_USB = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_UNSPECIFIED = common dso_local global i32 0, align 4
@NUM_GPIOS = common dso_local global i32 0, align 4
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIO_SPEED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"incorrect GPIO%d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"assuming board doesn't have %s gpio\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to request gpio %d\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"failed to set gpio %d as an output\0A\00", align 1
@NUM_PINS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"can't get pin %d: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to request qe timer: %i\00", align 1
@fhci_frame_limit_timer_irq = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"qe timer (usb)\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"failed to request timer irq\00", align 1
@NO_IRQ = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"could not get usb irq\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"fsl,fullspeed-clock\00", align 1
@QE_CLK_DUMMY = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [23 x i8] c"wrong fullspeed-clock\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"fsl,lowspeed-clock\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"wrong lowspeed-clock\0A\00", align 1
@QE_CLK_NONE = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"no clocks specified\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"at 0x%p, irq %d\0A\00", align 1
@FHCI_PORT_POWER_OFF = common dso_local global i32 0, align 4
@FHCI_PORT_FULL = common dso_local global i32 0, align 4
@USB_CLOCK = common dso_local global i32 0, align 4
@FHCI_PORT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @of_fhci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_fhci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.fhci_hcd*, align 8
  %8 = alloca %struct.resource, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %5, align 8
  %24 = call i64 (...) @usb_disabled()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %490

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call i8* @of_get_property(%struct.device_node* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %490

41:                                               ; preds = %34, %29
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_name(%struct.device* %43)
  %45 = call %struct.usb_hcd* @usb_create_hcd(i32* @fhci_driver, %struct.device* %42, i32 %44)
  store %struct.usb_hcd* %45, %struct.usb_hcd** %6, align 8
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %47 = icmp ne %struct.usb_hcd* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %490

53:                                               ; preds = %41
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %55 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %54)
  store %struct.fhci_hcd* %55, %struct.fhci_hcd** %7, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %62 = call i32 @dev_set_drvdata(%struct.device* %60, %struct.usb_hcd* %61)
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i8* @of_get_property(%struct.device_node* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %53
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %76 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %68, %53
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i32 @of_address_to_resource(%struct.device_node* %78, i32 0, %struct.resource* %8)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %486

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @resource_size(%struct.resource* %8)
  %89 = call %struct.TYPE_12__* @ioremap(i32 %87, i32 %88)
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %91 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %90, i32 0, i32 0
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %91, align 8
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = icmp ne %struct.TYPE_12__* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %14, align 4
  br label %486

101:                                              ; preds = %85
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %103 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %106 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %105, i32 0, i32 6
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %106, align 8
  %107 = load %struct.device_node*, %struct.device_node** %5, align 8
  %108 = call i8* @of_get_property(%struct.device_node* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %13)
  %109 = bitcast i8* %108 to i32*
  store i32* %109, i32** %12, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ult i64 %114, 16
  br i1 %115, label %116, label %121

116:                                              ; preds = %112, %101
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %481

121:                                              ; preds = %112
  %122 = load i32, i32* @FHCI_PRAM_SIZE, align 4
  %123 = call i64 @cpm_muram_alloc(i32 %122, i32 64)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i64 @IS_ERR_VALUE(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  br label %481

132:                                              ; preds = %121
  %133 = load i32, i32* @QE_ASSIGN_PAGE_TO_DEVICE, align 4
  %134 = load i32, i32* @QE_CR_SUBBLOCK_USB, align 4
  %135 = load i32, i32* @QE_CR_PROTOCOL_UNSPECIFIED, align 4
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @qe_issue_cmd(i32 %133, i32 %134, i32 %135, i64 %136)
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @cpm_muram_addr(i64 %138)
  %140 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %141 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 8
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %214, %132
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @NUM_GPIOS, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %217

146:                                              ; preds = %142
  %147 = load %struct.device_node*, %struct.device_node** %5, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @of_get_gpio_flags(%struct.device_node* %147, i32 %148, i32* %18)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %152 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %159 = and i32 %157, %158
  %160 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %161 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load i32, i32* %17, align 4
  %167 = call i64 @gpio_is_valid(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %146
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @GPIO_SPEED, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %17, align 4
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %175, i32 %176)
  br label %453

178:                                              ; preds = %169
  %179 = load %struct.device*, %struct.device** %4, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* @GPIO_SPEED, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)
  %185 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %184)
  br label %214

186:                                              ; preds = %146
  %187 = load i32, i32* %17, align 4
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = call i32 @dev_name(%struct.device* %188)
  %190 = call i32 @gpio_request(i32 %187, i32 %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.device*, %struct.device** %4, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %195)
  br label %453

197:                                              ; preds = %186
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* @GPIO_SPEED, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @gpio_direction_output(i32 %202, i32 0)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = load i32, i32* %15, align 4
  %209 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %207, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %453

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %197
  br label %214

214:                                              ; preds = %213, %178
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %142

217:                                              ; preds = %142
  store i32 0, i32* %16, align 4
  br label %218

218:                                              ; preds = %255, %217
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @NUM_PINS, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %218
  %223 = load %struct.device_node*, %struct.device_node** %5, align 8
  %224 = load i32, i32* %16, align 4
  %225 = call %struct.TYPE_11__* @qe_pin_request(%struct.device_node* %223, i32 %224)
  %226 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %227 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %226, i32 0, i32 4
  %228 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %228, i64 %230
  store %struct.TYPE_11__* %225, %struct.TYPE_11__** %231, align 8
  %232 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %233 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %232, i32 0, i32 4
  %234 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %233, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %234, i64 %236
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = call i64 @IS_ERR(%struct.TYPE_11__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %222
  %242 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %243 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %242, i32 0, i32 4
  %244 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %244, i64 %246
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = call i32 @PTR_ERR(%struct.TYPE_11__* %248)
  store i32 %249, i32* %14, align 4
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %14, align 4
  %253 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %251, i32 %252)
  br label %438

254:                                              ; preds = %222
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %16, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %16, align 4
  br label %218

258:                                              ; preds = %218
  %259 = call %struct.TYPE_11__* (...) @gtm_get_timer16()
  %260 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %261 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %260, i32 0, i32 5
  store %struct.TYPE_11__* %259, %struct.TYPE_11__** %261, align 8
  %262 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %263 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %262, i32 0, i32 5
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = call i64 @IS_ERR(%struct.TYPE_11__* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %258
  %268 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %269 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %268, i32 0, i32 5
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = call i32 @PTR_ERR(%struct.TYPE_11__* %270)
  store i32 %271, i32* %14, align 4
  %272 = load %struct.device*, %struct.device** %4, align 8
  %273 = load i32, i32* %14, align 4
  %274 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %272, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %273)
  br label %437

275:                                              ; preds = %258
  %276 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %277 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %276, i32 0, i32 5
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @fhci_frame_limit_timer_irq, align 4
  %282 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %283 = call i32 @request_irq(i32 %280, i32 %281, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.usb_hcd* %282)
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %275
  %287 = load %struct.device*, %struct.device** %4, align 8
  %288 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %287, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %432

289:                                              ; preds = %275
  %290 = load %struct.device_node*, %struct.device_node** %5, align 8
  %291 = call i32 @irq_of_parse_and_map(%struct.device_node* %290, i32 0)
  store i32 %291, i32* %10, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* @NO_IRQ, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load %struct.device*, %struct.device** %4, align 8
  %297 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %296, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %14, align 4
  br label %424

300:                                              ; preds = %289
  %301 = load %struct.device_node*, %struct.device_node** %5, align 8
  %302 = call i8* @of_get_property(%struct.device_node* %301, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32* null)
  store i8* %302, i8** %11, align 8
  %303 = load i8*, i8** %11, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %322

305:                                              ; preds = %300
  %306 = load i8*, i8** %11, align 8
  %307 = call i8* @qe_clock_source(i8* %306)
  %308 = ptrtoint i8* %307 to i64
  %309 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %310 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %309, i32 0, i32 2
  store i64 %308, i64* %310, align 8
  %311 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %312 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @QE_CLK_DUMMY, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %305
  %317 = load %struct.device*, %struct.device** %4, align 8
  %318 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %317, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %14, align 4
  br label %421

321:                                              ; preds = %305
  br label %322

322:                                              ; preds = %321, %300
  %323 = load %struct.device_node*, %struct.device_node** %5, align 8
  %324 = call i8* @of_get_property(%struct.device_node* %323, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32* null)
  store i8* %324, i8** %11, align 8
  %325 = load i8*, i8** %11, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %344

327:                                              ; preds = %322
  %328 = load i8*, i8** %11, align 8
  %329 = call i8* @qe_clock_source(i8* %328)
  %330 = ptrtoint i8* %329 to i64
  %331 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %332 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %331, i32 0, i32 3
  store i64 %330, i64* %332, align 8
  %333 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %334 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @QE_CLK_DUMMY, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %327
  %339 = load %struct.device*, %struct.device** %4, align 8
  %340 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %339, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %341 = load i32, i32* @EINVAL, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %14, align 4
  br label %421

343:                                              ; preds = %327
  br label %344

344:                                              ; preds = %343, %322
  %345 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %346 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @QE_CLK_NONE, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %344
  %351 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %352 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @QE_CLK_NONE, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %361

356:                                              ; preds = %350
  %357 = load %struct.device*, %struct.device** %4, align 8
  %358 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %357, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %359 = load i32, i32* @EINVAL, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %14, align 4
  br label %421

361:                                              ; preds = %350, %344
  %362 = load %struct.device*, %struct.device** %4, align 8
  %363 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %364 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %363, i32 0, i32 0
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %362, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), %struct.TYPE_12__* %365, i32 %366)
  %368 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %369 = load i32, i32* @FHCI_PORT_POWER_OFF, align 4
  %370 = call i32 @fhci_config_transceiver(%struct.fhci_hcd* %368, i32 %369)
  %371 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %372 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @QE_CLK_NONE, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %361
  %377 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %378 = load i32, i32* @FHCI_PORT_FULL, align 4
  %379 = call i32 @fhci_config_transceiver(%struct.fhci_hcd* %377, i32 %378)
  %380 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %381 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = load i32, i32* @USB_CLOCK, align 4
  %384 = call i32 @qe_usb_clock_set(i64 %382, i32 %383)
  br label %395

385:                                              ; preds = %361
  %386 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %387 = load i32, i32* @FHCI_PORT_LOW, align 4
  %388 = call i32 @fhci_config_transceiver(%struct.fhci_hcd* %386, i32 %387)
  %389 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %390 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = load i32, i32* @USB_CLOCK, align 4
  %393 = ashr i32 %392, 3
  %394 = call i32 @qe_usb_clock_set(i64 %391, i32 %393)
  br label %395

395:                                              ; preds = %385, %376
  %396 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %397 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %396, i32 0, i32 6
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 1
  %400 = call i32 @out_be16(i32* %399, i32 65535)
  %401 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %402 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %401, i32 0, i32 6
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 0
  %405 = call i32 @out_be16(i32* %404, i32 0)
  %406 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %407 = load i32, i32* %10, align 4
  %408 = call i32 @usb_add_hcd(%struct.usb_hcd* %406, i32 %407, i32 0)
  store i32 %408, i32* %14, align 4
  %409 = load i32, i32* %14, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %395
  br label %420

412:                                              ; preds = %395
  %413 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %414 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 0
  %416 = load %struct.device*, %struct.device** %415, align 8
  %417 = call i32 @device_wakeup_enable(%struct.device* %416)
  %418 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %419 = call i32 @fhci_dfs_create(%struct.fhci_hcd* %418)
  store i32 0, i32* %2, align 4
  br label %490

420:                                              ; preds = %411
  br label %421

421:                                              ; preds = %420, %356, %338, %316
  %422 = load i32, i32* %10, align 4
  %423 = call i32 @irq_dispose_mapping(i32 %422)
  br label %424

424:                                              ; preds = %421, %295
  %425 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %426 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %425, i32 0, i32 5
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %431 = call i32 @free_irq(i32 %429, %struct.usb_hcd* %430)
  br label %432

432:                                              ; preds = %424, %286
  %433 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %434 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %433, i32 0, i32 5
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %434, align 8
  %436 = call i32 @gtm_put_timer16(%struct.TYPE_11__* %435)
  br label %437

437:                                              ; preds = %432, %267
  br label %438

438:                                              ; preds = %437, %241
  br label %439

439:                                              ; preds = %443, %438
  %440 = load i32, i32* %16, align 4
  %441 = add nsw i32 %440, -1
  store i32 %441, i32* %16, align 4
  %442 = icmp sge i32 %441, 0
  br i1 %442, label %443, label %452

443:                                              ; preds = %439
  %444 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %445 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %444, i32 0, i32 4
  %446 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %445, align 8
  %447 = load i32, i32* %16, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %446, i64 %448
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %449, align 8
  %451 = call i32 @qe_pin_free(%struct.TYPE_11__* %450)
  br label %439

452:                                              ; preds = %439
  br label %453

453:                                              ; preds = %452, %206, %193, %173
  br label %454

454:                                              ; preds = %477, %453
  %455 = load i32, i32* %15, align 4
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %15, align 4
  %457 = icmp sge i32 %456, 0
  br i1 %457, label %458, label %478

458:                                              ; preds = %454
  %459 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %460 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %15, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = call i64 @gpio_is_valid(i32 %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %477

468:                                              ; preds = %458
  %469 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %470 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %469, i32 0, i32 0
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* %15, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @gpio_free(i32 %475)
  br label %477

477:                                              ; preds = %468, %458
  br label %454

478:                                              ; preds = %454
  %479 = load i64, i64* %9, align 8
  %480 = call i32 @cpm_muram_free(i64 %479)
  br label %481

481:                                              ; preds = %478, %127, %116
  %482 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %483 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %482, i32 0, i32 0
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %483, align 8
  %485 = call i32 @iounmap(%struct.TYPE_12__* %484)
  br label %486

486:                                              ; preds = %481, %96, %82
  %487 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %488 = call i32 @usb_put_hcd(%struct.usb_hcd* %487)
  %489 = load i32, i32* %14, align 4
  store i32 %489, i32* %2, align 4
  br label %490

490:                                              ; preds = %486, %412, %48, %38, %26
  %491 = load i32, i32* %2, align 4
  ret i32 %491
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.usb_hcd*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local %struct.TYPE_12__* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @cpm_muram_alloc(i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i64) #1

declare dso_local i32 @cpm_muram_addr(i64) #1

declare dso_local i32 @of_get_gpio_flags(%struct.device_node*, i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local %struct.TYPE_11__* @qe_pin_request(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @gtm_get_timer16(...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.usb_hcd*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i8* @qe_clock_source(i8*) #1

declare dso_local i32 @fhci_config_transceiver(%struct.fhci_hcd*, i32) #1

declare dso_local i32 @qe_usb_clock_set(i64, i32) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.device*) #1

declare dso_local i32 @fhci_dfs_create(%struct.fhci_hcd*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @free_irq(i32, %struct.usb_hcd*) #1

declare dso_local i32 @gtm_put_timer16(%struct.TYPE_11__*) #1

declare dso_local i32 @qe_pin_free(%struct.TYPE_11__*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @cpm_muram_free(i64) #1

declare dso_local i32 @iounmap(%struct.TYPE_12__*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
