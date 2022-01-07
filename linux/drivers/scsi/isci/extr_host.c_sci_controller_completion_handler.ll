; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_completion_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_completion_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SMU_ISR_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*)* @sci_controller_completion_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_controller_completion_handler(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %3 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %4 = call i64 @sci_controller_completion_queue_has_entries(%struct.isci_host* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %8 = call i32 @sci_controller_process_completions(%struct.isci_host* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @SMU_ISR_COMPLETION, align 4
  %11 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %12 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @writel(i32 %10, i32* %14)
  %16 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %17 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @writel(i32 -16777216, i32* %19)
  %21 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %22 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @writel(i32 0, i32* %24)
  ret void
}

declare dso_local i64 @sci_controller_completion_queue_has_entries(%struct.isci_host*) #1

declare dso_local i32 @sci_controller_process_completions(%struct.isci_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
