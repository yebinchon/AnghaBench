; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { i32 }
%struct.men_z069_drv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcb_device*)* @men_z069_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z069_remove(%struct.mcb_device* %0) #0 {
  %2 = alloca %struct.mcb_device*, align 8
  %3 = alloca %struct.men_z069_drv*, align 8
  store %struct.mcb_device* %0, %struct.mcb_device** %2, align 8
  %4 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %5 = call %struct.men_z069_drv* @mcb_get_drvdata(%struct.mcb_device* %4)
  store %struct.men_z069_drv* %5, %struct.men_z069_drv** %3, align 8
  %6 = load %struct.men_z069_drv*, %struct.men_z069_drv** %3, align 8
  %7 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %6, i32 0, i32 1
  %8 = call i32 @watchdog_unregister_device(i32* %7)
  %9 = load %struct.men_z069_drv*, %struct.men_z069_drv** %3, align 8
  %10 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mcb_release_mem(i32 %11)
  ret void
}

declare dso_local %struct.men_z069_drv* @mcb_get_drvdata(%struct.mcb_device*) #1

declare dso_local i32 @watchdog_unregister_device(i32*) #1

declare dso_local i32 @mcb_release_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
