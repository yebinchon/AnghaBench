; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_display_OEMs_branding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_display_OEMs_branding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MPT2SAS_INTEL_RMS2LL080_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS2LL040_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_SSD910_BRANDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Intel(R) Controller: Subsystem ID: 0x%X\0A\00", align 1
@MPT2SAS_INTEL_RS25GB008_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS25JB080_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS25JB040_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS25KB080_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS25KB040_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS25LB040_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_INTEL_RMS25LB080_BRANDING = common dso_local global i32 0, align 4
@MPT3SAS_INTEL_RMS3JC080_BRANDING = common dso_local global i32 0, align 4
@MPT3SAS_INTEL_RS3GC008_BRANDING = common dso_local global i32 0, align 4
@MPT3SAS_INTEL_RS3FC044_BRANDING = common dso_local global i32 0, align 4
@MPT3SAS_INTEL_RS3UC080_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_6GBPS_SAS_HBA_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_PERC_H200_ADAPTER_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_PERC_H200_INTEGRATED_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_PERC_H200_MODULAR_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_PERC_H200_EMBEDDED_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_PERC_H200_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_DELL_6GBPS_SAS_BRANDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Dell 6Gbps HBA: Subsystem ID: 0x%X\0A\00", align 1
@MPT3SAS_DELL_12G_HBA_BRANDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Dell 12Gbps HBA: Subsystem ID: 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Dell HBA: Subsystem ID: 0x%X\0A\00", align 1
@MPT3SAS_CISCO_12G_8E_HBA_BRANDING = common dso_local global i32 0, align 4
@MPT3SAS_CISCO_12G_8I_HBA_BRANDING = common dso_local global i32 0, align 4
@MPT3SAS_CISCO_12G_AVILA_HBA_BRANDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Cisco 12Gbps SAS HBA: Subsystem ID: 0x%X\0A\00", align 1
@MPT3SAS_CISCO_12G_COLUSA_MEZZANINE_HBA_BRANDING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Cisco SAS HBA: Subsystem ID: 0x%X\0A\00", align 1
@MPT2SAS_HP_DAUGHTER_2_4_INTERNAL_BRANDING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"HP 6Gbps SAS HBA: Subsystem ID: 0x%X\0A\00", align 1
@MPT2SAS_HP_2_4_INTERNAL_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_HP_2_4_EXTERNAL_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_HP_1_4_INTERNAL_1_4_EXTERNAL_BRANDING = common dso_local global i32 0, align 4
@MPT2SAS_HP_EMBEDDED_2_4_INTERNAL_BRANDING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"HP SAS HBA: Subsystem ID: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_base_display_OEMs_branding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_display_OEMs_branding(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %3 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %4 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 128
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %340

10:                                               ; preds = %1
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %12 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %339 [
    i32 128, label %16
    i32 129, label %132
    i32 130, label %209
    i32 152, label %274
  ]

16:                                               ; preds = %10
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %123 [
    i32 164, label %22
    i32 163, label %49
    i32 167, label %92
  ]

22:                                               ; preds = %16
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %24 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %40 [
    i32 142, label %28
    i32 143, label %32
    i32 140, label %36
  ]

28:                                               ; preds = %22
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %30 = load i32, i32* @MPT2SAS_INTEL_RMS2LL080_BRANDING, align 4
  %31 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %34 = load i32, i32* @MPT2SAS_INTEL_RMS2LL040_BRANDING, align 4
  %35 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %48

36:                                               ; preds = %22
  %37 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %38 = load i32, i32* @MPT2SAS_INTEL_SSD910_BRANDING, align 4
  %39 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %48

40:                                               ; preds = %22
  %41 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %42 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %40, %36, %32, %28
  br label %131

49:                                               ; preds = %16
  %50 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %51 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %83 [
    i32 141, label %55
    i32 148, label %59
    i32 149, label %63
    i32 146, label %67
    i32 147, label %71
    i32 145, label %75
    i32 144, label %79
  ]

55:                                               ; preds = %49
  %56 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %57 = load i32, i32* @MPT2SAS_INTEL_RS25GB008_BRANDING, align 4
  %58 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %91

59:                                               ; preds = %49
  %60 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %61 = load i32, i32* @MPT2SAS_INTEL_RMS25JB080_BRANDING, align 4
  %62 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %91

