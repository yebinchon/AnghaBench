; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas-detect.h_uas_use_uas_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas-detect.h_uas_use_uas_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_host_endpoint = type { i32 }
%struct.usb_device = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.usb_hcd = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.TYPE_11__ = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@US_FL_IGNORE_UAS = common dso_local global i64 0, align 8
@US_FL_MAX_SECTORS_240 = common dso_local global i64 0, align 8
@US_FL_NO_ATA_1X = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"UAS is blacklisted for this device, using usb-storage instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"The driver for the USB controller %s does not support scatter-gather which is\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"required by the UAS driver. Please try an other USB controller if you wish to use UAS.\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"USB controller %s does not support streams, which are required by the UAS driver.\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Please try an other USB controller if you wish to use UAS.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*, i64*)* @uas_use_uas_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_use_uas_driver(%struct.usb_interface* %0, %struct.usb_device_id* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device_id*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [4 x %struct.usb_host_endpoint*], align 16
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.usb_host_interface*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = bitcast [4 x %struct.usb_host_endpoint*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %9, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = call %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_12__* %19)
  store %struct.usb_hcd* %20, %struct.usb_hcd** %10, align 8
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %25 = call %struct.usb_host_interface* @uas_find_uas_alt_setting(%struct.usb_interface* %24)
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %12, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %27 = icmp ne %struct.usb_host_interface* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %163

29:                                               ; preds = %3
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  %31 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %8, i64 0, i64 0
  %32 = call i32 @uas_find_endpoints(%struct.usb_host_interface* %30, %struct.usb_host_endpoint** %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %163

36:                                               ; preds = %29
  %37 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = icmp eq i32 %41, 5964
  br i1 %42, label %43, label %93

43:                                               ; preds = %36
  %44 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = icmp eq i32 %48, 20742
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = icmp eq i32 %55, 21930
  br i1 %56, label %57, label %93

57:                                               ; preds = %50, %43
  %58 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %92

66:                                               ; preds = %57
  %67 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_SPEED_SUPER, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i64, i64* @US_FL_IGNORE_UAS, align 8
  %74 = load i64, i64* %11, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %11, align 8
  br label %91

76:                                               ; preds = %66
  %77 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %8, i64 0, i64 1
  %78 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %77, align 8
  %79 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %78, i32 0, i32 0
  %80 = call i32 @usb_ss_max_streams(i32* %79)
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* @US_FL_IGNORE_UAS, align 8
  %84 = load i64, i64* %11, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %11, align 8
  br label %90

86:                                               ; preds = %76
  %87 = load i64, i64* @US_FL_MAX_SECTORS_240, align 8
  %88 = load i64, i64* %11, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %50, %36
  %94 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = icmp eq i32 %98, 3010
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i64, i64* @US_FL_NO_ATA_1X, align 8
  %102 = load i64, i64* %11, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %100, %93
  %105 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %106 = call i32 @usb_stor_adjust_quirks(%struct.usb_device* %105, i64* %11)
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @US_FL_IGNORE_UAS, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 1
  %114 = call i32 (i32*, i8*, ...) @dev_warn(i32* %113, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

115:                                              ; preds = %104
  %116 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 2
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %124 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %123, i32 0, i32 1
  %125 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %126 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_warn(i32* %124, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 1
  %133 = call i32 (i32*, i8*, ...) @dev_warn(i32* %132, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

134:                                              ; preds = %115
  %135 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %136 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @USB_SPEED_SUPER, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %142 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %140
  %146 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %147 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %146, i32 0, i32 1
  %148 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %149 = call %struct.TYPE_11__* @hcd_to_bus(%struct.usb_hcd* %148)
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32*, i8*, ...) @dev_warn(i32* %147, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %154 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %153, i32 0, i32 1
  %155 = call i32 (i32*, i8*, ...) @dev_warn(i32* %154, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

156:                                              ; preds = %140, %134
  %157 = load i64*, i64** %7, align 8
  %158 = icmp ne i64* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i64, i64* %11, align 8
  %161 = load i64*, i64** %7, align 8
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %156
  store i32 1, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %145, %122, %111, %35, %28
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #2

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_12__*) #2

declare dso_local %struct.usb_host_interface* @uas_find_uas_alt_setting(%struct.usb_interface*) #2

declare dso_local i32 @uas_find_endpoints(%struct.usb_host_interface*, %struct.usb_host_endpoint**) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @usb_ss_max_streams(i32*) #2

declare dso_local i32 @usb_stor_adjust_quirks(%struct.usb_device*, i64*) #2

declare dso_local i32 @dev_warn(i32*, i8*, ...) #2

declare dso_local %struct.TYPE_11__* @hcd_to_bus(%struct.usb_hcd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
