; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_embedded.c_ssb_gpio_outen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_embedded.c_ssb_gpio_outen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_gpio_outen(%struct.ssb_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %10 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 2
  %15 = call i64 @ssb_chipco_available(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %19 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %18, i32 0, i32 2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ssb_chipco_gpio_outen(i32* %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %25 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %24, i32 0, i32 1
  %26 = call i64 @ssb_extif_available(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %30 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ssb_extif_gpio_outen(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %36

34:                                               ; preds = %23
  %35 = call i32 @WARN_ON(i32 1)
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %39 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i32 @ssb_chipco_gpio_outen(i32*, i32, i32) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_gpio_outen(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
