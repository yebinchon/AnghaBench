; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_qmu_done_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_qmu_done_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*, i32)* @qmu_done_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmu_done_isr(%struct.mtu3* %0, i32 %1) #0 {
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %9 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @QMU_RX_DONE_INT(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @qmu_done_rx(%struct.mtu3* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @QMU_TX_DONE_INT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @qmu_done_tx(%struct.mtu3* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @QMU_RX_DONE_INT(i32) #1

declare dso_local i32 @qmu_done_rx(%struct.mtu3*, i32) #1

declare dso_local i32 @QMU_TX_DONE_INT(i32) #1

declare dso_local i32 @qmu_done_tx(%struct.mtu3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
