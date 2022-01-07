; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_bus.h_qtnf_bus_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_bus.h_qtnf_bus_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.qtnf_bus*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_bus*)* @qtnf_bus_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_bus_stop(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %2, align 8
  %3 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %4 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.qtnf_bus*)*, i32 (%struct.qtnf_bus*)** %6, align 8
  %8 = icmp ne i32 (%struct.qtnf_bus*)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %12 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.qtnf_bus*)*, i32 (%struct.qtnf_bus*)** %14, align 8
  %16 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %17 = call i32 %15(%struct.qtnf_bus* %16)
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
