; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, %struct.mvs_phy* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mvs_phy = type { i32*, i32, i32*, %struct.mvs_info*, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32, i32, %struct.mvs_phy*, %struct.sas_ha_struct*, i32*, i32*, i32, i32, i32, i32, i64, i32, i32 }
%struct.sas_ha_struct = type { i32 }

@SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PHY_TYPE_PHYSICAL = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@OOB_NOT_CONNECTED = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_phy_init(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %8 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %7, i32 0, i32 3
  %9 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %9, i64 %11
  store %struct.mvs_phy* %12, %struct.mvs_phy** %5, align 8
  %13 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %14 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %13, i32 0, i32 4
  store %struct.asd_sas_phy* %14, %struct.asd_sas_phy** %6, align 8
  %15 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %16 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %17 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %16, i32 0, i32 3
  store %struct.mvs_info* %15, %struct.mvs_info** %17, align 8
  %18 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %19 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %21 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %20, i32 0, i32 1
  %22 = call i32 @timer_setup(i32* %21, i32* null, i32 0)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %25 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %33 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @SAS, align 4
  %35 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %36 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %38 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %39 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %41 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %40, i32 0, i32 10
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @PHY_TYPE_PHYSICAL, align 4
  %43 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %44 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %46 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %47 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @OOB_NOT_CONNECTED, align 4
  %49 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %50 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %52 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %53 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %56 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %58 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %62 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %64 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %68 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %70 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.sas_ha_struct*
  %75 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %76 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %75, i32 0, i32 3
  store %struct.sas_ha_struct* %74, %struct.sas_ha_struct** %76, align 8
  %77 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %78 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %79 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %78, i32 0, i32 2
  store %struct.mvs_phy* %77, %struct.mvs_phy** %79, align 8
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
