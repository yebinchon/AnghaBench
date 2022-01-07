; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_gpio.c_ssb_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_gpio.c_ssb_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_gpio_init(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %5 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %4, i32 0, i32 1
  %6 = call i64 @ssb_chipco_available(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %10 = call i32 @ssb_gpio_chipco_init(%struct.ssb_bus* %9)
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 0
  %14 = call i64 @ssb_extif_available(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %18 = call i32 @ssb_gpio_extif_init(%struct.ssb_bus* %17)
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i32 @ssb_gpio_chipco_init(%struct.ssb_bus*) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_gpio_extif_init(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
