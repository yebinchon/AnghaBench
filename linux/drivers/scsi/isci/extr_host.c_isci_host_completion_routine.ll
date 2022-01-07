; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_host_completion_routine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_host_completion_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@NUMBER = common dso_local global i32 0, align 4
@TIMER = common dso_local global i32 0, align 4
@ISCI_COALESCE_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_host_completion_routine(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.isci_host*
  store %struct.isci_host* %6, %struct.isci_host** %3, align 8
  %7 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %8 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %11 = call i32 @sci_controller_completion_handler(%struct.isci_host* %10)
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 1
  %14 = call i32 @spin_unlock_irq(i32* %13)
  %15 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %16 = call i64 @isci_tci_active(%struct.isci_host* %15)
  %17 = load i64, i64* @SCI_MAX_PORTS, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %4, align 8
  %19 = load i32, i32* @NUMBER, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @SMU_ICC_GEN_VAL(i32 %19, i64 %20)
  %22 = load i32, i32* @TIMER, align 4
  %23 = load i64, i64* @ISCI_COALESCE_BASE, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @ilog2(i64 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @SMU_ICC_GEN_VAL(i32 %22, i64 %26)
  %28 = or i32 %21, %27
  %29 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %30 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @writel(i32 %28, i32* %32)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sci_controller_completion_handler(%struct.isci_host*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @isci_tci_active(%struct.isci_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @SMU_ICC_GEN_VAL(i32, i64) #1

declare dso_local i64 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
