; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_register_driver_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_register_driver_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_driver = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i8*, %struct.module*, i32*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.xen_bus_type = type { i32 }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_register_driver_common(%struct.xenbus_driver* %0, %struct.xen_bus_type* %1, %struct.module* %2, i8* %3) #0 {
  %5 = alloca %struct.xenbus_driver*, align 8
  %6 = alloca %struct.xen_bus_type*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i8*, align 8
  store %struct.xenbus_driver* %0, %struct.xenbus_driver** %5, align 8
  store %struct.xen_bus_type* %1, %struct.xen_bus_type** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %10 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %15 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  br label %24

17:                                               ; preds = %4
  %18 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %19 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i64 [ %16, %13 ], [ %23, %17 ]
  %26 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %27 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i64 %25, i64* %28, align 8
  %29 = load %struct.xen_bus_type*, %struct.xen_bus_type** %6, align 8
  %30 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %29, i32 0, i32 0
  %31 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %32 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32* %30, i32** %33, align 8
  %34 = load %struct.module*, %struct.module** %7, align 8
  %35 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %36 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.module* %34, %struct.module** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %40 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %43 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %42, i32 0, i32 0
  %44 = call i32 @driver_register(%struct.TYPE_4__* %43)
  ret i32 %44
}

declare dso_local i32 @driver_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
