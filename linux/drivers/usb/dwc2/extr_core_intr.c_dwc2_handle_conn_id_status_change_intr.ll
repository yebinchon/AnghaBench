; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_conn_id_status_change_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_conn_id_status_change_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i64, i32 }

@GINTSTS_CONIDSTSCHNG = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_SOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c" ++Connector ID Status Change Interrupt++  (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_handle_conn_id_status_change_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_handle_conn_id_status_change_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = load i32, i32* @GINTSTS_CONIDSTSCHNG, align 4
  %6 = load i32, i32* @GINTSTS, align 4
  %7 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %4, i32 %5, i32 %6)
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %9 = load i32, i32* @GINTMSK, align 4
  %10 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @GINTSTS_SOF, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GINTMSK, align 4
  %18 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %15, i32 %16, i32 %17)
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %23 = call i64 @dwc2_is_host_mode(%struct.dwc2_hsotg* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %39, i32 0, i32 1
  %41 = call i32 @queue_work(i64 %38, i32* %40)
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %43 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  br label %45

45:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i64 @dwc2_is_host_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i64, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
