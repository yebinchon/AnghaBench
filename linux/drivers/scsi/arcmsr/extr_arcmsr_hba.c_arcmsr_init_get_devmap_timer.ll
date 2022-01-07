; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_init_get_devmap_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_init_get_devmap_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@arcmsr_message_isr_bh_fn = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@arcmsr_request_device_map = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_init_get_devmap_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_init_get_devmap_timer(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %3 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %4 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %3, i32 0, i32 4
  %5 = load i32, i32* @arcmsr_message_isr_bh_fn, align 4
  %6 = call i32 @INIT_WORK(i32* %4, i32 %5)
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 3
  %9 = call i32 @atomic_set(i32* %8, i32 16)
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %11 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %10, i32 0, i32 2
  %12 = call i32 @atomic_set(i32* %11, i32 16)
  %13 = load i32, i32* @FW_NORMAL, align 4
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 0
  %18 = load i32, i32* @arcmsr_request_device_map, align 4
  %19 = call i32 @timer_setup(%struct.TYPE_3__* %17, i32 %18, i32 0)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 6, %21
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  %24 = add nsw i64 %20, %23
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 0
  %30 = call i32 @add_timer(%struct.TYPE_3__* %29)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
