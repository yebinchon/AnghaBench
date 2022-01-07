; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport_ip32_private* }
%struct.parport_ip32_private = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @parport_ip32_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ip32_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.parport*, align 8
  %7 = alloca %struct.parport_ip32_private*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.parport*
  store %struct.parport* %10, %struct.parport** %6, align 8
  %11 = load %struct.parport*, %struct.parport** %6, align 8
  %12 = getelementptr inbounds %struct.parport, %struct.parport* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %14, align 8
  store %struct.parport_ip32_private* %15, %struct.parport_ip32_private** %7, align 8
  %16 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %17 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @parport_irq_handler(i32 %21, i8* %22)
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.parport*, %struct.parport** %6, align 8
  %26 = call i32 @parport_ip32_wakeup(%struct.parport* %25)
  br label %27

27:                                               ; preds = %2, %24
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @parport_irq_handler(i32, i8*) #1

declare dso_local i32 @parport_ip32_wakeup(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
