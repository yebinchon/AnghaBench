; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_phy_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i8*)* }
%struct.mvs_info = type { i32 }
%struct.asd_sas_phy = type { i32, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i64, %struct.asd_sas_phy** }
%struct.mvs_prv_info = type { i64, %struct.mvs_info** }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@PHY_RST_HARD = common dso_local global i64 0, align 8
@MVS_HARD_RESET = common dso_local global i32 0, align 4
@MVS_SOFT_RESET = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvs_phy_control(%struct.asd_sas_phy* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sas_ha_struct*, align 8
  %13 = alloca %struct.mvs_info*, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %15 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %17 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %18 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %17, i32 0, i32 1
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %18, align 8
  store %struct.sas_ha_struct* %19, %struct.sas_ha_struct** %12, align 8
  store %struct.mvs_info* null, %struct.mvs_info** %13, align 8
  br label %20

20:                                               ; preds = %38, %3
  %21 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %22 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %21, i32 0, i32 1
  %23 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %23, i64 %24
  %26 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %25, align 8
  %27 = icmp ne %struct.asd_sas_phy* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %30 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %29, i32 0, i32 1
  %31 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %31, i64 %32
  %34 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %33, align 8
  %35 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %36 = icmp eq %struct.asd_sas_phy* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %41

38:                                               ; preds = %28
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %20

41:                                               ; preds = %37, %20
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %44 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.mvs_prv_info*
  %47 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = udiv i64 %42, %48
  store i64 %49, i64* %11, align 8
  %50 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %51 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.mvs_prv_info*
  %54 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %53, i32 0, i32 1
  %55 = load %struct.mvs_info**, %struct.mvs_info*** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %55, i64 %56
  %58 = load %struct.mvs_info*, %struct.mvs_info** %57, align 8
  store %struct.mvs_info* %58, %struct.mvs_info** %13, align 8
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %110 [
    i32 128, label %60
    i32 131, label %68
    i32 130, label %88
    i32 132, label %102
    i32 129, label %109
  ]

60:                                               ; preds = %41
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32 (%struct.mvs_info*, i32, i8*)*, i32 (%struct.mvs_info*, i32, i8*)** %62, align 8
  %64 = load %struct.mvs_info*, %struct.mvs_info** %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 %63(%struct.mvs_info* %64, i32 %65, i8* %66)
  br label %113

68:                                               ; preds = %41
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64 (%struct.mvs_info*, i32)*, i64 (%struct.mvs_info*, i32)** %70, align 8
  %72 = load %struct.mvs_info*, %struct.mvs_info** %13, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 %71(%struct.mvs_info* %72, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @PHY_RST_HARD, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %113

80:                                               ; preds = %68
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %82, align 8
  %84 = load %struct.mvs_info*, %struct.mvs_info** %13, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @MVS_HARD_RESET, align 4
  %87 = call i32 %83(%struct.mvs_info* %84, i32 %85, i32 %86)
  br label %113

88:                                               ; preds = %41
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %90, align 8
  %92 = load %struct.mvs_info*, %struct.mvs_info** %13, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 %91(%struct.mvs_info* %92, i32 %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %96, align 8
  %98 = load %struct.mvs_info*, %struct.mvs_info** %13, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @MVS_SOFT_RESET, align 4
  %101 = call i32 %97(%struct.mvs_info* %98, i32 %99, i32 %100)
  br label %113

102:                                              ; preds = %41
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %104, align 8
  %106 = load %struct.mvs_info*, %struct.mvs_info** %13, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 %105(%struct.mvs_info* %106, i32 %107)
  br label %113

109:                                              ; preds = %41
  br label %110

110:                                              ; preds = %41, %109
  %111 = load i32, i32* @ENOSYS, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %110, %102, %88, %80, %79, %60
  %114 = call i32 @msleep(i32 200)
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
