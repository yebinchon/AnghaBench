; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_set_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_set_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@device_state_lock = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@USB_QUIRK_IGNORE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_set_device_state(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @device_state_lock, i64 %7)
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %111

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %107

20:                                               ; preds = %15
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %25
  br label %62

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @USB_QUIRK_IGNORE_REMOTE_WAKEUP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %57 = and i32 %55, %56
  br label %58

58:                                               ; preds = %49, %48
  %59 = phi i32 [ 0, %48 ], [ %57, %49 ]
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %58
  br label %62

62:                                               ; preds = %61, %36
  br label %63

63:                                               ; preds = %62, %20
  %64 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 8
  br label %102

82:                                               ; preds = %69, %63
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i64, i64* @jiffies, align 8
  %95 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %96 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  br label %101

101:                                              ; preds = %93, %87, %82
  br label %102

102:                                              ; preds = %101, %74
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %106 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %110

107:                                              ; preds = %15
  %108 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %109 = call i32 @recursively_mark_NOTATTACHED(%struct.usb_device* %108)
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110, %14
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* @device_state_lock, i64 %112)
  %114 = load i32, i32* %6, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %118 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 2
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @device_set_wakeup_capable(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %111
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @recursively_mark_NOTATTACHED(%struct.usb_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
