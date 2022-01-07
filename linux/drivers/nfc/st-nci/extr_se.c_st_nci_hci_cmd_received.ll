; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_cmd_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_hci_cmd_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cmd: %x\0A\00", align 1
@ST_NCI_APDU_READER_GATE = common dso_local global i64 0, align 8
@ST_NCI_UICC_HOST_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st_nci_hci_cmd_received(%struct.nci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.st_nci_info*, align 8
  %10 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %11 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %12 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %11)
  store %struct.st_nci_info* %12, %struct.st_nci_info** %9, align 8
  %13 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %7, align 8
  switch i64 %24, label %77 [
    i64 128, label %25
  ]

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @ST_NCI_APDU_READER_GATE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ST_NCI_UICC_HOST_ID, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %29, %25
  %49 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %48
  %61 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %62 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = call i32 @del_timer_sync(i32* %63)
  %65 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %66 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %69 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.st_nci_info*, %struct.st_nci_info** %9, align 8
  %73 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = call i32 @complete(i32* %74)
  br label %76

76:                                               ; preds = %60, %48
  br label %77

77:                                               ; preds = %4, %76
  ret void
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
