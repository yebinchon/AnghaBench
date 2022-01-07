; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_port_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_port_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_port*, %struct.pm8001_phy* }
%struct.pm8001_port = type { i32 }
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hw_event_resp = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@PHY_NOTIFY_ENABLE_SPINUP = common dso_local global i32 0, align 4
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@PHY_STATE_LINK_UP_SPCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @hw_event_port_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_event_port_recover(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hw_event_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pm8001_phy*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pm8001_port*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr i8, i8* %14, i64 4
  %16 = bitcast i8* %15 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %16, %struct.hw_event_resp** %5, align 8
  %17 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %18 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 16711680
  %23 = ashr i32 %22, 16
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %26 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %30 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -268435456
  %35 = lshr i32 %34, 28
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %38 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %37, i32 0, i32 1
  %39 = load %struct.pm8001_phy*, %struct.pm8001_phy** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %39, i64 %40
  store %struct.pm8001_phy* %41, %struct.pm8001_phy** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 0
  %47 = load %struct.pm8001_port*, %struct.pm8001_port** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %47, i64 %48
  store %struct.pm8001_port* %49, %struct.pm8001_port** %13, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @SAS_END_DEVICE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @PHY_NOTIFY_ENABLE_SPINUP, align 4
  %57 = call i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info* %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %2
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = shl i32 1, %60
  %62 = load %struct.pm8001_port*, %struct.pm8001_port** %13, align 8
  %63 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.pm8001_phy*, %struct.pm8001_phy** %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %66, i64 %67)
  %69 = load i32, i32* @SAS_OOB_MODE, align 4
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %11, align 8
  %71 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @PHY_STATE_LINK_UP_SPCV, align 4
  %74 = load %struct.pm8001_phy*, %struct.pm8001_phy** %11, align 8
  %75 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pm8001_phy*, %struct.pm8001_phy** %11, align 8
  %77 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info*, i64, i32) #1

declare dso_local i32 @pm8001_get_lrate_mode(%struct.pm8001_phy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
