; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_frontend.c_wait_for_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_frontend.c_wait_for_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xenbus_driver = type { %struct.device_driver }
%struct.device_driver = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ready_to_wait_for_devices = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@xenbus_frontend = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@print_device_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_driver*)* @wait_for_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_devices(%struct.xenbus_driver* %0) #0 {
  %2 = alloca %struct.xenbus_driver*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.xenbus_driver* %0, %struct.xenbus_driver** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.xenbus_driver*, %struct.xenbus_driver** %2, align 8
  %8 = icmp ne %struct.xenbus_driver* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.xenbus_driver*, %struct.xenbus_driver** %2, align 8
  %11 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %10, i32 0, i32 0
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi %struct.device_driver* [ %11, %9 ], [ null, %12 ]
  store %struct.device_driver* %14, %struct.device_driver** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @ready_to_wait_for_devices, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 (...) @xen_domain()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %13
  br label %52

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %31, %21
  %23 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %24 = call i64 @exists_non_essential_connecting_device(%struct.device_driver* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @wait_loop(i64 %27, i32 30, i32* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26
  br label %22

32:                                               ; preds = %30, %22
  br label %33

33:                                               ; preds = %42, %32
  %34 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %35 = call i64 @exists_essential_connecting_device(%struct.device_driver* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @wait_loop(i64 %38, i32 270, i32* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %43

42:                                               ; preds = %37
  br label %33

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %50 = load i32, i32* @print_device_status, align 4
  %51 = call i32 @bus_for_each_dev(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xenbus_frontend, i32 0, i32 0), i32* null, %struct.device_driver* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %20
  ret void
}

declare dso_local i32 @xen_domain(...) #1

declare dso_local i64 @exists_non_essential_connecting_device(%struct.device_driver*) #1

declare dso_local i64 @wait_loop(i64, i32, i32*) #1

declare dso_local i64 @exists_essential_connecting_device(%struct.device_driver*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.device_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
