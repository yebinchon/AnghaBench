; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_polled_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_polled_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }

@MU_INT_STATUS_OUT = common dso_local global i32 0, align 4
@MU_INTSTAT_POST_OUT = common dso_local global i32 0, align 4
@MU_OUT_LIST_INT_STAT = common dso_local global i32 0, align 4
@MU_OLIS_INT = common dso_local global i32 0, align 4
@MU_INTSTAT_DRBL = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_polled_interrupt(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %6 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %5)
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %8 = load i32, i32* @MU_INT_STATUS_OUT, align 4
  %9 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MU_INTSTAT_POST_OUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = load i32, i32* @MU_OUT_LIST_INT_STAT, align 4
  %17 = load i32, i32* @MU_OLIS_INT, align 4
  %18 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %15, i32 %16, i32 %17)
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %20 = load i32, i32* @MU_OUT_LIST_INT_STAT, align 4
  %21 = call i32 @esas2r_flush_register_dword(%struct.esas2r_adapter* %19, i32 %20)
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %23 = call i32 @esas2r_get_outbound_responses(%struct.esas2r_adapter* %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MU_INTSTAT_DRBL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %31 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %32 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @esas2r_doorbell_interrupt(%struct.esas2r_adapter* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %42 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %41)
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %43, i32 0, i32 0
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %49 = call i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter* %48)
  br label %50

50:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @esas2r_flush_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_get_outbound_responses(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_doorbell_interrupt(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
