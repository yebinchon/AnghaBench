; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_bus0_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_main.c_mon_bus0_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { i32, i32, i32, i32, i32 }

@mon_bus0 = common dso_local global %struct.mon_bus zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mon_bus0_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bus0_init() #0 {
  %1 = alloca %struct.mon_bus*, align 8
  store %struct.mon_bus* @mon_bus0, %struct.mon_bus** %1, align 8
  %2 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %3 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %2, i32 0, i32 4
  %4 = call i32 @kref_init(i32* %3)
  %5 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %6 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %9 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %12 = call i32 @mon_text_add(%struct.mon_bus* %11, i32* null)
  %13 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %14 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %16 = call i32 @mon_bin_add(%struct.mon_bus* %15, i32* null)
  %17 = load %struct.mon_bus*, %struct.mon_bus** %1, align 8
  %18 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mon_text_add(%struct.mon_bus*, i32*) #1

declare dso_local i32 @mon_bin_add(%struct.mon_bus*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
