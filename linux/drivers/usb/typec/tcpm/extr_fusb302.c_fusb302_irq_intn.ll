; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_irq_intn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_irq_intn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32, i32, i32, i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fusb302_irq_intn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_irq_intn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fusb302_chip*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fusb302_chip*
  store %struct.fusb302_chip* %8, %struct.fusb302_chip** %5, align 8
  %9 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %10 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @disable_irq_nosync(i32 %11)
  %13 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %14 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %18 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %23 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %26 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %25, i32 0, i32 2
  %27 = call i32 @schedule_work(i32* %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.fusb302_chip*, %struct.fusb302_chip** %5, align 8
  %30 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %33
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
