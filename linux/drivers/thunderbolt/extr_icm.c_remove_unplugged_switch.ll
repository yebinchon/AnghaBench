; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_remove_unplugged_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_remove_unplugged_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@tb_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @remove_unplugged_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_unplugged_switch(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %3 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %4 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pm_runtime_get_sync(i32 %6)
  %8 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %9 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %8, i32 0, i32 0
  %10 = call i32 @complete_rpm(%struct.TYPE_4__* %9, i32* null)
  %11 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %12 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %11, i32 0, i32 0
  %13 = call i32 @bus_for_each_dev(i32* @tb_bus_type, %struct.TYPE_4__* %12, i32* null, i32 (%struct.TYPE_4__*, i32*)* @complete_rpm)
  %14 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %15 = call i32 @tb_switch_remove(%struct.tb_switch* %14)
  %16 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %17 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_mark_last_busy(i32 %19)
  %21 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %22 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_put_autosuspend(i32 %24)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @complete_rpm(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @bus_for_each_dev(i32*, %struct.TYPE_4__*, i32*, i32 (%struct.TYPE_4__*, i32*)*) #1

declare dso_local i32 @tb_switch_remove(%struct.tb_switch*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
