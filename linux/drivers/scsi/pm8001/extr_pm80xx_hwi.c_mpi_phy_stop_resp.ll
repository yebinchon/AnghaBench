; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_phy_stop_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_phy_stop_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_phy* }
%struct.pm8001_phy = type { i32 }
%struct.phy_stop_resp = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"phy:0x%x status:0x%x\0A\00", align 1
@PHY_STOP_SUCCESS = common dso_local global i64 0, align 8
@PHY_STOP_ERR_DEVICE_ATTACHED = common dso_local global i64 0, align 8
@PHY_LINK_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_phy_stop_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_phy_stop_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.phy_stop_resp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr i8, i8* %9, i64 4
  %11 = bitcast i8* %10 to %struct.phy_stop_resp*
  store %struct.phy_stop_resp* %11, %struct.phy_stop_resp** %5, align 8
  %12 = load %struct.phy_stop_resp*, %struct.phy_stop_resp** %5, align 8
  %13 = getelementptr inbounds %struct.phy_stop_resp, %struct.phy_stop_resp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load %struct.phy_stop_resp*, %struct.phy_stop_resp** %5, align 8
  %18 = getelementptr inbounds %struct.phy_stop_resp, %struct.phy_stop_resp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %24 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %23, i32 0, i32 0
  %25 = load %struct.pm8001_phy*, %struct.pm8001_phy** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %25, i64 %26
  store %struct.pm8001_phy* %27, %struct.pm8001_phy** %8, align 8
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  %32 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %28, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PHY_STOP_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %2
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @PHY_STOP_ERR_DEVICE_ATTACHED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %2
  %41 = load i32, i32* @PHY_LINK_DISABLE, align 4
  %42 = load %struct.pm8001_phy*, %struct.pm8001_phy** %8, align 8
  %43 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
