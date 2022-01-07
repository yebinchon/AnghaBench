; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ST_NCI_APDU_READER_GATE = common dso_local global i32 0, align 4
@ST_NCI_EVT_TRANSMIT_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_nci_se_io(%struct.nci_dev* %0, i32 %1, i32* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %16 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %15)
  store %struct.st_nci_info* %16, %struct.st_nci_info** %14, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %48 [
    i32 128, label %19
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.st_nci_info*, %struct.st_nci_info** %14, align 8
  %22 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct.st_nci_info*, %struct.st_nci_info** %14, align 8
  %26 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %24, i8** %27, align 8
  %28 = load %struct.st_nci_info*, %struct.st_nci_info** %14, align 8
  %29 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.st_nci_info*, %struct.st_nci_info** %14, align 8
  %33 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  %37 = add nsw i64 %31, %36
  %38 = call i32 @mod_timer(i32* %30, i64 %37)
  %39 = load %struct.st_nci_info*, %struct.st_nci_info** %14, align 8
  %40 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %43 = load i32, i32* @ST_NCI_APDU_READER_GATE, align 4
  %44 = load i32, i32* @ST_NCI_EVT_TRANSMIT_DATA, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @nci_hci_send_event(%struct.nci_dev* %42, i32 %43, i32 %44, i32* %45, i64 %46)
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %6
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %19
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nci_hci_send_event(%struct.nci_dev*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
