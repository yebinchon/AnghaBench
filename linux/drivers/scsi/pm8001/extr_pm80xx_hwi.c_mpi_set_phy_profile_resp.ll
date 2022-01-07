; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_set_phy_profile_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_set_phy_profile_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.set_phy_profile_resp = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"PhyProfile command failed  with status 0x%08X \0A\00", align 1
@SAS_PHY_ANALOG_SETTINGS_PAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid page code 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_set_phy_profile_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_set_phy_profile_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.set_phy_profile_resp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr i8, i8* %10, i64 4
  %12 = bitcast i8* %11 to %struct.set_phy_profile_resp*
  store %struct.set_phy_profile_resp* %12, %struct.set_phy_profile_resp** %7, align 8
  %13 = load %struct.set_phy_profile_resp*, %struct.set_phy_profile_resp** %7, align 8
  %14 = getelementptr inbounds %struct.set_phy_profile_resp, %struct.set_phy_profile_resp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.set_phy_profile_resp*, %struct.set_phy_profile_resp** %7, align 8
  %18 = getelementptr inbounds %struct.set_phy_profile_resp, %struct.set_phy_profile_resp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = call i32 @pm8001_printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %28, i32 %31)
  store i32 -1, i32* %3, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @SAS_PHY_ANALOG_SETTINGS_PAGE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %38, i32 %40)
  store i32 -1, i32* %3, align 4
  br label %44

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37, %27
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
