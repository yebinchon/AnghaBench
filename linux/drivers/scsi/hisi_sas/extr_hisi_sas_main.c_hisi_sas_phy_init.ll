; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, %struct.hisi_sas_phy* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (...)* }
%struct.hisi_sas_phy = type { i32, i32, i32*, i32*, i32, i32, i32*, %struct.hisi_hba*, %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32, i32, %struct.hisi_sas_phy*, %struct.sas_ha_struct*, i32*, i32*, i32, i32, i32, i32, i64, i32, i32 }
%struct.sas_ha_struct = type { i32 }

@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PHY_TYPE_PHYSICAL = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@OOB_NOT_CONNECTED = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4
@HISI_PHYES_NUM = common dso_local global i32 0, align 4
@hisi_sas_phye_fns = common dso_local global i32* null, align 8
@hisi_sas_wait_phyup_timedout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @hisi_sas_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_phy_init(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 4
  %10 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %10, i64 %12
  store %struct.hisi_sas_phy* %13, %struct.hisi_sas_phy** %5, align 8
  %14 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %15 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %14, i32 0, i32 8
  store %struct.asd_sas_phy* %15, %struct.asd_sas_phy** %6, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %18 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %17, i32 0, i32 7
  store %struct.hisi_hba* %16, %struct.hisi_hba** %18, align 8
  %19 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %22 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %23 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = call i32 (...) %28()
  %30 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %31 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %40 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SAS, align 4
  %42 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %43 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %45 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %46 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 8
  %47 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %48 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %47, i32 0, i32 10
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @PHY_TYPE_PHYSICAL, align 4
  %50 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %51 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %53 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %54 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @OOB_NOT_CONNECTED, align 4
  %56 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %57 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %59 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %60 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %63 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %65 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %69 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %71 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %75 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %74, i32 0, i32 4
  store i32* %73, i32** %75, align 8
  %76 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %77 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.sas_ha_struct*
  %82 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %83 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %82, i32 0, i32 3
  store %struct.sas_ha_struct* %81, %struct.sas_ha_struct** %83, align 8
  %84 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %85 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %86 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %85, i32 0, i32 2
  store %struct.hisi_sas_phy* %84, %struct.hisi_sas_phy** %86, align 8
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %104, %2
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @HISI_PHYES_NUM, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %93 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32*, i32** @hisi_sas_phye_fns, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @INIT_WORK(i32* %97, i32 %102)
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %87

107:                                              ; preds = %87
  %108 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %109 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %108, i32 0, i32 1
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %112 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %111, i32 0, i32 0
  %113 = load i32, i32* @hisi_sas_wait_phyup_timedout, align 4
  %114 = call i32 @timer_setup(i32* %112, i32 %113, i32 0)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
