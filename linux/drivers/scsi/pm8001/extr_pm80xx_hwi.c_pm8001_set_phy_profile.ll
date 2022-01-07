; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm8001_set_phy_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm8001_set_phy_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SAS_PHY_ANALOG_SETTINGS_PAGE = common dso_local global i32 0, align 4
@PHY_DWORD_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"phy settings completed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_set_phy_profile(%struct.pm8001_hba_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %27, %3
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %11 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %9, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %18 = load i32, i32* @SAS_PHY_ANALOG_SETTINGS_PAGE, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to i64*
  %23 = call i32 @mpi_set_phy_profile_req(%struct.pm8001_hba_info* %17, i32 %18, i64 %19, i64 %20, i64* %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @PHY_DWORD_LENGTH, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %32 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %31, i32 %32)
  ret void
}

declare dso_local i32 @mpi_set_phy_profile_req(%struct.pm8001_hba_info*, i32, i64, i64, i64*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
