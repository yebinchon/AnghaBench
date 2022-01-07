; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.octeon_hcd = type { i32, i32, i32, i32*, i32, i32 }
%struct.usb_hcd = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%union.cvmx_iob_n2c_l2c_pri_cnt = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Error: empty of_node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"refclk-frequency\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No USBN \22clock-frequency\22\0A\00", align 1
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Illegal USBN \22clock-frequency\22 %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"cavium,refclk-type\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"refclk-type\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"crystal\00", align 1
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"found no memory resource\0A\00", align 1
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@CVMX_IOB_N2C_L2C_PRI_CNT = common dso_local global i32 0, align 4
@octeon_hc_driver = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for HCD\0A\00", align 1
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_NO_DMA = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"USB initialization failed with %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"USB add HCD failed with %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Registered HCD for port %d on irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.octeon_hcd*, align 8
  %12 = alloca %struct.usb_hcd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.cvmx_iob_n2c_l2c_pri_cnt, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @platform_get_irq(%struct.platform_device* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %10, align 8
  store i32 48000000, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.device*, %struct.device** %10, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %10, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %250

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  store %struct.device_node* %37, %struct.device_node** %8, align 8
  %38 = load %struct.device_node*, %struct.device_node** %8, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %42, %32
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %10, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %250

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  switch i32 %54, label %61 [
    i32 12000000, label %55
    i32 24000000, label %57
    i32 48000000, label %59
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ, align 4
  store i32 %56, i32* %5, align 4
  br label %67

57:                                               ; preds = %53
  %58 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ, align 4
  store i32 %58, i32* %5, align 4
  br label %67

59:                                               ; preds = %53
  %60 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ, align 4
  store i32 %60, i32* %5, align 4
  br label %67

61:                                               ; preds = %53
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %250

67:                                               ; preds = %59, %57, %55
  %68 = load %struct.device_node*, %struct.device_node** %8, align 8
  %69 = call i32 @of_property_read_string(%struct.device_node* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %15)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.device_node*, %struct.device_node** %8, align 8
  %74 = call i32 @of_property_read_string(%struct.device_node* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %15)
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %15, align 8
  %80 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %14, align 4
  br label %83

83:                                               ; preds = %82, %78, %75
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load i32, i32* @IORESOURCE_MEM, align 4
  %97 = call %struct.resource* @platform_get_resource(%struct.platform_device* %95, i32 %96, i32 0)
  store %struct.resource* %97, %struct.resource** %7, align 8
  %98 = load %struct.resource*, %struct.resource** %7, align 8
  %99 = icmp ne %struct.resource* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %94
  %101 = load %struct.device*, %struct.device** %10, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i32, i32* @ENXIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %250

105:                                              ; preds = %94
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 44
  %110 = and i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 81, i32 56
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @irq_create_mapping(i32* null, i32 %118)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %113, %105
  %121 = load %struct.device*, %struct.device** %10, align 8
  %122 = call i32 @DMA_BIT_MASK(i32 64)
  %123 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %121, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %2, align 4
  br label %250

128:                                              ; preds = %120
  %129 = load i32, i32* @OCTEON_CN52XX, align 4
  %130 = call i64 @OCTEON_IS_MODEL(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @OCTEON_CN56XX, align 4
  %134 = call i64 @OCTEON_IS_MODEL(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %132, %128
  %137 = bitcast %union.cvmx_iob_n2c_l2c_pri_cnt* %18 to i64*
  store i64 0, i64* %137, align 8
  %138 = bitcast %union.cvmx_iob_n2c_l2c_pri_cnt* %18 to %struct.TYPE_5__*
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = bitcast %union.cvmx_iob_n2c_l2c_pri_cnt* %18 to %struct.TYPE_5__*
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 400, i32* %141, align 4
  %142 = load i32, i32* @CVMX_IOB_N2C_L2C_PRI_CNT, align 4
  %143 = bitcast %union.cvmx_iob_n2c_l2c_pri_cnt* %18 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @cvmx_write_csr(i32 %142, i64 %144)
  br label %146

146:                                              ; preds = %136, %132
  %147 = load %struct.device*, %struct.device** %10, align 8
  %148 = load %struct.device*, %struct.device** %10, align 8
  %149 = call i32 @dev_name(%struct.device* %148)
  %150 = call %struct.usb_hcd* @usb_create_hcd(i32* @octeon_hc_driver, %struct.device* %147, i32 %149)
  store %struct.usb_hcd* %150, %struct.usb_hcd** %12, align 8
  %151 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %152 = icmp ne %struct.usb_hcd* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %146
  %154 = load %struct.device*, %struct.device** %10, align 8
  %155 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %250

156:                                              ; preds = %146
  %157 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %158 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %160 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.octeon_hcd*
  store %struct.octeon_hcd* %162, %struct.octeon_hcd** %11, align 8
  %163 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %164 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %163, i32 0, i32 5
  %165 = call i32 @spin_lock_init(i32* %164)
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %168 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %171 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %173 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %172, i32 0, i32 4
  %174 = call i32 @INIT_LIST_HEAD(i32* %173)
  store i32 0, i32* %16, align 4
  br label %175

175:                                              ; preds = %190, %156
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %178 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @ARRAY_SIZE(i32* %179)
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %175
  %183 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %184 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @INIT_LIST_HEAD(i32* %188)
  br label %190

190:                                              ; preds = %182
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %175

193:                                              ; preds = %175
  %194 = load i32, i32* @OCTEON_CN31XX, align 4
  %195 = call i64 @OCTEON_IS_MODEL(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %193
  %198 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %199 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %200 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %204 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %203, i32 0, i32 2
  store i32 1, i32* %204, align 8
  br label %216

205:                                              ; preds = %193
  %206 = load i32, i32* @OCTEON_CN5XXX, align 4
  %207 = call i64 @OCTEON_IS_MODEL(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %211 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %210, i32 0, i32 2
  store i32 247, i32* %211, align 8
  br label %215

212:                                              ; preds = %205
  %213 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %214 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %213, i32 0, i32 2
  store i32 255, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %209
  br label %216

216:                                              ; preds = %215, %197
  %217 = load %struct.device*, %struct.device** %10, align 8
  %218 = load %struct.octeon_hcd*, %struct.octeon_hcd** %11, align 8
  %219 = call i32 @cvmx_usb_initialize(%struct.device* %217, %struct.octeon_hcd* %218)
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.device*, %struct.device** %10, align 8
  %224 = load i32, i32* %4, align 4
  %225 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %224)
  %226 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %227 = call i32 @usb_put_hcd(%struct.usb_hcd* %226)
  store i32 -1, i32* %2, align 4
  br label %250

228:                                              ; preds = %216
  %229 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @usb_add_hcd(%struct.usb_hcd* %229, i32 %230, i32 0)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load %struct.device*, %struct.device** %10, align 8
  %236 = load i32, i32* %4, align 4
  %237 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %236)
  %238 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %239 = call i32 @usb_put_hcd(%struct.usb_hcd* %238)
  store i32 -1, i32* %2, align 4
  br label %250

240:                                              ; preds = %228
  %241 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %242 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @device_wakeup_enable(i32 %244)
  %246 = load %struct.device*, %struct.device** %10, align 8
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @dev_info(%struct.device* %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %247, i32 %248)
  store i32 0, i32* %2, align 4
  br label %250

250:                                              ; preds = %240, %234, %222, %153, %126, %100, %61, %48, %27
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cvmx_usb_initialize(%struct.device*, %struct.octeon_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
