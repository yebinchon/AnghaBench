; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_event.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_event.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.usbip_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.usbip_device.0*)*, i32 (%struct.usbip_device.1*)*, i32 (%struct.usbip_device.2*)* }
%struct.usbip_device.0 = type opaque
%struct.usbip_device.1 = type opaque
%struct.usbip_device.2 = type opaque

@worker_context = common dso_local global i32* null, align 8
@current = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"pending event %lx\0A\00", align 1
@USBIP_EH_SHUTDOWN = common dso_local global i32 0, align 4
@USBIP_EH_RESET = common dso_local global i32 0, align 4
@USBIP_EH_UNUSABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_handler(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.usbip_device*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = load i32*, i32** @worker_context, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32*, i32** @current, align 8
  store i32* %7, i32** @worker_context, align 8
  br label %8

8:                                                ; preds = %6, %1
  br label %9

9:                                                ; preds = %70, %8
  %10 = call %struct.usbip_device* (...) @get_event()
  store %struct.usbip_device* %10, %struct.usbip_device** %3, align 8
  %11 = icmp ne %struct.usbip_device* %10, null
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %14 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usbip_dbg_eh(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %18 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @USBIP_EH_SHUTDOWN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %25 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (%struct.usbip_device.2*)*, i32 (%struct.usbip_device.2*)** %26, align 8
  %28 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %29 = bitcast %struct.usbip_device* %28 to %struct.usbip_device.2*
  %30 = call i32 %27(%struct.usbip_device.2* %29)
  %31 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %32 = load i32, i32* @USBIP_EH_SHUTDOWN, align 4
  %33 = call i32 @unset_event(%struct.usbip_device* %31, i32 %32)
  br label %34

34:                                               ; preds = %23, %12
  %35 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %36 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @USBIP_EH_RESET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %43 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.usbip_device.1*)*, i32 (%struct.usbip_device.1*)** %44, align 8
  %46 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %47 = bitcast %struct.usbip_device* %46 to %struct.usbip_device.1*
  %48 = call i32 %45(%struct.usbip_device.1* %47)
  %49 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %50 = load i32, i32* @USBIP_EH_RESET, align 4
  %51 = call i32 @unset_event(%struct.usbip_device* %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %34
  %53 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %54 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @USBIP_EH_UNUSABLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %61 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.usbip_device.0*)*, i32 (%struct.usbip_device.0*)** %62, align 8
  %64 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %65 = bitcast %struct.usbip_device* %64 to %struct.usbip_device.0*
  %66 = call i32 %63(%struct.usbip_device.0* %65)
  %67 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %68 = load i32, i32* @USBIP_EH_UNUSABLE, align 4
  %69 = call i32 @unset_event(%struct.usbip_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %52
  %71 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %72 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %71, i32 0, i32 1
  %73 = call i32 @wake_up(i32* %72)
  br label %9

74:                                               ; preds = %9
  ret void
}

declare dso_local %struct.usbip_device* @get_event(...) #1

declare dso_local i32 @usbip_dbg_eh(i8*, i32) #1

declare dso_local i32 @unset_event(%struct.usbip_device*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
