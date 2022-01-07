; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_phy_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_phy_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32, i32, %struct.TYPE_5__*, %struct.sas_ha_struct*, %struct.pm8001_phy* }
%struct.TYPE_5__ = type { i64 }
%struct.sas_ha_struct = type { i32 (i32*, i32)* }
%struct.pm8001_phy = type { i32, i32, i32, i32, i32, i32* }
%struct.asd_sas_phy = type { i32, %struct.sas_phy*, %struct.TYPE_4__* }
%struct.sas_phy = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.pm8001_hba_info* }
%struct.sas_phy_linkrates = type { i32, i32 }

@completion = common dso_local global i32 0, align 4
@PHY_LINK_DISABLE = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@PHY_LINK_RESET = common dso_local global i32 0, align 4
@PHY_HARD_RESET = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i32 0, align 4
@PHY_STATE_LINK_UP_SPCV = common dso_local global i32 0, align 4
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@PHY_STATE_LINK_UP_SPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_phy_control(%struct.asd_sas_phy* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pm8001_hba_info*, align 8
  %11 = alloca %struct.sas_phy_linkrates*, align 8
  %12 = alloca %struct.sas_ha_struct*, align 8
  %13 = alloca %struct.pm8001_phy*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sas_phy*, align 8
  %16 = alloca i8**, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %18 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %10, align 8
  %20 = load i32, i32* @completion, align 4
  %21 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %20)
  %22 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %23 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %25, align 8
  store %struct.pm8001_hba_info* %26, %struct.pm8001_hba_info** %10, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %28 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %27, i32 0, i32 4
  %29 = load %struct.pm8001_phy*, %struct.pm8001_phy** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %29, i64 %31
  store %struct.pm8001_phy* %32, %struct.pm8001_phy** %13, align 8
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 4
  %35 = load %struct.pm8001_phy*, %struct.pm8001_phy** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %35, i64 %37
  %39 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %38, i32 0, i32 5
  store i32* @completion, i32** %39, align 8
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %310 [
    i32 128, label %41
    i32 131, label %102
    i32 130, label %129
    i32 129, label %156
    i32 133, label %164
    i32 132, label %233
  ]

41:                                               ; preds = %3
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to %struct.sas_phy_linkrates*
  store %struct.sas_phy_linkrates* %43, %struct.sas_phy_linkrates** %11, align 8
  %44 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %45 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %50 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 4
  %54 = load %struct.pm8001_phy*, %struct.pm8001_phy** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %54, i64 %56
  %58 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %57, i32 0, i32 4
  store i32 %51, i32* %58, align 8
  br label %59

59:                                               ; preds = %48, %41
  %60 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %61 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %66 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %69 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %68, i32 0, i32 4
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i64 %72
  %74 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %73, i32 0, i32 3
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %59
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %77 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %76, i32 0, i32 4
  %78 = load %struct.pm8001_phy*, %struct.pm8001_phy** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %78, i64 %80
  %82 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PHY_LINK_DISABLE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %88, align 8
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 %89(%struct.pm8001_hba_info* %90, i32 %91)
  %93 = call i32 @wait_for_completion(i32* @completion)
  br label %94

94:                                               ; preds = %86, %75
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %96, align 8
  %98 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @PHY_LINK_RESET, align 4
  %101 = call i32 %97(%struct.pm8001_hba_info* %98, i32 %99, i32 %100)
  br label %313

102:                                              ; preds = %3
  %103 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %104 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %103, i32 0, i32 4
  %105 = load %struct.pm8001_phy*, %struct.pm8001_phy** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %105, i64 %107
  %109 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PHY_LINK_DISABLE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %115, align 8
  %117 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 %116(%struct.pm8001_hba_info* %117, i32 %118)
  %120 = call i32 @wait_for_completion(i32* @completion)
  br label %121

121:                                              ; preds = %113, %102
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %123, align 8
  %125 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @PHY_HARD_RESET, align 4
  %128 = call i32 %124(%struct.pm8001_hba_info* %125, i32 %126, i32 %127)
  br label %313

129:                                              ; preds = %3
  %130 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %131 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %130, i32 0, i32 4
  %132 = load %struct.pm8001_phy*, %struct.pm8001_phy** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %132, i64 %134
  %136 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PHY_LINK_DISABLE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %129
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %142, align 8
  %144 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 %143(%struct.pm8001_hba_info* %144, i32 %145)
  %147 = call i32 @wait_for_completion(i32* @completion)
  br label %148

148:                                              ; preds = %140, %129
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %150, align 8
  %152 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @PHY_LINK_RESET, align 4
  %155 = call i32 %151(%struct.pm8001_hba_info* %152, i32 %153, i32 %154)
  br label %313

156:                                              ; preds = %3
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %158, align 8
  %160 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @PHY_LINK_RESET, align 4
  %163 = call i32 %159(%struct.pm8001_hba_info* %160, i32 %161, i32 %162)
  br label %313

