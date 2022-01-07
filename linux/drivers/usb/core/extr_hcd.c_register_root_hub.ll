; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_register_root_hub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_register_root_hub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.usb_device*, %struct.device* }
%struct.usb_device = type { i32, i64, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }

@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@usb_bus_idr_lock = common dso_local global i32 0, align 4
@USB_DT_DEVICE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can't read %s device descriptor %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"can't read %s bos descriptor %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"can't register root hub for %s, %d\0A\00", align 1
@hcd_root_hub_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @register_root_hub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_root_hub(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %5, align 8
  store i32 1, i32* %6, align 4
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 2, i32* %21, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_bit(i32 1, i32 %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %31 = call i32 @usb_set_device_state(%struct.usb_device* %29, i32 %30)
  %32 = call i32 @mutex_lock(i32* @usb_bus_idr_lock)
  %33 = call i32 @cpu_to_le16(i32 64)
  %34 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %39 = load i32, i32* @USB_DT_DEVICE_SIZE, align 4
  %40 = call i32 @usb_get_device_descriptor(%struct.usb_device* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 4
  br i1 %43, label %44, label %61

44:                                               ; preds = %1
  %45 = call i32 @mutex_unlock(i32* @usb_bus_idr_lock)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 2
  %49 = call i32 @dev_name(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  store i32 %60, i32* %2, align 4
  br label %122

61:                                               ; preds = %1
  %62 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = icmp sge i32 %66, 513
  br i1 %67, label %68, label %95

68:                                               ; preds = %61
  %69 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %70 = call i32 @usb_get_bos_descriptor(%struct.usb_device* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %75 = call i32 @usb_device_supports_lpm(%struct.usb_device* %74)
  %76 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %94

78:                                               ; preds = %68
  %79 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @USB_SPEED_SUPER, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = call i32 @mutex_unlock(i32* @usb_bus_idr_lock)
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 2
  %89 = call i32 @dev_name(i32* %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %122

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %61
  %96 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %97 = call i32 @usb_new_device(%struct.usb_device* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %103 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %102, i32 0, i32 2
  %104 = call i32 @dev_name(i32* %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  br label %119

107:                                              ; preds = %95
  %108 = call i32 @spin_lock_irq(i32* @hcd_root_hub_lock)
  %109 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %110 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = call i32 @spin_unlock_irq(i32* @hcd_root_hub_lock)
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %113 = call i64 @HCD_DEAD(%struct.usb_hcd* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %117 = call i32 @usb_hc_died(%struct.usb_hcd* %116)
  br label %118

118:                                              ; preds = %115, %107
  br label %119

119:                                              ; preds = %118, %100
  %120 = call i32 @mutex_unlock(i32* @usb_bus_idr_lock)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %119, %84, %59
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_get_device_descriptor(%struct.usb_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_get_bos_descriptor(%struct.usb_device*) #1

declare dso_local i32 @usb_device_supports_lpm(%struct.usb_device*) #1

declare dso_local i32 @usb_new_device(%struct.usb_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @HCD_DEAD(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hc_died(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
