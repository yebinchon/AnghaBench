; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_drd_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_drd_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i64, i32, i32, i32, i32 }

@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@DWC3_OTG_ROLE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_drd_exit(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i64, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @EXTCON_USB_HOST, align 4
  %13 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 6
  %15 = call i32 @extcon_unregister_notifier(i64 %11, i32 %12, i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 5
  %19 = call i32 @cancel_work_sync(i32* %18)
  %20 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %47 [
    i32 129, label %23
    i32 130, label %26
    i32 128, label %31
  ]

23:                                               ; preds = %16
  %24 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %25 = call i32 @dwc3_host_exit(%struct.dwc3* %24)
  br label %48

26:                                               ; preds = %16
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = call i32 @dwc3_gadget_exit(%struct.dwc3* %27)
  %29 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %30 = call i32 @dwc3_event_buffers_cleanup(%struct.dwc3* %29)
  br label %48

31:                                               ; preds = %16
  %32 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %33 = call i32 @dwc3_otg_exit(%struct.dwc3* %32)
  %34 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 3
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i32, i32* @DWC3_OTG_ROLE_IDLE, align 4
  %39 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 3
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %46 = call i32 @dwc3_otg_update(%struct.dwc3* %45, i32 1)
  br label %48

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47, %31, %26, %23
  %49 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %55 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %58 = call i32 @free_irq(i32 %56, %struct.dwc3* %57)
  br label %59

59:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @extcon_unregister_notifier(i64, i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dwc3_host_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_event_buffers_cleanup(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_exit(%struct.dwc3*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc3_otg_update(%struct.dwc3*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
