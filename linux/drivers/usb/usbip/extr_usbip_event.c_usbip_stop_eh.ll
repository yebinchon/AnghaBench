; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_event.c_usbip_stop_eh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_event.c_usbip_stop_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { i64, i32 }

@USBIP_EH_BYE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"usbip_eh stopping but not removed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"usbip_eh waiting completion %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"usbip_eh has stopped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_stop_eh(%struct.usbip_device* %0) #0 {
  %2 = alloca %struct.usbip_device*, align 8
  %3 = alloca i64, align 8
  store %struct.usbip_device* %0, %struct.usbip_device** %2, align 8
  %4 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %5 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USBIP_EH_BYE, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %11 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USBIP_EH_BYE, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @usbip_dbg_eh(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = call i32 (i8*, ...) @usbip_dbg_eh(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %26 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.usbip_device*, %struct.usbip_device** %2, align 8
  %29 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USBIP_EH_BYE, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @wait_event_interruptible(i32 %27, i32 %36)
  %38 = call i32 (i8*, ...) @usbip_dbg_eh(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @usbip_dbg_eh(i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
