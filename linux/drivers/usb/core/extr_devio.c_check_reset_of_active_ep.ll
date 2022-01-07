; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_check_reset_of_active_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_check_reset_of_active_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32, %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Process %d (%s) called USBDEVFS_%s for active endpoint 0x%02x\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, i32, i8*)* @check_reset_of_active_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_reset_of_active_ep(%struct.usb_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_host_endpoint**, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @USB_DIR_IN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 2
  %16 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %15, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 1
  %20 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi %struct.usb_host_endpoint** [ %16, %13 ], [ %20, %17 ]
  store %struct.usb_host_endpoint** %22, %struct.usb_host_endpoint*** %7, align 8
  %23 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 15
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %23, i64 %26
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %27, align 8
  store %struct.usb_host_endpoint* %28, %struct.usb_host_endpoint** %8, align 8
  %29 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %30 = icmp ne %struct.usb_host_endpoint* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i32 0, i32 0
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %40 = call i32 @task_pid_nr(%struct.TYPE_3__* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %31, %21
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