63:                                               ; preds = %49
  %64 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %65 = load i32, i32* @MPT2SAS_INTEL_RMS25JB040_BRANDING, align 4
  %66 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %91

67:                                               ; preds = %49
  %68 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %69 = load i32, i32* @MPT2SAS_INTEL_RMS25KB080_BRANDING, align 4
  %70 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %91

71:                                               ; preds = %49
  %72 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %73 = load i32, i32* @MPT2SAS_INTEL_RMS25KB040_BRANDING, align 4
  %74 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %91

75:                                               ; preds = %49
  %76 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %77 = load i32, i32* @MPT2SAS_INTEL_RMS25LB040_BRANDING, align 4
  %78 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %91

79:                                               ; preds = %49
  %80 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %81 = load i32, i32* @MPT2SAS_INTEL_RMS25LB080_BRANDING, align 4
  %82 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %91

83:                                               ; preds = %49
  %84 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %85 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %86 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %79, %75, %71, %67, %63, %59, %55
  br label %131

92:                                               ; preds = %16
  %93 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %94 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %114 [
    i32 134, label %98
    i32 132, label %102
    i32 133, label %106
    i32 131, label %110
  ]

98:                                               ; preds = %92
  %99 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %100 = load i32, i32* @MPT3SAS_INTEL_RMS3JC080_BRANDING, align 4
  %101 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %122

102:                                              ; preds = %92
  %103 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %104 = load i32, i32* @MPT3SAS_INTEL_RS3GC008_BRANDING, align 4
  %105 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %122

106:                                              ; preds = %92
  %107 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %108 = load i32, i32* @MPT3SAS_INTEL_RS3FC044_BRANDING, align 4
  %109 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %122

110:                                              ; preds = %92
  %111 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %112 = load i32, i32* @MPT3SAS_INTEL_RS3UC080_BRANDING, align 4
  %113 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %122

114:                                              ; preds = %92
  %115 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %116 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %117 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %114, %110, %106, %102, %98
  br label %131

123:                                              ; preds = %16
  %124 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %125 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %126 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %123, %122, %91, %48
  br label %340

132:                                              ; preds = %10
  %133 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %134 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  switch i32 %137, label %200 [
    i32 164, label %138
    i32 167, label %181
  ]

138:                                              ; preds = %132
  %139 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %140 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %172 [
    i32 162, label %144
    i32 160, label %148
    i32 158, label %152
    i32 157, label %156
    i32 159, label %160
    i32 156, label %164
    i32 161, label %168
  ]

144:                                              ; preds = %138
  %145 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %146 = load i32, i32* @MPT2SAS_DELL_6GBPS_SAS_HBA_BRANDING, align 4
  %147 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %180

148:                                              ; preds = %138
  %149 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %150 = load i32, i32* @MPT2SAS_DELL_PERC_H200_ADAPTER_BRANDING, align 4
  %151 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %180

152:                                              ; preds = %138
  %153 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %154 = load i32, i32* @MPT2SAS_DELL_PERC_H200_INTEGRATED_BRANDING, align 4
  %155 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %154)
  br label %180

156:                                              ; preds = %138
  %157 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %158 = load i32, i32* @MPT2SAS_DELL_PERC_H200_MODULAR_BRANDING, align 4
  %159 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %158)
  br label %180

160:                                              ; preds = %138
  %161 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %162 = load i32, i32* @MPT2SAS_DELL_PERC_H200_EMBEDDED_BRANDING, align 4
  %163 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %180

164:                                              ; preds = %138
  %165 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %166 = load i32, i32* @MPT2SAS_DELL_PERC_H200_BRANDING, align 4
  %167 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %166)
  br label %180

168:                                              ; preds = %138
  %169 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %170 = load i32, i32* @MPT2SAS_DELL_6GBPS_SAS_BRANDING, align 4
  %171 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %170)
  br label %180

172:                                              ; preds = %138
  %173 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %174 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %175 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %173, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %172, %168, %164, %160, %156, %152, %148, %144
  br label %208

181:                                              ; preds = %132
  %182 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %183 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  switch i32 %186, label %191 [
    i32 135, label %187
  ]

187:                                              ; preds = %181
  %188 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %189 = load i32, i32* @MPT3SAS_DELL_12G_HBA_BRANDING, align 4
  %190 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %189)
  br label %199

191:                                              ; preds = %181
  %192 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %193 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %194 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %191, %187
  br label %208

