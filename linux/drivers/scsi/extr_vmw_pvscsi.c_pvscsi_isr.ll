; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, i32, i32, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pvscsi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pvscsi_adapter*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pvscsi_adapter*
  store %struct.pvscsi_adapter* %8, %struct.pvscsi_adapter** %5, align 8
  %9 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %14 = call i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter* %13)
  %15 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %21 = call i64 @pvscsi_msg_pending(%struct.pvscsi_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %27, i32 0, i32 1
  %29 = call i32 @queue_work(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %23, %19, %2
  %31 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter*) #1

declare dso_local i64 @pvscsi_msg_pending(%struct.pvscsi_adapter*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
