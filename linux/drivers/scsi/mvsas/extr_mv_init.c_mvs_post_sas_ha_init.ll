; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_post_sas_ha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_post_sas_ha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }
%struct.mvs_chip_info = type { i32 }
%struct.mvs_info = type { i32, %struct.TYPE_8__*, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sas_ha_struct = type { i16, %struct.TYPE_7__, i32*, i32, i32, i32, i32**, i32**, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.mvs_prv_info = type { i16, %struct.mvs_info** }

@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MVF_FLAG_SOC = common dso_local global i32 0, align 4
@MVS_SOC_CAN_QUEUE = common dso_local global i32 0, align 4
@MVS_CHIP_SLOT_SZ = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@SG_ALL = common dso_local global i32 0, align 4
@MVS_MAX_SG = common dso_local global i32 0, align 4
@MVS_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.mvs_chip_info*)* @mvs_post_sas_ha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_post_sas_ha_init(%struct.Scsi_Host* %0, %struct.mvs_chip_info* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.mvs_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvs_info*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca i16, align 2
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.mvs_chip_info* %1, %struct.mvs_chip_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.mvs_info* null, %struct.mvs_info** %8, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %11)
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %9, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mvs_prv_info*
  %17 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  store i16 %18, i16* %10, align 2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %84, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i16, i16* %10, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %19
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %26 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.mvs_prv_info*
  %29 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %28, i32 0, i32 1
  %30 = load %struct.mvs_info**, %struct.mvs_info*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %30, i64 %32
  %34 = load %struct.mvs_info*, %struct.mvs_info** %33, align 8
  store %struct.mvs_info* %34, %struct.mvs_info** %8, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %80, %24
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mvs_chip_info*, %struct.mvs_chip_info** %4, align 8
  %38 = getelementptr inbounds %struct.mvs_chip_info, %struct.mvs_chip_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %35
  %42 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %43 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %42, i32 0, i32 5
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %50 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %49, i32 0, i32 7
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.mvs_chip_info*, %struct.mvs_chip_info** %4, align 8
  %54 = getelementptr inbounds %struct.mvs_chip_info, %struct.mvs_chip_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %51, i64 %59
  store i32* %48, i32** %60, align 8
  %61 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %62 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %69 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %68, i32 0, i32 6
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mvs_chip_info*, %struct.mvs_chip_info** %4, align 8
  %73 = getelementptr inbounds %struct.mvs_chip_info, %struct.mvs_chip_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %70, i64 %78
  store i32* %67, i32** %79, align 8
  br label %80

80:                                               ; preds = %41
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %35

83:                                               ; preds = %35
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %19

87:                                               ; preds = %19
  %88 = load i32, i32* @DRV_NAME, align 4
  %89 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %90 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %92 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %95 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @THIS_MODULE, align 4
  %97 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %98 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %100 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %104 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = load i16, i16* %10, align 2
  %106 = zext i16 %105 to i32
  %107 = load %struct.mvs_chip_info*, %struct.mvs_chip_info** %4, align 8
  %108 = getelementptr inbounds %struct.mvs_chip_info, %struct.mvs_chip_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = trunc i32 %110 to i16
  %112 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %113 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %112, i32 0, i32 0
  store i16 %111, i16* %113, align 8
  %114 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %115 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MVF_FLAG_SOC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %87
  %121 = load i32, i32* @MVS_SOC_CAN_QUEUE, align 4
  store i32 %121, i32* %5, align 4
  br label %124

122:                                              ; preds = %87
  %123 = load i32, i32* @MVS_CHIP_SLOT_SZ, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i32, i32* @u16, align 4
  %126 = load i32, i32* @SG_ALL, align 4
  %127 = load i32, i32* @MVS_MAX_SG, align 4
  %128 = call i32 @min_t(i32 %125, i32 %126, i32 %127)
  %129 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %130 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %133 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @MVS_QUEUE_SIZE, align 4
  %135 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %136 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %140 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %143 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %144, align 8
  ret void
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
