; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_fix_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_fix_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.mvs_phy* }
%struct.mvs_phy = type { i32, i32, i32, i32, i32, i32, i32, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32 }
%struct.sas_identify_frame = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"get all reg link rate is 0x%x\0A\00", align 1
@PHY_NEG_SPP_PHYS_LINK_RATE_MASK = common dso_local global i32 0, align 4
@PHY_NEG_SPP_PHYS_LINK_RATE_MASK_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"get link rate is %d\0A\00", align 1
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@SAS_LINK_RATE_6_0_GBPS = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_DEV_STP_TRGT = common dso_local global i32 0, align 4
@PHYR_PHY_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, %struct.sas_identify_frame*)* @mvs_94xx_fix_phy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_fix_phy_info(%struct.mvs_info* %0, i32 %1, %struct.sas_identify_frame* %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_identify_frame*, align 8
  %7 = alloca %struct.mvs_phy*, align 8
  %8 = alloca %struct.asd_sas_phy*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sas_identify_frame* %2, %struct.sas_identify_frame** %6, align 8
  %9 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %10 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %9, i32 0, i32 0
  %11 = load %struct.mvs_phy*, %struct.mvs_phy** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %11, i64 %13
  store %struct.mvs_phy* %14, %struct.mvs_phy** %7, align 8
  %15 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %16 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %15, i32 0, i32 7
  store %struct.asd_sas_phy* %16, %struct.asd_sas_phy** %8, align 8
  %17 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %18 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mv_dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %22 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PHY_NEG_SPP_PHYS_LINK_RATE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @PHY_NEG_SPP_PHYS_LINK_RATE_MASK_OFFSET, align 4
  %27 = ashr i32 %25, %26
  %28 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %29 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %31 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 8
  store i32 %33, i32* %31, align 4
  %34 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %8, align 8
  %35 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mv_dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %39 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %40 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SAS_LINK_RATE_6_0_GBPS, align 4
  %42 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %43 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %6, align 8
  %47 = call i32 @mvs_94xx_get_dev_identify_frame(%struct.mvs_info* %44, i32 %45, %struct.sas_identify_frame* %46)
  %48 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %6, align 8
  %49 = call i32 @mvs_94xx_make_dev_info(%struct.sas_identify_frame* %48)
  %50 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %51 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %53 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PORT_TYPE_SAS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %3
  %59 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %6, align 8
  %62 = call i32 @mvs_94xx_get_att_identify_frame(%struct.mvs_info* %59, i32 %60, %struct.sas_identify_frame* %61)
  %63 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %6, align 8
  %64 = call i32 @mvs_94xx_make_att_info(%struct.sas_identify_frame* %63)
  %65 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %66 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %6, align 8
  %68 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %73 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %79

74:                                               ; preds = %3
  %75 = load i32, i32* @PORT_DEV_STP_TRGT, align 4
  %76 = or i32 %75, 1
  %77 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %78 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %58
  %80 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @PHYR_PHY_STAT, align 4
  %83 = call i32 @mvs_write_port_cfg_addr(%struct.mvs_info* %80, i32 %81, i32 %82)
  %84 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @mvs_write_port_cfg_data(%struct.mvs_info* %84, i32 %85, i32 4)
  ret void
}

declare dso_local i32 @mv_dprintk(i8*, i32) #1

declare dso_local i32 @mvs_94xx_get_dev_identify_frame(%struct.mvs_info*, i32, %struct.sas_identify_frame*) #1

declare dso_local i32 @mvs_94xx_make_dev_info(%struct.sas_identify_frame*) #1

declare dso_local i32 @mvs_94xx_get_att_identify_frame(%struct.mvs_info*, i32, %struct.sas_identify_frame*) #1

declare dso_local i32 @mvs_94xx_make_att_info(%struct.sas_identify_frame*) #1

declare dso_local i32 @mvs_write_port_cfg_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_write_port_cfg_data(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
