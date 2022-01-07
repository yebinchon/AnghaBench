; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hw_tpe_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hw_tpe_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, i32, i32 }
%struct.timer_list = type { i32 }

@hw_check = common dso_local global i32 0, align 4
@BEISCSI_UE_DETECT_INTERVAL = common dso_local global i64 0, align 8
@phba = common dso_local global %struct.beiscsi_hba* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @beiscsi_hw_tpe_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_hw_tpe_check(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = ptrtoint %struct.beiscsi_hba* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @hw_check, align 4
  %9 = call %struct.beiscsi_hba* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.beiscsi_hba* %9, %struct.beiscsi_hba** %3, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = call i32 @beiscsi_detect_tpe(%struct.beiscsi_hba* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  store i32 4000, i32* %4, align 4
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BEISCSI_UE_DETECT_INTERVAL, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BEISCSI_UE_DETECT_INTERVAL, align 8
  %25 = sub nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 1
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @msecs_to_jiffies(i32 %33)
  %35 = call i32 @queue_delayed_work(i32 %30, i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %13
  ret void
}

declare dso_local %struct.beiscsi_hba* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @beiscsi_detect_tpe(%struct.beiscsi_hba*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
