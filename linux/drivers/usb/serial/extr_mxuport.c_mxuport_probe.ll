; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.firmware = type { i32* }

@RQ_VENDOR_QUERY_FW_CONFIG = common dso_local global i32 0, align 4
@RQ_VENDOR_RESET_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Device firmware version v%x.%x.%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"moxa/moxa-%04x.fw\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Firmware %s not found\0A\00", align 1
@VER_ADDR_1 = common dso_local global i64 0, align 8
@VER_ADDR_2 = common dso_local global i64 0, align 8
@VER_ADDR_3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Available firmware version v%x.%x.%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Using device firmware version v%x.%x.%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @mxuport_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %6, align 4
  store %struct.firmware* null, %struct.firmware** %7, align 8
  %19 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %20 = load i32, i32* @RQ_VENDOR_QUERY_FW_CONFIG, align 4
  %21 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %19, i32 %20, i32 0, i32 0)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %26 = load i32, i32* @RQ_VENDOR_RESET_DEVICE, align 4
  %27 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %25, i32 %26, i32 0, i32 0)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  br label %160

29:                                               ; preds = %2
  %30 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %31 = call i32 @mxuport_get_fw_version(%struct.usb_serial* %30, i32* %8)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %160

36:                                               ; preds = %29
  %37 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %38 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 16711680
  %43 = ashr i32 %42, 16
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 65280
  %46 = ashr i32 %45, 8
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %48)
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @snprintf(i8* %50, i32 31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %54 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %55 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @request_firmware(%struct.firmware** %7, i8* %53, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %36
  %62 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %63 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %67 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  store i32 0, i32* %11, align 4
  br label %132

68:                                               ; preds = %36
  %69 = load %struct.firmware*, %struct.firmware** %7, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @VER_ADDR_1, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 16
  %76 = load %struct.firmware*, %struct.firmware** %7, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @VER_ADDR_2, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %75, %82
  %84 = load %struct.firmware*, %struct.firmware** %7, align 8
  %85 = getelementptr inbounds %struct.firmware, %struct.firmware* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @VER_ADDR_3, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %83, %89
  store i32 %90, i32* %9, align 4
  %91 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %92 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.firmware*, %struct.firmware** %7, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @VER_ADDR_1, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.firmware*, %struct.firmware** %7, align 8
  %102 = getelementptr inbounds %struct.firmware, %struct.firmware* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @VER_ADDR_2, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.firmware*, %struct.firmware** %7, align 8
  %108 = getelementptr inbounds %struct.firmware, %struct.firmware* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @VER_ADDR_3, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %106, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %68
  %118 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %119 = load %struct.firmware*, %struct.firmware** %7, align 8
  %120 = call i32 @mxuport_download_fw(%struct.usb_serial* %118, %struct.firmware* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %152

124:                                              ; preds = %117
  %125 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %126 = call i32 @mxuport_get_fw_version(%struct.usb_serial* %125, i32* %8)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %152

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %68
  br label %132

132:                                              ; preds = %131, %61
  %133 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %134 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 16711680
  %139 = ashr i32 %138, 16
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 65280
  %142 = ashr i32 %141, 8
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, 255
  %145 = call i32 @dev_info(i32* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %142, i32 %144)
  %146 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %147 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %148 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @usb_set_serial_data(%struct.usb_serial* %146, i8* %150)
  br label %152

152:                                              ; preds = %132, %129, %123
  %153 = load %struct.firmware*, %struct.firmware** %7, align 8
  %154 = icmp ne %struct.firmware* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.firmware*, %struct.firmware** %7, align 8
  %157 = call i32 @release_firmware(%struct.firmware* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %34, %24
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mxuport_send_ctrl_urb(%struct.usb_serial*, i32, i32, i32) #1

declare dso_local i32 @mxuport_get_fw_version(%struct.usb_serial*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

declare dso_local i32 @mxuport_download_fw(%struct.usb_serial*, %struct.firmware*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
