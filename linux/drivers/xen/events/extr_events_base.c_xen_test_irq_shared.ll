; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_test_irq_shared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_test_irq_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.physdev_irq_status_query = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@PHYSDEVOP_irq_status_query = common dso_local global i32 0, align 4
@XENIRQSTAT_shared = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_test_irq_shared(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_info*, align 8
  %5 = alloca %struct.physdev_irq_status_query, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.irq_info* @info_for_irq(i32 %6)
  store %struct.irq_info* %7, %struct.irq_info** %4, align 8
  %8 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %9 = icmp ne %struct.irq_info* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %19 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.physdev_irq_status_query, %struct.physdev_irq_status_query* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @PHYSDEVOP_irq_status_query, align 4
  %25 = call i64 @HYPERVISOR_physdev_op(i32 %24, %struct.physdev_irq_status_query* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %36

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.physdev_irq_status_query, %struct.physdev_irq_status_query* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XENIRQSTAT_shared, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %27, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.irq_info* @info_for_irq(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @HYPERVISOR_physdev_op(i32, %struct.physdev_irq_status_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
