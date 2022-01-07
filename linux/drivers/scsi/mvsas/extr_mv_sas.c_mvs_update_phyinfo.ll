; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_update_phyinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_update_phyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, %struct.sas_identify_frame*)*, i32 (%struct.mvs_info*, i32)* }
%struct.mvs_info = type { i32, %struct.TYPE_5__*, i32, %struct.mvs_phy* }
%struct.TYPE_5__ = type { i32 }
%struct.mvs_phy = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.asd_sas_phy, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.asd_sas_phy = type { i32, i32 }
%struct.sas_identify_frame = type { i32 }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@SATA_OOB_MODE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Phy%d : No sig fis\0A\00", align 1
@PHYEV_SIG_FIS = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_SSP_INIT_MASK = common dso_local global i32 0, align 4
@PORT_DEV_TYPE_MASK = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"phy %d attach dev info is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"phy %d attach sas addr is %llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvs_update_phyinfo(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvs_phy*, align 8
  %8 = alloca %struct.sas_identify_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.asd_sas_phy*, align 8
  %11 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %13 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %12, i32 0, i32 3
  %14 = load %struct.mvs_phy*, %struct.mvs_phy** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %14, i64 %16
  store %struct.mvs_phy* %17, %struct.mvs_phy** %7, align 8
  %18 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %19 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %21, %struct.sas_identify_frame** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 6
  %27 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %26, align 8
  %28 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.mvs_info* %28, i32 %29)
  %31 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %32 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @mvs_is_phy_ready(%struct.mvs_info* %33, i32 %34)
  %36 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %37 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %36, i32 0, i32 8
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %24, %3
  %39 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %40 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %222

43:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  %44 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %45 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %44, i32 0, i32 3
  %46 = load %struct.mvs_phy*, %struct.mvs_phy** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %46, i64 %48
  %50 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %49, i32 0, i32 7
  store %struct.asd_sas_phy* %50, %struct.asd_sas_phy** %10, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %52, align 8
  %54 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %53(%struct.mvs_info* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i32 (%struct.mvs_info*, i32, %struct.sas_identify_frame*)*, i32 (%struct.mvs_info*, i32, %struct.sas_identify_frame*)** %58, align 8
  %60 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %8, align 8
  %63 = call i32 %59(%struct.mvs_info* %60, i32 %61, %struct.sas_identify_frame* %62)
  %64 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %65 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PORT_TYPE_SATA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %142

70:                                               ; preds = %43
  %71 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %72 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %73 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %76 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @mvs_is_sig_fis_received(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %70
  %81 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %82 = call i32 @mvs_sig_remove_timer(%struct.mvs_phy* %81)
  %83 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %84 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %87 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %90 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %88, %93
  %95 = add nsw i32 %85, %94
  %96 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %97 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %80
  %101 = load i32, i32* @SATA_OOB_MODE, align 4
  %102 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %103 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %80
  %105 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %106 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %105, i32 0, i32 3
  store i32 4, i32* %106, align 4
  %107 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %8, align 8
  %110 = call i32 @mvs_get_d2h_reg(%struct.mvs_info* %107, i32 %108, %struct.sas_identify_frame* %109)
  br label %141

111:                                              ; preds = %70
  %112 = load i32, i32* @KERN_DEBUG, align 4
  %113 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %114 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dev_printk(i32 %112, i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %119, align 8
  %121 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 %120(%struct.mvs_info* %121, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %125, align 8
  %127 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @PHYEV_SIG_FIS, align 4
  %131 = or i32 %129, %130
  %132 = call i32 %126(%struct.mvs_info* %127, i32 %128, i32 %131)
  %133 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %134 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* @PORT_TYPE_SATA, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %138 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %253

141:                                              ; preds = %104
  br label %202

142:                                              ; preds = %43
  %143 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %144 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PORT_TYPE_SAS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %151 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PORT_SSP_INIT_MASK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %149, %142
  %157 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %158 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %160 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @PORT_DEV_TYPE_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %165 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %168 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @SAS_END_DEVICE, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %156
  %174 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %175 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %176 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 4
  br label %191

178:                                              ; preds = %156
  %179 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %180 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %187 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %188 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  br label %190

190:                                              ; preds = %185, %178
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32, i32* @SAS_OOB_MODE, align 4
  %196 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %197 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %191
  %199 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %200 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %199, i32 0, i32 3
  store i32 4, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %149
  br label %202

202:                                              ; preds = %201, %141
  %203 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  %204 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %207 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %206, i32 0, i32 2
  %208 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %209 = call i32 @memcpy(i32 %205, i32* %207, i32 %208)
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %211, align 8
  %213 = icmp ne i32 (%struct.mvs_info*, i32)* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %202
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %216, align 8
  %218 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %219 = load i32, i32* %5, align 4
  %220 = call i32 %217(%struct.mvs_info* %218, i32 %219)
  br label %221

221:                                              ; preds = %214, %202
  br label %222

222:                                              ; preds = %221, %38
  %223 = load i32, i32* %5, align 4
  %224 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %225 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %228 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %227, i32 0, i32 1
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %226, %231
  %233 = add nsw i32 %223, %232
  %234 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %235 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @mv_dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %233, i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %240 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %243 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %242, i32 0, i32 1
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %241, %246
  %248 = add nsw i32 %238, %247
  %249 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %250 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @mv_dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %248, i32 %251)
  br label %253

253:                                              ; preds = %222, %111
  %254 = load i32, i32* %6, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %258, align 8
  %260 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %263 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = call i32 %259(%struct.mvs_info* %260, i32 %261, i32 %264)
  br label %266

266:                                              ; preds = %256, %253
  ret void
}

declare dso_local i64 @mvs_is_phy_ready(%struct.mvs_info*, i32) #1

declare dso_local i64 @mvs_is_sig_fis_received(i32) #1

declare dso_local i32 @mvs_sig_remove_timer(%struct.mvs_phy*) #1

declare dso_local i32 @mvs_get_d2h_reg(%struct.mvs_info*, i32, %struct.sas_identify_frame*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mv_dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
