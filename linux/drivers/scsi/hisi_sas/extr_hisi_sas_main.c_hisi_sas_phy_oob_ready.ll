; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_oob_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_oob_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device*, %struct.hisi_sas_phy* }
%struct.device = type { i32 }
%struct.hisi_sas_phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"phy%d OOB ready\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HISI_SAS_WAIT_PHYUP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_phy_oob_ready(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 1
  %9 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %9, i64 %11
  store %struct.hisi_sas_phy* %12, %struct.hisi_sas_phy** %5, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %16, i32 0, i32 0
  %18 = call i32 @timer_pending(%struct.TYPE_3__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @HISI_SAS_WAIT_PHYUP_TIMEOUT, align 4
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %31 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %34 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %33, i32 0, i32 0
  %35 = call i32 @add_timer(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
