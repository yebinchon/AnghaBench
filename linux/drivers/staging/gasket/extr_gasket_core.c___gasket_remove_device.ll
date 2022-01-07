; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c___gasket_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c___gasket_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_internal_desc = type { i32 }
%struct.gasket_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_internal_desc*, %struct.gasket_dev*)* @__gasket_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gasket_remove_device(%struct.gasket_internal_desc* %0, %struct.gasket_dev* %1) #0 {
  %3 = alloca %struct.gasket_internal_desc*, align 8
  %4 = alloca %struct.gasket_dev*, align 8
  store %struct.gasket_internal_desc* %0, %struct.gasket_internal_desc** %3, align 8
  store %struct.gasket_dev* %1, %struct.gasket_dev** %4, align 8
  %5 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %6 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gasket_sysfs_remove_mapping(i32 %8)
  %10 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %3, align 8
  %11 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_destroy(i32 %12, i32 %16)
  %18 = load %struct.gasket_dev*, %struct.gasket_dev** %4, align 8
  %19 = call i32 @gasket_free_dev(%struct.gasket_dev* %18)
  ret void
}

declare dso_local i32 @gasket_sysfs_remove_mapping(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @gasket_free_dev(%struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
