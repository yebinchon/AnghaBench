; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_device_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_device_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.bus_type = type { i32 }
%struct.xb_find_info = type { i8*, %struct.xenbus_device* }

@cmp_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xenbus_device* (i8*, %struct.bus_type*)* @xenbus_device_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xenbus_device* @xenbus_device_find(i8* %0, %struct.bus_type* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.xb_find_info, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bus_type* %1, %struct.bus_type** %4, align 8
  %6 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 0
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  store %struct.xenbus_device* null, %struct.xenbus_device** %8, align 8
  %9 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %10 = load i32, i32* @cmp_dev, align 4
  %11 = call i32 @bus_for_each_dev(%struct.bus_type* %9, i32* null, %struct.xb_find_info* %5, i32 %10)
  %12 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  ret %struct.xenbus_device* %13
}

declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, i32*, %struct.xb_find_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
