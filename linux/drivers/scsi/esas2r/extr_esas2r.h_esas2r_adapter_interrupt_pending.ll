; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_adapter_interrupt_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_adapter_interrupt_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }

@MU_INT_STATUS_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*)* @esas2r_adapter_interrupt_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_adapter_interrupt_pending(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %12 = load i32, i32* @MU_INT_STATUS_OUT, align 4
  %13 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %10
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %23 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %20, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
