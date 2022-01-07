; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_debugfs_set_bist_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_debugfs_set_bist_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"BIST info:linkrate=%d phy_id=%d code_mode=%d path_mode=%d\0A\00", align 1
@PROG_PHY_LINK_RATE = common dso_local global i32 0, align 4
@CFG_PROG_PHY_LINK_RATE_MSK = common dso_local global i32 0, align 4
@CFG_PROG_PHY_LINK_RATE_OFF = common dso_local global i32 0, align 4
@SAS_PHY_BIST_CTRL = common dso_local global i32 0, align 4
@CFG_BIST_MODE_SEL_MSK = common dso_local global i32 0, align 4
@CFG_LOOP_TEST_MODE_MSK = common dso_local global i32 0, align 4
@CFG_RX_BIST_EN_MSK = common dso_local global i32 0, align 4
@CFG_TX_BIST_EN_MSK = common dso_local global i32 0, align 4
@CFG_BIST_TEST_MSK = common dso_local global i32 0, align 4
@CFG_BIST_MODE_SEL_OFF = common dso_local global i32 0, align 4
@CFG_LOOP_TEST_MODE_OFF = common dso_local global i32 0, align 4
@SAS_PHY_BIST_CODE = common dso_local global i32 0, align 4
@SAS_PHY_BIST_CODE_INIT = common dso_local global i32 0, align 4
@SAS_PHY_BIST_CODE1 = common dso_local global i32 0, align 4
@SAS_PHY_BIST_CODE1_INIT = common dso_local global i32 0, align 4
@SAS_BIST_ERR_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32)* @debugfs_set_bist_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_set_bist_v3_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 5
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %11, align 8
  %27 = load %struct.device*, %struct.device** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @dev_info(%struct.device* %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %118

39:                                               ; preds = %2
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %41 = call i32 @hisi_sas_bist_test_prep_v3_hw(%struct.hisi_hba* %40)
  %42 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PROG_PHY_LINK_RATE, align 4
  %45 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @CFG_PROG_PHY_LINK_RATE_MSK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @CFG_PROG_PHY_LINK_RATE_OFF, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PROG_PHY_LINK_RATE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SAS_PHY_BIST_CTRL, align 4
  %63 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @CFG_BIST_MODE_SEL_MSK, align 4
  %65 = load i32, i32* @CFG_LOOP_TEST_MODE_MSK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CFG_RX_BIST_EN_MSK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CFG_TX_BIST_EN_MSK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CFG_BIST_TEST_MSK, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @CFG_BIST_MODE_SEL_OFF, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @CFG_LOOP_TEST_MODE_OFF, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* @CFG_BIST_TEST_MSK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SAS_PHY_BIST_CTRL, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %87, i32 %88, i32 %89, i32 %90)
  %92 = call i32 @mdelay(i32 100)
  %93 = load i32, i32* @CFG_RX_BIST_EN_MSK, align 4
  %94 = load i32, i32* @CFG_TX_BIST_EN_MSK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @SAS_PHY_BIST_CTRL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @SAS_PHY_BIST_CODE, align 4
  %106 = load i32, i32* @SAS_PHY_BIST_CODE_INIT, align 4
  %107 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @SAS_PHY_BIST_CODE1, align 4
  %111 = load i32, i32* @SAS_PHY_BIST_CODE1_INIT, align 4
  %112 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %108, i32 %109, i32 %110, i32 %111)
  %113 = call i32 @mdelay(i32 100)
  %114 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @SAS_BIST_ERR_CNT, align 4
  %117 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %114, i32 %115, i32 %116)
  br label %129

118:                                              ; preds = %2
  %119 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @SAS_BIST_ERR_CNT, align 4
  %122 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %119, i32 %120, i32 %121)
  %123 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %124 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %128 = call i32 @hisi_sas_bist_test_restore_v3_hw(%struct.hisi_hba* %127)
  br label %129

129:                                              ; preds = %118, %39
  ret i32 0
}

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hisi_sas_bist_test_prep_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hisi_sas_bist_test_restore_v3_hw(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