164:                                              ; preds = %3
  %165 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %166 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @chip_8001, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %164
  %171 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %172 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %171, i32 0, i32 4
  %173 = load %struct.pm8001_phy*, %struct.pm8001_phy** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %173, i64 %175
  %177 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @PHY_STATE_LINK_UP_SPCV, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %170
  %182 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %183 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %182, i32 0, i32 3
  %184 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %183, align 8
  store %struct.sas_ha_struct* %184, %struct.sas_ha_struct** %12, align 8
  %185 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %186 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %185, i32 0, i32 1
  %187 = call i32 @sas_phy_disconnected(i32* %186)
  %188 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %189 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %188, i32 0, i32 0
  %190 = load i32 (i32*, i32)*, i32 (i32*, i32)** %189, align 8
  %191 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %192 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %191, i32 0, i32 1
  %193 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %194 = call i32 %190(i32* %192, i32 %193)
  %195 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %196 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %181, %170
  br label %226

198:                                              ; preds = %164
  %199 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %200 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %199, i32 0, i32 4
  %201 = load %struct.pm8001_phy*, %struct.pm8001_phy** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %201, i64 %203
  %205 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @PHY_STATE_LINK_UP_SPC, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %198
  %210 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %211 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %210, i32 0, i32 3
  %212 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %211, align 8
  store %struct.sas_ha_struct* %212, %struct.sas_ha_struct** %12, align 8
  %213 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %214 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %213, i32 0, i32 1
  %215 = call i32 @sas_phy_disconnected(i32* %214)
  %216 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %217 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %216, i32 0, i32 0
  %218 = load i32 (i32*, i32)*, i32 (i32*, i32)** %217, align 8
  %219 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %220 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %219, i32 0, i32 1
  %221 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %222 = call i32 %218(i32* %220, i32 %221)
  %223 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %224 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  br label %225

225:                                              ; preds = %209, %198
  br label %226

226:                                              ; preds = %225, %197
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PM8001_CHIP_DISP, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %228, align 8
  %230 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %231 = load i32, i32* %9, align 4
  %232 = call i32 %229(%struct.pm8001_hba_info* %230, i32 %231)
  br label %313

233:                                              ; preds = %3
  %234 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %235 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %234, i32 0, i32 0
  %236 = load i64, i64* %14, align 8
  %237 = call i32 @spin_lock_irqsave(i32* %235, i64 %236)
  %238 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %239 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @chip_8001, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %233
  %244 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %245 = load i32, i32* %9, align 4
  %246 = icmp slt i32 %245, 4
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 196608, i32 262144
  %249 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %244, i32 %248)
  %250 = icmp eq i32 -1, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %243
  %252 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %253 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %252, i32 0, i32 0
  %254 = load i64, i64* %14, align 8
  %255 = call i32 @spin_unlock_irqrestore(i32* %253, i64 %254)
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %4, align 4
  br label %316

258:                                              ; preds = %243
  br label %259

259:                                              ; preds = %258, %233
  %260 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %261 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %260, i32 0, i32 1
  %262 = load %struct.sas_phy*, %struct.sas_phy** %261, align 8
  store %struct.sas_phy* %262, %struct.sas_phy** %15, align 8
  %263 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %264 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %263, i32 0, i32 2
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 2
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = inttoptr i64 %268 to i8*
  %270 = getelementptr inbounds i8, i8* %269, i64 4148
  %271 = load i32, i32* %9, align 4
  %272 = and i32 %271, 3
  %273 = mul nsw i32 16384, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  %276 = bitcast i8* %275 to i8**
  store i8** %276, i8*** %16, align 8
  %277 = load i8**, i8*** %16, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 0
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.sas_phy*, %struct.sas_phy** %15, align 8
  %281 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %280, i32 0, i32 3
  store i8* %279, i8** %281, align 8
  %282 = load i8**, i8*** %16, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 1
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.sas_phy*, %struct.sas_phy** %15, align 8
  %286 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load i8**, i8*** %16, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 3
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.sas_phy*, %struct.sas_phy** %15, align 8
  %291 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %290, i32 0, i32 1
  store i8* %289, i8** %291, align 8
  %292 = load i8**, i8*** %16, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 4
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.sas_phy*, %struct.sas_phy** %15, align 8
  %296 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  %297 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %298 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @chip_8001, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %259
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %304 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %303, i32 0)
  br label %305

305:                                              ; preds = %302, %259
  %306 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %307 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %306, i32 0, i32 0
  %308 = load i64, i64* %14, align 8
  %309 = call i32 @spin_unlock_irqrestore(i32* %307, i64 %308)
  store i32 0, i32* %4, align 4
  br label %316

310:                                              ; preds = %3
  %311 = load i32, i32* @EOPNOTSUPP, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %8, align 4
  br label %313

313:                                              ; preds = %310, %226, %156, %148, %121, %94
  %314 = call i32 @msleep(i32 300)
  %315 = load i32, i32* %8, align 4
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %313, %305, %251
  %317 = load i32, i32* %4, align 4
  ret i32 %317
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @sas_phy_disconnected(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
