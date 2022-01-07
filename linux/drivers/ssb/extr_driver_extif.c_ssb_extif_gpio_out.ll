; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_extif.c_ssb_extif_gpio_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_extif.c_ssb_extif_gpio_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_extif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_extif_gpio_out(%struct.ssb_extif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_extif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ssb_extif* %0, %struct.ssb_extif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ssb_extif*, %struct.ssb_extif** %4, align 8
  %10 = getelementptr inbounds %struct.ssb_extif, %struct.ssb_extif* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ssb_extif*, %struct.ssb_extif** %4, align 8
  %14 = call i32 @SSB_EXTIF_GPIO_OUT(i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @extif_write32_masked(%struct.ssb_extif* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ssb_extif*, %struct.ssb_extif** %4, align 8
  %19 = getelementptr inbounds %struct.ssb_extif, %struct.ssb_extif* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @extif_write32_masked(%struct.ssb_extif*, i32, i32, i32) #1

declare dso_local i32 @SSB_EXTIF_GPIO_OUT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