200:                                              ; preds = %132
  %201 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %202 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %203 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %202, i32 0, i32 0
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %200, %199, %180
  br label %340

209:                                              ; preds = %10
  %210 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %211 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  switch i32 %214, label %265 [
    i32 167, label %215
    i32 166, label %242
  ]

215:                                              ; preds = %209
  %216 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %217 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %216, i32 0, i32 0
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  switch i32 %220, label %233 [
    i32 139, label %221
    i32 138, label %225
    i32 137, label %229
  ]

221:                                              ; preds = %215
  %222 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %223 = load i32, i32* @MPT3SAS_CISCO_12G_8E_HBA_BRANDING, align 4
  %224 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %223)
  br label %241

225:                                              ; preds = %215
  %226 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %227 = load i32, i32* @MPT3SAS_CISCO_12G_8I_HBA_BRANDING, align 4
  %228 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %227)
  br label %241

229:                                              ; preds = %215
  %230 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %231 = load i32, i32* @MPT3SAS_CISCO_12G_AVILA_HBA_BRANDING, align 4
  %232 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %231)
  br label %241

233:                                              ; preds = %215
  %234 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %235 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %236 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %235, i32 0, i32 0
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %234, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %233, %229, %225, %221
  br label %273

242:                                              ; preds = %209
  %243 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %244 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %243, i32 0, i32 0
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  switch i32 %247, label %256 [
    i32 137, label %248
    i32 136, label %252
  ]

248:                                              ; preds = %242
  %249 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %250 = load i32, i32* @MPT3SAS_CISCO_12G_AVILA_HBA_BRANDING, align 4
  %251 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %250)
  br label %264

252:                                              ; preds = %242
  %253 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %254 = load i32, i32* @MPT3SAS_CISCO_12G_COLUSA_MEZZANINE_HBA_BRANDING, align 4
  %255 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %254)
  br label %264

256:                                              ; preds = %242
  %257 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %258 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %259 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %258, i32 0, i32 0
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %257, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %256, %252, %248
  br label %273

265:                                              ; preds = %209
  %266 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %267 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %268 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %267, i32 0, i32 0
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %266, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %265, %264, %241
  br label %340

274:                                              ; preds = %10
  %275 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %276 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %275, i32 0, i32 0
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  switch i32 %279, label %330 [
    i32 165, label %280
    i32 163, label %299
  ]

280:                                              ; preds = %274
  %281 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %282 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %281, i32 0, i32 0
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  switch i32 %285, label %290 [
    i32 151, label %286
  ]

286:                                              ; preds = %280
  %287 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %288 = load i32, i32* @MPT2SAS_HP_DAUGHTER_2_4_INTERNAL_BRANDING, align 4
  %289 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %287, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %288)
  br label %298

290:                                              ; preds = %280
  %291 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %292 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %293 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %292, i32 0, i32 0
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %291, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %290, %286
  br label %338

299:                                              ; preds = %274
  %300 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %301 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %300, i32 0, i32 0
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  switch i32 %304, label %321 [
    i32 153, label %305
    i32 154, label %309
    i32 155, label %313
    i32 150, label %317
  ]

305:                                              ; preds = %299
  %306 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %307 = load i32, i32* @MPT2SAS_HP_2_4_INTERNAL_BRANDING, align 4
  %308 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %307)
  br label %329

309:                                              ; preds = %299
  %310 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %311 = load i32, i32* @MPT2SAS_HP_2_4_EXTERNAL_BRANDING, align 4
  %312 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %311)
  br label %329

313:                                              ; preds = %299
  %314 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %315 = load i32, i32* @MPT2SAS_HP_1_4_INTERNAL_1_4_EXTERNAL_BRANDING, align 4
  %316 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %314, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %315)
  br label %329

317:                                              ; preds = %299
  %318 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %319 = load i32, i32* @MPT2SAS_HP_EMBEDDED_2_4_INTERNAL_BRANDING, align 4
  %320 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %319)
  br label %329

321:                                              ; preds = %299
  %322 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %323 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %324 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %323, i32 0, i32 0
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %322, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %321, %317, %313, %309, %305
  br label %338

330:                                              ; preds = %274
  %331 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %332 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %333 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %332, i32 0, i32 0
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %331, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %336)
  br label %338

338:                                              ; preds = %330, %329, %298
  br label %339

339:                                              ; preds = %10, %338
  br label %340

340:                                              ; preds = %9, %339, %273, %208, %131
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
