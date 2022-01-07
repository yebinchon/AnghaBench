; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rx.c_aac_rx_select_comm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rx.c_aac_rx_select_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@aac_rx_enable_interrupt_producer = common dso_local global i32 0, align 4
@aac_rx_intr_producer = common dso_local global i32 0, align 4
@aac_rx_deliver_producer = common dso_local global i32 0, align 4
@aac_rx_enable_interrupt_message = common dso_local global i32 0, align 4
@aac_rx_intr_message = common dso_local global i32 0, align 4
@aac_rx_deliver_message = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_rx_select_comm(%struct.aac_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %33 [
    i32 128, label %7
    i32 129, label %20
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @aac_rx_enable_interrupt_producer, align 4
  %9 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %10 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @aac_rx_intr_producer, align 4
  %13 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %14 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @aac_rx_deliver_producer, align 4
  %17 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %18 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* @aac_rx_enable_interrupt_message, align 4
  %22 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %23 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @aac_rx_intr_message, align 4
  %26 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @aac_rx_deliver_message, align 4
  %30 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %31 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %34

33:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %20, %7
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
