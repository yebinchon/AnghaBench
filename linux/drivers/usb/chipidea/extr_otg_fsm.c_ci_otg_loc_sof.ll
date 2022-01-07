; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_loc_sof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_loc_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otg_fsm*, i32)* @ci_otg_loc_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_otg_loc_sof(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.otg_fsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  store %struct.otg_fsm* %0, %struct.otg_fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %7 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.otg_fsm*, %struct.otg_fsm** %3, align 8
  %15 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.usb_device* @usb_hub_find_child(i32 %20, i32 1)
  store %struct.usb_device* %21, %struct.usb_device** %5, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = icmp ne %struct.usb_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %37

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = call i32 @usb_disable_autosuspend(%struct.usb_device* %29)
  br label %37

31:                                               ; preds = %25
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_set_autosuspend_delay(i32* %33, i32 0)
  %35 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %36 = call i32 @usb_enable_autosuspend(%struct.usb_device* %35)
  br label %37

37:                                               ; preds = %12, %24, %31, %28
  ret void
}

declare dso_local %struct.usb_device* @usb_hub_find_child(i32, i32) #1

declare dso_local i32 @usb_disable_autosuspend(%struct.usb_device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @usb_enable_autosuspend(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
