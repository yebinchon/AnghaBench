; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_int_abnormal_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_int_abnormal_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_phy = type { %struct.asd_sas_phy, %struct.hisi_hba* }
%struct.asd_sas_phy = type { i32 }
%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@CHL_INT0_MSK = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT0_PHYCTRL_NOTRDY_MSK = common dso_local global i32 0, align 4
@PHY_STATE = common dso_local global i32 0, align 4
@CHL_INT0_ID_TIMEOUT_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"abnormal: ID_TIMEOUT phy%d identify timeout\0A\00", align 1
@CHL_INT0_DWS_LOST_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"abnormal: DWS_LOST phy%d dws lost\0A\00", align 1
@CHL_INT0_SN_FAIL_NGR_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"abnormal: SN_FAIL_NGR phy%d sn fail ngr\0A\00", align 1
@CHL_INT0_SL_IDAF_FAIL_MSK = common dso_local global i32 0, align 4
@CHL_INT0_SL_OPAF_FAIL_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"abnormal: SL_ID/OPAF_FAIL phy%d check adr frm err\0A\00", align 1
@CHL_INT0_SL_PS_FAIL_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"abnormal: SL_PS_FAIL phy%d fail\0A\00", align 1
@CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @int_abnormal_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_abnormal_v1_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.asd_sas_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.hisi_sas_phy*
  store %struct.hisi_sas_phy* %14, %struct.hisi_sas_phy** %5, align 8
  %15 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %15, i32 0, i32 1
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %16, align 8
  store %struct.hisi_hba* %17, %struct.hisi_hba** %6, align 8
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %21, i32 0, i32 0
  store %struct.asd_sas_phy* %22, %struct.asd_sas_phy** %8, align 8
  %23 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %24 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CHL_INT0_MSK, align 4
  %29 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @CHL_INT0_MSK, align 4
  %33 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %30, i32 %31, i32 %32, i32 4194303)
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @CHL_INT0, align 4
  %37 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CHL_INT0_PHYCTRL_NOTRDY_MSK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %2
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %44 = load i32, i32* @PHY_STATE, align 4
  %45 = call i32 @hisi_sas_read32(%struct.hisi_hba* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = call i32 @hisi_sas_phy_down(%struct.hisi_hba* %46, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %42, %2
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @CHL_INT0_ID_TIMEOUT_MSK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CHL_INT0_DWS_LOST_MSK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CHL_INT0_SN_FAIL_NGR_MSK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @CHL_INT0_SL_IDAF_FAIL_MSK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @CHL_INT0_SL_OPAF_FAIL_MSK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88, %83
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @CHL_INT0_SL_PS_FAIL_OFF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @CHL_INT0, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @CHL_INT0_PHYCTRL_NOTRDY_MSK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %106
  %117 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @CHL_INT0_MSK, align 4
  %120 = load i32, i32* @CHL_INT0_MSK_PHYCTRL_NOTRDY_MSK, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 4194303, %121
  %123 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %117, i32 %118, i32 %119, i32 %122)
  br label %130

124:                                              ; preds = %106
  %125 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @CHL_INT0_MSK, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %125, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %116
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %131
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_phy_down(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
