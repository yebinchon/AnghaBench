; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_down_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_phy_down_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.device*, %struct.hisi_sas_phy* }
%struct.device = type { i32 }
%struct.hisi_sas_phy = type { i32, %struct.hisi_sas_port* }
%struct.hisi_sas_port = type { i32 }

@PHYCTRL_NOT_RDY_MSK = common dso_local global i32 0, align 4
@PHY_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"phydown: phy%d phy_state=0x%x\0A\00", align 1
@SL_CONTROL = common dso_local global i32 0, align 4
@SL_CONTROL_CTA_MSK = common dso_local global i32 0, align 4
@TXID_AUTO = common dso_local global i32 0, align 4
@TXID_AUTO_CT3_MSK = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT0_NOT_RDY_MSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hisi_hba*)* @phy_down_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_down_v2_hw(i32 %0, %struct.hisi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hisi_sas_phy*, align 8
  %9 = alloca %struct.hisi_sas_port*, align 8
  %10 = alloca %struct.device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hisi_hba* %1, %struct.hisi_hba** %4, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 2
  %13 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %13, i64 %15
  store %struct.hisi_sas_phy* %16, %struct.hisi_sas_phy** %8, align 8
  %17 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %8, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %17, i32 0, i32 1
  %19 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %18, align 8
  store %struct.hisi_sas_port* %19, %struct.hisi_sas_port** %9, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %10, align 8
  %23 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %8, align 8
  %24 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %23, i32 0, i32 0
  %25 = call i32 @del_timer(i32* %24)
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PHYCTRL_NOT_RDY_MSK, align 4
  %29 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %26, i32 %27, i32 %28, i32 1)
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %31 = load i32, i32* @PHY_STATE, align 4
  %32 = call i32 @hisi_sas_read32(%struct.hisi_hba* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_info(%struct.device* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = call i32 @hisi_sas_phy_down(%struct.hisi_hba* %37, i32 %38, i32 %45)
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SL_CONTROL, align 4
  %50 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SL_CONTROL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SL_CONTROL_CTA_MSK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %51, i32 %52, i32 %53, i32 %57)
  %59 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %9, align 8
  %60 = icmp ne %struct.hisi_sas_port* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %2
  %62 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %63 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %9, align 8
  %64 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @get_wideport_bitmap_v2_hw(%struct.hisi_hba* %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %70 = call i32 @check_any_wideports_v2_hw(%struct.hisi_hba* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %74 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %73, i32 0, i32 0
  %75 = call i64 @timer_pending(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %79 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %78, i32 0, i32 0
  %80 = call i32 @del_timer(i32* %79)
  br label %81

81:                                               ; preds = %77, %72, %68
  br label %82

82:                                               ; preds = %81, %61, %2
  %83 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @TXID_AUTO, align 4
  %86 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %83, i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @TXID_AUTO, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @TXID_AUTO_CT3_MSK, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %87, i32 %88, i32 %89, i32 %92)
  %94 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @CHL_INT0, align 4
  %97 = load i32, i32* @CHL_INT0_NOT_RDY_MSK, align 4
  %98 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @PHYCTRL_NOT_RDY_MSK, align 4
  %102 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %99, i32 %100, i32 %101, i32 0)
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %103
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_down(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @get_wideport_bitmap_v2_hw(%struct.hisi_hba*, i32) #1

declare dso_local i32 @check_any_wideports_v2_hw(%struct.hisi_hba*) #1

declare dso_local i64 @timer_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
