; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.das16_private_struct = type { i32, i64, %struct.comedi_device* }
%struct.comedi_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.das16_private_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @das16_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_timer_interrupt(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.das16_private_struct*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.das16_private_struct*, %struct.das16_private_struct** %3, align 8
  %7 = ptrtoint %struct.das16_private_struct* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.das16_private_struct* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.das16_private_struct* %10, %struct.das16_private_struct** %3, align 8
  %11 = load %struct.das16_private_struct*, %struct.das16_private_struct** %3, align 8
  %12 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %11, i32 0, i32 2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %12, align 8
  store %struct.comedi_device* %13, %struct.comedi_device** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = call i32 @das16_interrupt(%struct.comedi_device* %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.das16_private_struct*, %struct.das16_private_struct** %3, align 8
  %21 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.das16_private_struct*, %struct.das16_private_struct** %3, align 8
  %26 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %25, i32 0, i32 0
  %27 = load i64, i64* @jiffies, align 8
  %28 = call i64 (...) @timer_period()
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local %struct.das16_private_struct* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @das16_interrupt(%struct.comedi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @timer_period(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
