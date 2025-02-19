; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_sercos3.c_sercos3_irqcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_sercos3.c_sercos3_irqcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.sercos3_priv* }
%struct.sercos3_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, i64)* @sercos3_irqcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sercos3_irqcontrol(%struct.uio_info* %0, i64 %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sercos3_priv*, align 8
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %7 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %6, i32 0, i32 0
  %8 = load %struct.sercos3_priv*, %struct.sercos3_priv** %7, align 8
  store %struct.sercos3_priv* %8, %struct.sercos3_priv** %5, align 8
  %9 = load %struct.sercos3_priv*, %struct.sercos3_priv** %5, align 8
  %10 = getelementptr inbounds %struct.sercos3_priv, %struct.sercos3_priv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %16 = load %struct.sercos3_priv*, %struct.sercos3_priv** %5, align 8
  %17 = call i32 @sercos3_enable_interrupts(%struct.uio_info* %15, %struct.sercos3_priv* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %20 = load %struct.sercos3_priv*, %struct.sercos3_priv** %5, align 8
  %21 = call i32 @sercos3_disable_interrupts(%struct.uio_info* %19, %struct.sercos3_priv* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.sercos3_priv*, %struct.sercos3_priv** %5, align 8
  %24 = getelementptr inbounds %struct.sercos3_priv, %struct.sercos3_priv* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_irq(i32* %24)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sercos3_enable_interrupts(%struct.uio_info*, %struct.sercos3_priv*) #1

declare dso_local i32 @sercos3_disable_interrupts(%struct.uio_info*, %struct.sercos3_priv*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
