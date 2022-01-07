; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_sas_phy_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_hw_event_sas_phy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64, %struct.pm8001_phy*, %struct.sas_ha_struct*, %struct.pm8001_port* }
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sas_ha_struct = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.pm8001_port = type { i64, i32, i32 }
%struct.hw_event_resp = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@PHY_STATE_LINK_UP_SPCV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"portid:%d; phyid:%d; linkrate:%d; portstate:%x; devicetype:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"device type no device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"end device.\0A\00", align 1
@PHY_NOTIFY_ENABLE_SPINUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"expander device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"fanout expander device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown device type(%x)\0A\00", align 1
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@PHYE_OOB_DONE = common dso_local global i32 0, align 4
@PM8001F_RUN_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @hw_event_sas_phy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_event_sas_phy_up(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hw_event_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pm8001_port*, align 8
  %13 = alloca %struct.sas_ha_struct*, align 8
  %14 = alloca %struct.pm8001_phy*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr i8, i8* %17, i64 4
  %19 = bitcast i8* %18 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %19, %struct.hw_event_resp** %5, align 8
  %20 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %21 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %25 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, -268435456
  %30 = lshr i32 %29, 28
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 16711680
  %37 = ashr i32 %36, 16
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %42, i32 0, i32 3
  %44 = load %struct.pm8001_port*, %struct.pm8001_port** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %44, i64 %45
  store %struct.pm8001_port* %46, %struct.pm8001_port** %12, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 2
  %49 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %48, align 8
  store %struct.sas_ha_struct* %49, %struct.sas_ha_struct** %13, align 8
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %50, i32 0, i32 1
  %52 = load %struct.pm8001_phy*, %struct.pm8001_phy** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %52, i64 %53
  store %struct.pm8001_phy* %54, %struct.pm8001_phy** %14, align 8
  %55 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %56 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %61 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 1, %63
  %65 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %66 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @PHY_STATE_LINK_UP_SPCV, align 4
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %71 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %16, align 8
  %78 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %72, i32 %78)
  %80 = load i64, i64* %16, align 8
  switch i64 %80, label %116 [
    i64 128, label %81
    i64 130, label %85
    i64 131, label %98
    i64 129, label %107
  ]

81:                                               ; preds = %2
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %84 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %82, i32 %83)
  br label %121

85:                                               ; preds = %2
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %87 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %86, i32 %87)
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* @PHY_NOTIFY_ENABLE_SPINUP, align 4
  %92 = call i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info* %89, i64 %90, i32 %91)
  %93 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %94 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  %95 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %95, i64 %96)
  br label %121

98:                                               ; preds = %2
  %99 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %100 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %99, i32 %100)
  %102 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %103 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  %104 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %104, i64 %105)
  br label %121

107:                                              ; preds = %2
  %108 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %109 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %108, i32 %109)
  %111 = load %struct.pm8001_port*, %struct.pm8001_port** %12, align 8
  %112 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %111, i32 0, i32 2
  store i32 1, i32* %112, align 4
  %113 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @pm8001_get_lrate_mode(%struct.pm8001_phy* %113, i64 %114)
  br label %121

116:                                              ; preds = %2
  %117 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %118 = load i64, i64* %16, align 8
  %119 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %118)
  %120 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %117, i32 %119)
  br label %121

121:                                              ; preds = %116, %107, %98, %85, %81
  %122 = load i32, i32* @PORT_TYPE_SAS, align 4
  %123 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %124 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %129 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %132 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %134 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 130
  br i1 %137, label %138, label %143

138:                                              ; preds = %121
  %139 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %140 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %141 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 8
  br label %155

143:                                              ; preds = %121
  %144 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %145 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 128
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %151 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %152 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  br label %154

154:                                              ; preds = %149, %143
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* @SAS_OOB_MODE, align 4
  %157 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %158 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %13, align 8
  %161 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %160, i32 0, i32 0
  %162 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %161, align 8
  %163 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %164 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %163, i32 0, i32 2
  %165 = load i32, i32* @PHYE_OOB_DONE, align 4
  %166 = call i32 %162(%struct.TYPE_5__* %164, i32 %165)
  %167 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %168 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @spin_lock_irqsave(i32* %169, i64 %170)
  %172 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %173 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.hw_event_resp*, %struct.hw_event_resp** %5, align 8
  %176 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %175, i32 0, i32 0
  %177 = call i32 @memcpy(i32 %174, %struct.TYPE_6__* %176, i32 0)
  %178 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %179 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %181 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %182 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy* %180, i32 %184)
  %186 = load %struct.pm8001_phy*, %struct.pm8001_phy** %14, align 8
  %187 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i64, i64* %15, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  %191 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %192 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PM8001F_RUN_TIME, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %155
  %197 = call i32 @mdelay(i32 200)
  br label %198

198:                                              ; preds = %196, %155
  %199 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %199, i64 %200)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm80xx_chip_phy_ctl_req(%struct.pm8001_hba_info*, i64, i32) #1

declare dso_local i32 @pm8001_get_lrate_mode(%struct.pm8001_phy*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pm8001_get_attached_sas_addr(%struct.pm8001_phy*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pm8001_bytes_dmaed(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
