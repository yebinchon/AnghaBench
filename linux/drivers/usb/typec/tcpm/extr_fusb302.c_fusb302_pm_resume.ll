; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.fusb302_chip* }
%struct.fusb302_chip = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fusb302_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_pm_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fusb302_chip*, align 8
  %4 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.fusb302_chip*, %struct.fusb302_chip** %6, align 8
  store %struct.fusb302_chip* %7, %struct.fusb302_chip** %3, align 8
  %8 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %9 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %8, i32 0, i32 2
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %13 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %18 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %17, i32 0, i32 3
  %19 = call i32 @schedule_work(i32* %18)
  %20 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %21 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %24 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %26 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %25, i32 0, i32 2
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
