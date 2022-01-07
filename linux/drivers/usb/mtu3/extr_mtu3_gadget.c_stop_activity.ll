; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_stop_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32, %struct.TYPE_2__, i64, i64, i64, i64, %struct.usb_gadget_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_2__*)* }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*)* @stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_activity(%struct.mtu3* %0) #0 {
  %2 = alloca %struct.mtu3*, align 8
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %2, align 8
  %5 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %6 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %5, i32 0, i32 7
  %7 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %6, align 8
  store %struct.usb_gadget_driver* %7, %struct.usb_gadget_driver** %3, align 8
  %8 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %9 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %3, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %17 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %18 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %22 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %27 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %29 = call i32 @mtu3_dev_on_off(%struct.mtu3* %28, i32 0)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %32 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @ESHUTDOWN, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @nuke(i64 %33, i32 %35)
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %62, %30
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %40 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %45 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* @ESHUTDOWN, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @nuke(i64 %49, i32 %51)
  %53 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %54 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* @ESHUTDOWN, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @nuke(i64 %58, i32 %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %37

65:                                               ; preds = %37
  %66 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %67 = icmp ne %struct.usb_gadget_driver* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %70 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %73 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %73, align 8
  %75 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %76 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %75, i32 0, i32 2
  %77 = call i32 %74(%struct.TYPE_2__* %76)
  %78 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %79 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %78, i32 0, i32 1
  %80 = call i32 @spin_lock(i32* %79)
  br label %81

81:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @mtu3_dev_on_off(%struct.mtu3*, i32) #1

declare dso_local i32 @nuke(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
