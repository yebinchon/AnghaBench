; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Some GPIOs are still in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Can not unregister GPIO driver: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_bus_unregister(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %5 = call i32 @ssb_gpio_unregister(%struct.ssb_bus* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %10
  %20 = call i32 (...) @ssb_buses_lock()
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %22 = call i32 @ssb_devices_unregister(%struct.ssb_bus* %21)
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  %26 = call i32 (...) @ssb_buses_unlock()
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %28 = call i32 @ssb_pcmcia_exit(%struct.ssb_bus* %27)
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %30 = call i32 @ssb_pci_exit(%struct.ssb_bus* %29)
  %31 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %32 = call i32 @ssb_iounmap(%struct.ssb_bus* %31)
  ret void
}

declare dso_local i32 @ssb_gpio_unregister(%struct.ssb_bus*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ssb_buses_lock(...) #1

declare dso_local i32 @ssb_devices_unregister(%struct.ssb_bus*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ssb_buses_unlock(...) #1

declare dso_local i32 @ssb_pcmcia_exit(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_pci_exit(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_iounmap(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
