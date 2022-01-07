; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vtconsole_deinit_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vtconsole_deinit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con_driver = type { i32 }

@CON_DRIVER_FLAG_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con_driver*)* @vtconsole_deinit_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtconsole_deinit_device(%struct.con_driver* %0) #0 {
  %2 = alloca %struct.con_driver*, align 8
  store %struct.con_driver* %0, %struct.con_driver** %2, align 8
  %3 = load i32, i32* @CON_DRIVER_FLAG_ATTR, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.con_driver*, %struct.con_driver** %2, align 8
  %6 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
