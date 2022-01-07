; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_event.c_usbip_init_eh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_event.c_usbip_init_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORK_QUEUE_NAME = common dso_local global i32 0, align 4
@usbip_queue = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to create usbip_event\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_init_eh() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WORK_QUEUE_NAME, align 4
  %3 = call i32* @create_singlethread_workqueue(i32 %2)
  store i32* %3, i32** @usbip_queue, align 8
  %4 = load i32*, i32** @usbip_queue, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i32* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
