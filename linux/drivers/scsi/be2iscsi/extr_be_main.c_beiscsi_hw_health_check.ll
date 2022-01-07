; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hw_health_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hw_health_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@hw_check = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BM_%d : port in error: %lx\0A\00", align 1
@BEISCSI_HBA_UER_SUPP = common dso_local global i32 0, align 4
@beiscsi_hw_tpe_check = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BEISCSI_UE_DETECT_INTERVAL = common dso_local global i32 0, align 4
@phba = common dso_local global %struct.beiscsi_hba* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @beiscsi_hw_health_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_hw_health_check(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.beiscsi_hba*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %5 = ptrtoint %struct.beiscsi_hba* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @hw_check, align 4
  %8 = call %struct.beiscsi_hba* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.beiscsi_hba* %8, %struct.beiscsi_hba** %3, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %10 = call i64 @beiscsi_detect_ue(%struct.beiscsi_hba* %9)
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = call i64 @beiscsi_detect_ue(%struct.beiscsi_hba* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %15, i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 2
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  %27 = load i32, i32* @BEISCSI_HBA_UER_SUPP, align 4
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 1
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  br label %46

33:                                               ; preds = %14
  %34 = load i32, i32* @beiscsi_hw_tpe_check, align 4
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 0
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @BEISCSI_UE_DETECT_INTERVAL, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @mod_timer(%struct.TYPE_2__* %40, i64 %44)
  br label %46

46:                                               ; preds = %38, %32
  ret void
}

declare dso_local %struct.beiscsi_hba* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @beiscsi_detect_ue(%struct.beiscsi_hba*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
