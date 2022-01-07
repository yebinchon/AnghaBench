; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.st_nci_se_status = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.st_nci_se_status*, i32, i32, i32, i32 }

@st_nci_se_wt_timeout = common dso_local global i32 0, align 4
@st_nci_se_activation_timeout = common dso_local global i32 0, align 4
@ST_NCI_ATR_DEFAULT_BWI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_nci_se_init(%struct.nci_dev* %0, %struct.st_nci_se_status* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.st_nci_se_status*, align 8
  %5 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.st_nci_se_status* %1, %struct.st_nci_se_status** %4, align 8
  %6 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %7 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %6)
  store %struct.st_nci_info* %7, %struct.st_nci_info** %5, align 8
  %8 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %9 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %13 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  %15 = load i32, i32* @st_nci_se_wt_timeout, align 4
  %16 = call i32 @timer_setup(i32* %14, i32 %15, i32 0)
  %17 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %18 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %21 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i32, i32* @st_nci_se_activation_timeout, align 4
  %24 = call i32 @timer_setup(i32* %22, i32 %23, i32 0)
  %25 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %26 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %29 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @ST_NCI_ATR_DEFAULT_BWI, align 4
  %32 = call i32 @ST_NCI_BWI_TO_TIMEOUT(i32 %31)
  %33 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %34 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load %struct.st_nci_se_status*, %struct.st_nci_se_status** %4, align 8
  %37 = load %struct.st_nci_info*, %struct.st_nci_info** %5, align 8
  %38 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store %struct.st_nci_se_status* %36, %struct.st_nci_se_status** %39, align 8
  ret i32 0
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ST_NCI_BWI_TO_TIMEOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
