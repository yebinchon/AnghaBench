; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-pad.c_xen_acpi_pad_idle_cpus_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-pad.c_xen_acpi_pad_idle_cpus_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_platform_op = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@XENPF_core_parking = common dso_local global i32 0, align 4
@XEN_CORE_PARKING_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xen_acpi_pad_idle_cpus_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_acpi_pad_idle_cpus_num() #0 {
  %1 = alloca %struct.xen_platform_op, align 4
  %2 = load i32, i32* @XENPF_core_parking, align 4
  %3 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %1, i32 0, i32 1
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* @XEN_CORE_PARKING_GET, align 4
  %5 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %4, i32* %7, align 4
  %8 = call i64 @HYPERVISOR_platform_op(%struct.xen_platform_op* %1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %17

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %1, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %11, %10
  %18 = phi i64 [ %8, %10 ], [ %16, %11 ]
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

declare dso_local i64 @HYPERVISOR_platform_op(%struct.xen_platform_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
