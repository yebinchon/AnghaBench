; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3421_hcd = type { i64, i8*, i8*, i32, %struct.max3421_hcd* }
%struct.spi_device = type { i32, %struct.device }
%struct.device = type { %struct.max3421_hcd_platform_data*, i64 }
%struct.max3421_hcd_platform_data = type { i32, i32 }
%struct.usb_hcd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to setup SPI bus\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to get SPI IRQ\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"driver configuration data is not provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"vbus active level value %d is out of range (0/1)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX3421_GPOUT_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"vbus gpout value %d is out of range (1..8)\0A\00", align 1
@max3421_hcd_desc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to create HCD structure\0A\00", align 1
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@max3421_hcd_list = common dso_local global %struct.max3421_hcd* null, align 8
@max3421_spi_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"max3421_spi_thread\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"failed to create SPI thread (out of memory)\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"failed to add HCD\0A\00", align 1
@max3421_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"max3421\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max3421_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.max3421_hcd_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  store %struct.max3421_hcd_platform_data* null, %struct.max3421_hcd_platform_data** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call i64 @spi_setup(%struct.spi_device* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %246

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %246

32:                                               ; preds = %22
  %33 = load i32, i32* @CONFIG_OF, align 4
  %34 = call i64 @IS_ENABLED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.max3421_hcd_platform_data* @devm_kzalloc(%struct.device* %43, i32 8, i32 %44)
  store %struct.max3421_hcd_platform_data* %45, %struct.max3421_hcd_platform_data** %7, align 8
  %46 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %47 = icmp ne %struct.max3421_hcd_platform_data* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %200

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %54 = call i32 @max3421_of_vbus_en_pin(%struct.device* %52, %struct.max3421_hcd_platform_data* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %200

58:                                               ; preds = %51
  %59 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 0
  store %struct.max3421_hcd_platform_data* %59, %struct.max3421_hcd_platform_data** %62, align 8
  br label %63

63:                                               ; preds = %58, %36, %32
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %66, align 8
  store %struct.max3421_hcd_platform_data* %67, %struct.max3421_hcd_platform_data** %7, align 8
  %68 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %69 = icmp ne %struct.max3421_hcd_platform_data* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 1
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %200

76:                                               ; preds = %63
  %77 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %78 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 1
  %84 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %85 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %200

90:                                               ; preds = %76
  %91 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %92 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %97 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MAX3421_GPOUT_COUNT, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95, %90
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 1
  %104 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %105 = getelementptr inbounds %struct.max3421_hcd_platform_data, %struct.max3421_hcd_platform_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %200

110:                                              ; preds = %95
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 1
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 1
  %115 = call i32 @dev_name(%struct.device* %114)
  %116 = call %struct.usb_hcd* @usb_create_hcd(i32* @max3421_hcd_desc, %struct.device* %112, i32 %115)
  store %struct.usb_hcd* %116, %struct.usb_hcd** %6, align 8
  %117 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %118 = icmp ne %struct.usb_hcd* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %110
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 1
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %200

123:                                              ; preds = %110
  %124 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %125 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %126 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %125, i32 0, i32 0
  %127 = call i32 @set_bit(i32 %124, i32* %126)
  %128 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %129 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %128)
  store %struct.max3421_hcd* %129, %struct.max3421_hcd** %5, align 8
  %130 = load %struct.max3421_hcd*, %struct.max3421_hcd** @max3421_hcd_list, align 8
  %131 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %132 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %131, i32 0, i32 4
  store %struct.max3421_hcd* %130, %struct.max3421_hcd** %132, align 8
  %133 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  store %struct.max3421_hcd* %133, %struct.max3421_hcd** @max3421_hcd_list, align 8
  %134 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %135 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %134, i32 0, i32 3
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i8* @kmalloc(i32 1, i32 %137)
  %139 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %140 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %142 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %123
  br label %200

146:                                              ; preds = %123
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kmalloc(i32 1, i32 %147)
  %149 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %150 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %152 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %200

156:                                              ; preds = %146
  %157 = load i32, i32* @max3421_spi_thread, align 4
  %158 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %159 = call i64 @kthread_run(i32 %157, %struct.usb_hcd* %158, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %160 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %161 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %163 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  %167 = call i64 @ERR_PTR(i32 %166)
  %168 = icmp eq i64 %164, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %156
  %170 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %171 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %170, i32 0, i32 1
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %200

173:                                              ; preds = %156
  %174 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %175 = call i32 @usb_add_hcd(%struct.usb_hcd* %174, i32 0, i32 0)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %180 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %179, i32 0, i32 1
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %200

182:                                              ; preds = %173
  %183 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %184 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @max3421_irq_handler, align 4
  %187 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %188 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %189 = call i32 @request_irq(i32 %185, i32 %186, i32 %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.usb_hcd* %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %182
  %193 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %194 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %193, i32 0, i32 1
  %195 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %196 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %197)
  br label %200

199:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %246

200:                                              ; preds = %192, %178, %169, %155, %145, %119, %101, %81, %70, %57, %48
  %201 = load i32, i32* @CONFIG_OF, align 4
  %202 = call i64 @IS_ENABLED(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = getelementptr inbounds %struct.device, %struct.device* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %211 = icmp ne %struct.max3421_hcd_platform_data* %210, null
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %214 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %213, i32 0, i32 1
  %215 = load %struct.max3421_hcd_platform_data*, %struct.max3421_hcd_platform_data** %7, align 8
  %216 = call i32 @devm_kfree(%struct.device* %214, %struct.max3421_hcd_platform_data* %215)
  %217 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %218 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.device, %struct.device* %218, i32 0, i32 0
  store %struct.max3421_hcd_platform_data* null, %struct.max3421_hcd_platform_data** %219, align 8
  br label %220

220:                                              ; preds = %212, %209, %204, %200
  %221 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %222 = icmp ne %struct.usb_hcd* %221, null
  br i1 %222, label %223, label %244

223:                                              ; preds = %220
  %224 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %225 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @kfree(i8* %226)
  %228 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %229 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @kfree(i8* %230)
  %232 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %233 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %223
  %237 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %238 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @kthread_stop(i64 %239)
  br label %241

241:                                              ; preds = %236, %223
  %242 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %243 = call i32 @usb_put_hcd(%struct.usb_hcd* %242)
  br label %244

244:                                              ; preds = %241, %220
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %244, %199, %27, %16
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i64 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.max3421_hcd_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @max3421_of_vbus_en_pin(%struct.device*, %struct.max3421_hcd_platform_data*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @kthread_run(i32, %struct.usb_hcd*, i8*) #1

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.usb_hcd*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.max3421_hcd_platform_data*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
