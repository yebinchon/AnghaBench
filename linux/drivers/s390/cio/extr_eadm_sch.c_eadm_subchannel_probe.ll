; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.eadm_private = type { i32, %struct.subchannel*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@eadm_subchannel_timeout = common dso_local global i32 0, align 4
@EADM_IDLE = common dso_local global i32 0, align 4
@EADM_SCH_ISC = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@eadm_list = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @eadm_subchannel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eadm_subchannel_probe(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.eadm_private*, align 8
  %5 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @GFP_DMA, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.eadm_private* @kzalloc(i32 24, i32 %8)
  store %struct.eadm_private* %9, %struct.eadm_private** %4, align 8
  %10 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %11 = icmp ne %struct.eadm_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %17 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %20 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %19, i32 0, i32 3
  %21 = load i32, i32* @eadm_subchannel_timeout, align 4
  %22 = call i32 @timer_setup(i32* %20, i32 %21, i32 0)
  %23 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %24 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %28 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %29 = call i32 @set_eadm_private(%struct.subchannel* %27, %struct.eadm_private* %28)
  %30 = load i32, i32* @EADM_IDLE, align 4
  %31 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %32 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %34 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %35 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %34, i32 0, i32 1
  store %struct.subchannel* %33, %struct.subchannel** %35, align 8
  %36 = load i32, i32* @EADM_SCH_ISC, align 4
  %37 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %41 = ptrtoint %struct.subchannel* %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = call i32 @cio_enable_subchannel(%struct.subchannel* %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %15
  %47 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %48 = call i32 @set_eadm_private(%struct.subchannel* %47, %struct.eadm_private* null)
  %49 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %54 = call i32 @kfree(%struct.eadm_private* %53)
  br label %79

55:                                               ; preds = %15
  %56 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %57 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = call i32 @spin_lock_irq(i32* @list_lock)
  %61 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %62 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %61, i32 0, i32 0
  %63 = call i32 @list_add(i32* %62, i32* @eadm_list)
  %64 = call i32 @spin_unlock_irq(i32* @list_lock)
  %65 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %66 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %65, i32 0, i32 0
  %67 = call i64 @dev_get_uevent_suppress(%struct.TYPE_3__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %55
  %70 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %71 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %70, i32 0, i32 0
  %72 = call i32 @dev_set_uevent_suppress(%struct.TYPE_3__* %71, i32 0)
  %73 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %74 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* @KOBJ_ADD, align 4
  %77 = call i32 @kobject_uevent(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %55
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.eadm_private* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_eadm_private(%struct.subchannel*, %struct.eadm_private*) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.eadm_private*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @dev_get_uevent_suppress(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
