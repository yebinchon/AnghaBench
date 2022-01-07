; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-coh901331.c_coh901331_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-coh901331.c_coh901331_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coh901331_port = type { i32, i64 }

@COH901331_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @coh901331_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901331_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coh901331_port*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.coh901331_port* @dev_get_drvdata(%struct.device* %6)
  store %struct.coh901331_port* %7, %struct.coh901331_port** %5, align 8
  %8 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %9 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_enable(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %16 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @COH901331_IRQ_MASK, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 1, i64 %19)
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %23 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @COH901331_IRQ_MASK, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %30 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_disable(i32 %31)
  ret i32 0
}

declare dso_local %struct.coh901331_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
