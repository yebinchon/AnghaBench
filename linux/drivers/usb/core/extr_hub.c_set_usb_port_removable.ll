; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_set_usb_port_removable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_set_usb_port_removable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i8*, %struct.usb_device* }
%struct.usb_hub = type { %struct.TYPE_10__*, %struct.TYPE_6__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@USB_DEVICE_REMOVABLE = common dso_local global i8* null, align 8
@USB_DEVICE_FIXED = common dso_local global i8* null, align 8
@HUB_CHAR_COMPOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @set_usb_port_removable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_usb_port_removable(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %3, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = icmp ne %struct.usb_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 2
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  %21 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %20)
  store %struct.usb_hub* %21, %struct.usb_hub** %4, align 8
  %22 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %23 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 130, label %38
    i32 128, label %38
  ]

34:                                               ; preds = %17
  %35 = load i8*, i8** @USB_DEVICE_REMOVABLE, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %105

38:                                               ; preds = %17, %17
  %39 = load i8*, i8** @USB_DEVICE_FIXED, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %105

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %45 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @HUB_CHAR_COMPOUND, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %105

55:                                               ; preds = %43
  %56 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %57 = call i64 @hub_is_superspeed(%struct.usb_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %61 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %59
  br label %94

74:                                               ; preds = %55
  %75 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %76 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sdiv i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = srem i32 %87, 8
  %89 = shl i32 1, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %73
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** @USB_DEVICE_REMOVABLE, align 8
  %99 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %105

101:                                              ; preds = %94
  %102 = load i8*, i8** @USB_DEVICE_FIXED, align 8
  %103 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %16, %34, %38, %54, %101, %97
  ret void
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
