; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_charger_ddata = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cpcap_charger_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_charger_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpcap_charger_ddata*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.cpcap_charger_ddata*
  store %struct.cpcap_charger_ddata* %8, %struct.cpcap_charger_ddata** %6, align 8
  %9 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %10 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %6, align 8
  %17 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %16, i32 0, i32 0
  %18 = call i32 @schedule_delayed_work(i32* %17, i32 0)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
