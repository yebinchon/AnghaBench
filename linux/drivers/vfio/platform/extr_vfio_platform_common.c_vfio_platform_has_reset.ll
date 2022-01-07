; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_has_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_has_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*)* @vfio_platform_has_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_has_reset(%struct.vfio_platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_platform_device*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %3, align 8
  %4 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %5 = call i64 @VFIO_PLATFORM_IS_ACPI(%struct.vfio_platform_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %9 = call i32 @vfio_platform_acpi_has_reset(%struct.vfio_platform_device* %8)
  store i32 %9, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %10, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @VFIO_PLATFORM_IS_ACPI(%struct.vfio_platform_device*) #1

declare dso_local i32 @vfio_platform_acpi_has_reset(%struct.vfio_platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
