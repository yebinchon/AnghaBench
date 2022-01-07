; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_device_get_from_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_device_get_from_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_device = type { i32 }
%struct.device = type { i32 }
%struct.vfio_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfio_device* @vfio_device_get_from_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.vfio_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.vfio_group*, align 8
  %5 = alloca %struct.vfio_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.vfio_group* @vfio_group_get_from_dev(%struct.device* %6)
  store %struct.vfio_group* %7, %struct.vfio_group** %4, align 8
  %8 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %9 = icmp ne %struct.vfio_group* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.vfio_device* null, %struct.vfio_device** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.vfio_device* @vfio_group_get_device(%struct.vfio_group* %12, %struct.device* %13)
  store %struct.vfio_device* %14, %struct.vfio_device** %5, align 8
  %15 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %16 = call i32 @vfio_group_put(%struct.vfio_group* %15)
  %17 = load %struct.vfio_device*, %struct.vfio_device** %5, align 8
  store %struct.vfio_device* %17, %struct.vfio_device** %2, align 8
  br label %18

18:                                               ; preds = %11, %10
  %19 = load %struct.vfio_device*, %struct.vfio_device** %2, align 8
  ret %struct.vfio_device* %19
}

declare dso_local %struct.vfio_group* @vfio_group_get_from_dev(%struct.device*) #1

declare dso_local %struct.vfio_device* @vfio_group_get_device(%struct.vfio_group*, %struct.device*) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
