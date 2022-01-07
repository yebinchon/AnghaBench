; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_adjust_deviceremovable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_adjust_deviceremovable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hub_descriptor = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.usb_hub = type { %struct.usb_port** }
%struct.usb_port = type { i32, i32 }

@USB_PORT_CONNECT_TYPE_HARD_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"DeviceRemovable is changed to 1 according to platform information.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hub_adjust_deviceremovable(%struct.usb_device* %0, %struct.usb_hub_descriptor* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_hub_descriptor*, align 8
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_port*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %4, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %13)
  store %struct.usb_hub* %14, %struct.usb_hub** %5, align 8
  %15 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %16 = icmp ne %struct.usb_hub* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %137

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = call i32 @hub_is_superspeed(%struct.usb_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %83, label %22

22:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %79, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %31 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %30, i32 0, i32 0
  %32 = load %struct.usb_port**, %struct.usb_port*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %32, i64 %35
  %37 = load %struct.usb_port*, %struct.usb_port** %36, align 8
  store %struct.usb_port* %37, %struct.usb_port** %8, align 8
  %38 = load %struct.usb_port*, %struct.usb_port** %8, align 8
  %39 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @USB_PORT_CONNECT_TYPE_HARD_WIRED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = srem i32 %45, 8
  %47 = shl i32 1, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %44
  %62 = load %struct.usb_port*, %struct.usb_port** %8, align 8
  %63 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %62, i32 0, i32 1
  %64 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %67 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %65
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %61, %44
  br label %78

78:                                               ; preds = %77, %29
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %23

82:                                               ; preds = %23
  br label %137

83:                                               ; preds = %18
  %84 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %85 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le16_to_cpu(i32 %88)
  store i32 %89, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %127, %83
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %90
  %97 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %98 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %97, i32 0, i32 0
  %99 = load %struct.usb_port**, %struct.usb_port*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %99, i64 %102
  %104 = load %struct.usb_port*, %struct.usb_port** %103, align 8
  store %struct.usb_port* %104, %struct.usb_port** %11, align 8
  %105 = load %struct.usb_port*, %struct.usb_port** %11, align 8
  %106 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @USB_PORT_CONNECT_TYPE_HARD_WIRED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %96
  %112 = load i32, i32* %7, align 4
  %113 = shl i32 1, %112
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.usb_port*, %struct.usb_port** %11, align 8
  %120 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %119, i32 0, i32 1
  %121 = call i32 @dev_dbg(i32* %120, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %118, %111
  br label %126

126:                                              ; preds = %125, %96
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %90

130:                                              ; preds = %90
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @cpu_to_le16(i32 %131)
  %133 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %134 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  br label %137

137:                                              ; preds = %17, %130, %82
  ret void
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

declare dso_local i32 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
