; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_kick_hub_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_kick_hub_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32, i32, i64 }
%struct.usb_interface = type { i32 }

@hub_wq = common dso_local global i32 0, align 4
@hub_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*)* @kick_hub_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kick_hub_wq(%struct.usb_hub* %0) #0 {
  %2 = alloca %struct.usb_hub*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %2, align 8
  %4 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 1
  %11 = call i64 @work_pending(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %37

14:                                               ; preds = %8
  %15 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %16 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_interface* @to_usb_interface(i32 %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %3, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %20 = call i32 @usb_autopm_get_interface_no_resume(%struct.usb_interface* %19)
  %21 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %22 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %21, i32 0, i32 0
  %23 = call i32 @kref_get(i32* %22)
  %24 = load i32, i32* @hub_wq, align 4
  %25 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %26 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %25, i32 0, i32 1
  %27 = call i64 @queue_work(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %37

30:                                               ; preds = %14
  %31 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %32 = call i32 @usb_autopm_put_interface_async(%struct.usb_interface* %31)
  %33 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %34 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %33, i32 0, i32 0
  %35 = load i32, i32* @hub_release, align 4
  %36 = call i32 @kref_put(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %29, %13
  ret void
}

declare dso_local i64 @work_pending(i32*) #1

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local i32 @usb_autopm_get_interface_no_resume(%struct.usb_interface*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface_async(%struct.usb_interface*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
