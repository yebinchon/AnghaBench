; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_destroy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_destroy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physdev_unmap_pirq = type { i64, i32 }
%struct.irq_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@irq_mapping_update_lock = common dso_local global i32 0, align 4
@PIRQ_MSI_GROUP = common dso_local global i32 0, align 4
@PHYSDEVOP_unmap_pirq = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"domain %d does not have %d anymore\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unmap irq failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_destroy_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.physdev_unmap_pirq, align 8
  %4 = alloca %struct.irq_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.irq_info* @info_for_irq(i32 %6)
  store %struct.irq_info* %7, %struct.irq_info** %4, align 8
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = call i32 @mutex_lock(i32* @irq_mapping_update_lock)
  %11 = call i64 (...) @xen_initial_domain()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %1
  %14 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %15 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PIRQ_MSI_GROUP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %13
  %23 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %24 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.physdev_unmap_pirq, %struct.physdev_unmap_pirq* %3, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %30 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.physdev_unmap_pirq, %struct.physdev_unmap_pirq* %3, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @PHYSDEVOP_unmap_pirq, align 4
  %36 = call i32 @HYPERVISOR_physdev_op(i32 %35, %struct.physdev_unmap_pirq* %3)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ESRCH, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %22
  %42 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %43 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DOMID_SELF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %51 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.irq_info*, %struct.irq_info** %4, align 8
  %56 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %59)
  br label %68

61:                                               ; preds = %41, %22
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %72

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %13, %1
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @xen_free_irq(i32 %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = call i32 @mutex_unlock(i32* @irq_mapping_update_lock)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.irq_info* @info_for_irq(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @xen_initial_domain(...) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_unmap_pirq*) #1

declare dso_local i32 @pr_info(i8*, i64, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @xen_free_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
