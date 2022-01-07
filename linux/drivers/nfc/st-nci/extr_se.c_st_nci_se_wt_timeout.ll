; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_wt_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_se_wt_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.st_nci_info = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 (i32, i32*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@se_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ST_NCI_APDU_READER_GATE = common dso_local global i32 0, align 4
@ST_NCI_EVT_SE_SOFT_RESET = common dso_local global i32 0, align 4
@ST_NCI_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST_NCI_EVT_SE_HARD_RESET = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@info = common dso_local global %struct.st_nci_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @st_nci_se_wt_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_nci_se_wt_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_nci_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %6 = ptrtoint %struct.st_nci_info* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @se_info, i32 0, i32 0), align 4
  %9 = call %struct.st_nci_info* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.st_nci_info* %9, %struct.st_nci_info** %4, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %12 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %15 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %21 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %24 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ST_NCI_APDU_READER_GATE, align 4
  %29 = load i32, i32* @ST_NCI_EVT_SE_SOFT_RESET, align 4
  %30 = call i32 @nci_hci_send_event(i32 %27, i32 %28, i32 %29, i32* null, i32 0)
  br label %43

31:                                               ; preds = %1
  %32 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %33 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %36 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ST_NCI_DEVICE_MGNT_GATE, align 4
  %41 = load i32, i32* @ST_NCI_EVT_SE_HARD_RESET, align 4
  %42 = call i32 @nci_hci_send_event(i32 %39, i32 %40, i32 %41, i32* %3, i32 1)
  br label %43

43:                                               ; preds = %31, %19
  %44 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %45 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %46, align 8
  %48 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %49 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ETIME, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 %47(i32 %51, i32* null, i32 0, i32 %53)
  ret void
}

declare dso_local %struct.st_nci_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nci_hci_send_event(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
