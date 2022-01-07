; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_adapter_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_adapter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32 }

@MU_INTSTAT_POST_OUT = common dso_local global i32 0, align 4
@MU_OUT_LIST_INT_STAT = common dso_local global i32 0, align 4
@MU_OLIS_INT = common dso_local global i32 0, align 4
@MU_INTSTAT_DRBL = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@ESAS2R_INT_STS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_adapter_interrupt(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MU_INTSTAT_POST_OUT, align 4
  %8 = and i32 %6, %7
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %13 = load i32, i32* @MU_OUT_LIST_INT_STAT, align 4
  %14 = load i32, i32* @MU_OLIS_INT, align 4
  %15 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %12, i32 %13, i32 %14)
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %17 = load i32, i32* @MU_OUT_LIST_INT_STAT, align 4
  %18 = call i32 @esas2r_flush_register_dword(%struct.esas2r_adapter* %16, i32 %17)
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %20 = call i32 @esas2r_get_outbound_responses(%struct.esas2r_adapter* %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MU_INTSTAT_DRBL, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %31 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %32 = call i64 @esas2r_read_register_dword(%struct.esas2r_adapter* %30, i32 %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @esas2r_doorbell_interrupt(%struct.esas2r_adapter* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* @ESAS2R_INT_STS_MASK, align 4
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %45 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %44)
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %46, i32 0, i32 1
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %55 = call i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter* %54)
  br label %56

56:                                               ; preds = %53, %40
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @esas2r_flush_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_get_outbound_responses(%struct.esas2r_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_doorbell_interrupt(%struct.esas2r_adapter*, i64) #1

declare dso_local i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @esas2r_do_deferred_processes(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
