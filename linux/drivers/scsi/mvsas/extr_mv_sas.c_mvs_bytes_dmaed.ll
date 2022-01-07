; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_bytes_dmaed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_bytes_dmaed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (...)* }
%struct.mvs_info = type { i32, %struct.sas_ha_struct*, %struct.TYPE_5__*, %struct.mvs_phy* }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)* }
%struct.asd_sas_phy = type opaque
%struct.asd_sas_phy.0 = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.mvs_phy = type { i32, i32, i32, %struct.TYPE_4__, i64, i32, i32, i32, %struct.asd_sas_phy.1 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.asd_sas_phy.1 = type { i32, i32, %struct.sas_phy* }
%struct.sas_phy = type { i32, i32, i32, i32, i32 }
%struct.sas_identify_frame = type { i32, i32, i32 }

@PORT_DEV_TRGT_MASK = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PORT_SSP_TRGT_MASK = common dso_local global i32 0, align 4
@PHYR_PHY_STAT = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"phy %d byte dmaded.\0A\00", align 1
@PORTE_BYTES_DMAED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32)* @mvs_bytes_dmaed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_bytes_dmaed(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_phy*, align 8
  %6 = alloca %struct.asd_sas_phy.1*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca %struct.sas_phy*, align 8
  %9 = alloca %struct.sas_identify_frame*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %11 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %10, i32 0, i32 3
  %12 = load %struct.mvs_phy*, %struct.mvs_phy** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %12, i64 %14
  store %struct.mvs_phy* %15, %struct.mvs_phy** %5, align 8
  %16 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %17 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %16, i32 0, i32 8
  store %struct.asd_sas_phy.1* %17, %struct.asd_sas_phy.1** %6, align 8
  %18 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %19 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %165

23:                                               ; preds = %2
  %24 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %25 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PORT_DEV_TRGT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %32 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PORT_TYPE_SAS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %165

38:                                               ; preds = %30, %23
  %39 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %40 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %39, i32 0, i32 1
  %41 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %40, align 8
  store %struct.sas_ha_struct* %41, %struct.sas_ha_struct** %7, align 8
  %42 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %43 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %42, i32 0, i32 1
  %44 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %43, align 8
  %45 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %46 = bitcast %struct.asd_sas_phy.1* %45 to %struct.asd_sas_phy.0*
  %47 = load i32, i32* @PHYE_OOB_DONE, align 4
  %48 = call i32 %44(%struct.asd_sas_phy.0* %46, i32 %47)
  %49 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %50 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %49, i32 0, i32 2
  %51 = load %struct.sas_phy*, %struct.sas_phy** %50, align 8
  %52 = icmp ne %struct.sas_phy* %51, null
  br i1 %52, label %53, label %81

53:                                               ; preds = %38
  %54 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %55 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %54, i32 0, i32 2
  %56 = load %struct.sas_phy*, %struct.sas_phy** %55, align 8
  store %struct.sas_phy* %56, %struct.sas_phy** %8, align 8
  %57 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %58 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %61 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %63 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %66 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %68 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %69 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %71 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %74 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32 (...)*, i32 (...)** %76, align 8
  %78 = call i32 (...) %77()
  %79 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %80 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %53, %38
  %82 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %83 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PORT_TYPE_SAS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %81
  %89 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %90 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %92, %struct.sas_identify_frame** %9, align 8
  %93 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %94 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %98 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %100 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %101 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %103 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %107 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %109 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PORT_SSP_TRGT_MASK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %88
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %116, align 8
  %118 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @PHYR_PHY_STAT, align 4
  %121 = call i32 %117(%struct.mvs_info* %118, i32 %119, i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %123, align 8
  %125 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 %124(%struct.mvs_info* %125, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %114, %88
  br label %138

129:                                              ; preds = %81
  %130 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %131 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PORT_TYPE_SATA, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %129
  br label %138

138:                                              ; preds = %137, %128
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %141 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %144 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %143, i32 0, i32 2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %142, %147
  %149 = add nsw i32 %139, %148
  %150 = call i32 @mv_dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load %struct.mvs_phy*, %struct.mvs_phy** %5, align 8
  %152 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %155 = getelementptr inbounds %struct.asd_sas_phy.1, %struct.asd_sas_phy.1* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %157 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %156, i32 0, i32 1
  %158 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %157, align 8
  %159 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %158, i32 0, i32 0
  %160 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %159, align 8
  %161 = load %struct.asd_sas_phy.1*, %struct.asd_sas_phy.1** %6, align 8
  %162 = bitcast %struct.asd_sas_phy.1* %161 to %struct.asd_sas_phy*
  %163 = load i32, i32* @PORTE_BYTES_DMAED, align 4
  %164 = call i32 %160(%struct.asd_sas_phy* %162, i32 %163)
  br label %165

165:                                              ; preds = %138, %37, %22
  ret void
}

declare dso_local i32 @mv_dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
