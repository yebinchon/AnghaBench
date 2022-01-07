; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_assign_task_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_assign_task_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@STARTING = common dso_local global i32 0, align 4
@ENDING = common dso_local global i32 0, align 4
@RANGE_CHECK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*)* @sci_controller_assign_task_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_controller_assign_task_entries(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %4 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %5 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @STARTING, align 4
  %12 = call i32 @SMU_TCA_GEN_VAL(i32 %11, i64 0)
  %13 = load i32, i32* @ENDING, align 4
  %14 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %15 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @SMU_TCA_GEN_VAL(i32 %13, i64 %17)
  %19 = or i32 %12, %18
  %20 = load i32, i32* @RANGE_CHECK_ENABLE, align 4
  %21 = call i32 @SMU_TCA_GEN_BIT(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %27 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @writel(i32 %25, i32* %31)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @SMU_TCA_GEN_VAL(i32, i64) #1

declare dso_local i32 @SMU_TCA_GEN_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
