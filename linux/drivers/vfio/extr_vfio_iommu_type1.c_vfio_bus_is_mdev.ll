; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_bus_is_mdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_bus_is_mdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }

@mdev_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*)* @vfio_bus_is_mdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_bus_is_mdev(%struct.bus_type* %0) #0 {
  %2 = alloca %struct.bus_type*, align 8
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @mdev_bus_type, align 4
  %6 = call %struct.bus_type* @symbol_get(i32 %5)
  store %struct.bus_type* %6, %struct.bus_type** %3, align 8
  %7 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %8 = icmp ne %struct.bus_type* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %11 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %12 = icmp eq %struct.bus_type* %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @mdev_bus_type, align 4
  %15 = call i32 @symbol_put(i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local %struct.bus_type* @symbol_get(i32) #1

declare dso_local i32 @symbol_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
