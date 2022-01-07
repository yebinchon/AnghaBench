; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_switch_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_switch_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64 }

@LED_CONTROL = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*, i32, i32*, i32)* @switch_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_leds(%struct.controller* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %44, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 1
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %27

22:                                               ; preds = %14
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 1
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.controller*, %struct.controller** %5, align 8
  %31 = getelementptr inbounds %struct.controller, %struct.controller* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LED_CONTROL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.controller*, %struct.controller** %5, align 8
  %37 = call i32 @set_SOGO(%struct.controller* %36)
  %38 = load %struct.controller*, %struct.controller** %5, align 8
  %39 = call i32 @wait_for_ctrl_irq(%struct.controller* %38)
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 2, %40
  %42 = sdiv i32 %41, 10
  %43 = call i32 @long_delay(i32 %42)
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %10

47:                                               ; preds = %10
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_SOGO(%struct.controller*) #1

declare dso_local i32 @wait_for_ctrl_irq(%struct.controller*) #1

declare dso_local i32 @long_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
