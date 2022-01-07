; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_phy_start_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_phy_start_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64, %struct.pm8001_phy* }
%struct.pm8001_phy = type { i32*, i32 }
%struct.phy_start_resp = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"phy start resp status:0x%x, phyid:0x%x\0A\00", align 1
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@PM8001F_RUN_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_phy_start_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_phy_start_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.phy_start_resp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr i8, i8* %9, i64 4
  %11 = bitcast i8* %10 to %struct.phy_start_resp*
  store %struct.phy_start_resp* %11, %struct.phy_start_resp** %5, align 8
  %12 = load %struct.phy_start_resp*, %struct.phy_start_resp** %5, align 8
  %13 = getelementptr inbounds %struct.phy_start_resp, %struct.phy_start_resp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.phy_start_resp*, %struct.phy_start_resp** %5, align 8
  %17 = getelementptr inbounds %struct.phy_start_resp, %struct.phy_start_resp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 1
  %22 = load %struct.pm8001_phy*, %struct.pm8001_phy** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %22, i64 %23
  store %struct.pm8001_phy* %24, %struct.pm8001_phy** %8, align 8
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %25, i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %2
  %33 = load i32, i32* @PHY_LINK_DOWN, align 4
  %34 = load %struct.pm8001_phy*, %struct.pm8001_phy** %8, align 8
  %35 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PM8001F_RUN_TIME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.pm8001_phy*, %struct.pm8001_phy** %8, align 8
  %43 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.pm8001_phy*, %struct.pm8001_phy** %8, align 8
  %48 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @complete(i32* %49)
  br label %51

51:                                               ; preds = %46, %41, %32
  br label %52

52:                                               ; preds = %51, %2
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
