; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_enable_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_enable_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"st_nci_enable_se\0A\00", align 1
@ST_NCI_SE_MODE_ON = common dso_local global i32 0, align 4
@ST_NCI_ESE_HOST_ID = common dso_local global i32 0, align 4
@ST_NCI_APDU_READER_GATE = common dso_local global i32 0, align 4
@ST_NCI_EVT_SE_SOFT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_nci_enable_se(%struct.nci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ST_NCI_SE_MODE_ON, align 4
  %11 = call i32 @st_nci_control_se(%struct.nci_dev* %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ST_NCI_ESE_HOST_ID, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %17 = call i32 @st_nci_se_get_atr(%struct.nci_dev* %16)
  %18 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %19 = load i32, i32* @ST_NCI_APDU_READER_GATE, align 4
  %20 = load i32, i32* @ST_NCI_EVT_SE_SOFT_RESET, align 4
  %21 = call i32 @nci_hci_send_event(%struct.nci_dev* %18, i32 %19, i32 %20, i32* null, i32 0)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @nfc_remove_se(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @st_nci_control_se(%struct.nci_dev*, i32, i32) #1

declare dso_local i32 @st_nci_se_get_atr(%struct.nci_dev*) #1

declare dso_local i32 @nci_hci_send_event(%struct.nci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_remove_se(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
