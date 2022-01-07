; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_bus_resume(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %6 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %8 = call i32 @ssb_bus_powerup(%struct.ssb_bus* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %15 = call i32 @ssb_pcmcia_hardware_setup(%struct.ssb_bus* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %20 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %13
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = call i32 @ssb_chipco_resume(i32* %24)
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %27 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %18, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ssb_bus_powerup(%struct.ssb_bus*, i32) #1

declare dso_local i32 @ssb_pcmcia_hardware_setup(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_bus_may_powerdown(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_chipco_resume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
