; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32* }
%struct.eadm_private = type { i32 }

@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @eadm_subchannel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eadm_subchannel_remove(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.eadm_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %4)
  store %struct.eadm_private* %5, %struct.eadm_private** %3, align 8
  %6 = call i32 @spin_lock_irq(i32* @list_lock)
  %7 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %8 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @spin_unlock_irq(i32* @list_lock)
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = call i32 @eadm_quiesce(%struct.subchannel* %11)
  %13 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %18 = call i32 @set_eadm_private(%struct.subchannel* %17, i32* null)
  %19 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @spin_unlock_irq(i32* %21)
  %23 = load %struct.eadm_private*, %struct.eadm_private** %3, align 8
  %24 = call i32 @kfree(%struct.eadm_private* %23)
  ret i32 0
}

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @eadm_quiesce(%struct.subchannel*) #1

declare dso_local i32 @set_eadm_private(%struct.subchannel*, i32*) #1

declare dso_local i32 @kfree(%struct.eadm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
