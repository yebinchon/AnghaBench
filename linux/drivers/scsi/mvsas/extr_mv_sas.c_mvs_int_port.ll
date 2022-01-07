; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_int_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_int_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i32)* }
%struct.mvs_info = type { i32, %struct.TYPE_4__*, %struct.mvs_phy* }
%struct.TYPE_4__ = type { i32 }
%struct.mvs_phy = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"phy %d ctrl sts=0x%08X.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"phy %d irq sts = 0x%08X\0A\00", align 1
@PHYEV_DCDR_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"phy %d STP decoding error.\0A\00", align 1
@PHYEV_POOF = common dso_local global i32 0, align 4
@PHY_PLUG_OUT = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@PHY_PLUG_EVENT = common dso_local global i32 0, align 4
@MVS_SOFT_RESET = common dso_local global i32 0, align 4
@PHYEV_COMWAKE = common dso_local global i32 0, align 4
@PHYEV_SIG_FIS = common dso_local global i32 0, align 4
@mvs_sig_time_out = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@PHYEV_ID_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"notify plug in on phy[%d]\0A\00", align 1
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@MVS_PHY_TUNE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"plugin interrupt but phy%d is gone\0A\00", align 1
@PHYEV_BROAD_CH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"phy %d broadcast change.\0A\00", align 1
@EXP_BRCT_CHG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvs_int_port(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvs_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %12 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %11, i32 0, i32 2
  %13 = load %struct.mvs_phy*, %struct.mvs_phy** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %13, i64 %15
  store %struct.mvs_phy* %16, %struct.mvs_phy** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %18, align 8
  %20 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(%struct.mvs_info* %20, i32 %21)
  %23 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %24 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 8
  %27 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %26, align 8
  %28 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %31 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %27(%struct.mvs_info* %28, i32 %29, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %36 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %39 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = add nsw i32 %34, %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 7
  %47 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %46, align 8
  %48 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 %47(%struct.mvs_info* %48, i32 %49)
  %51 = call i32 (i8*, i32, ...) @mv_dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %54 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %57 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %55, %60
  %62 = add nsw i32 %52, %61
  %63 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %64 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, ...) @mv_dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %68 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PHYEV_DCDR_ERR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %3
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %76 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %79 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = add nsw i32 %74, %83
  %85 = call i32 (i8*, i32, ...) @mv_dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %73, %3
  %87 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %88 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PHYEV_POOF, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %158

93:                                               ; preds = %86
  %94 = call i32 @mdelay(i32 500)
  %95 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %96 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PHY_PLUG_OUT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %157, label %101

101:                                              ; preds = %93
  %102 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %103 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PORT_TYPE_SATA, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %9, align 4
  %107 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @mvs_do_release_task(%struct.mvs_info* %107, i32 %108, i32* null)
  %110 = load i32, i32* @PHY_PLUG_OUT, align 4
  %111 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %112 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  %117 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %116, align 8
  %118 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %119 = call i32 %117(%struct.mvs_info* %118, i32 0, i32 1)
  %120 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load i32, i32* @PHY_PLUG_EVENT, align 4
  %125 = call i32 @mvs_handle_event(%struct.mvs_info* %120, i8* %123, i32 %124)
  %126 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i8* @mvs_is_phy_ready(%struct.mvs_info* %126, i32 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %101
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %132, %101
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  %138 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %137, align 8
  %139 = icmp ne i32 (%struct.mvs_info*, i32)* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %142, align 8
  %144 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 %143(%struct.mvs_info* %144, i32 %145)
  br label %155

147:                                              ; preds = %135
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %149, align 8
  %151 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @MVS_SOFT_RESET, align 4
  %154 = call i32 %150(%struct.mvs_info* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %140
  br label %338

156:                                              ; preds = %132
  br label %157

157:                                              ; preds = %156, %93
  br label %158

158:                                              ; preds = %157, %86
  %159 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %160 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @PHYEV_COMWAKE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %158
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %167, align 8
  %169 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 %168(%struct.mvs_info* %169, i32 %170)
  store i32 %171, i32* %7, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %173, align 8
  %175 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @PHYEV_SIG_FIS, align 4
  %179 = or i32 %177, %178
  %180 = call i32 %174(%struct.mvs_info* %175, i32 %176, i32 %179)
  %181 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %182 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %202

186:                                              ; preds = %165
  %187 = load i32*, i32** @mvs_sig_time_out, align 8
  %188 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %189 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32* %187, i32** %190, align 8
  %191 = load i64, i64* @jiffies, align 8
  %192 = load i32, i32* @HZ, align 4
  %193 = mul nsw i32 5, %192
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %197 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  store i64 %195, i64* %198, align 8
  %199 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %200 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %199, i32 0, i32 5
  %201 = call i32 @add_timer(%struct.TYPE_5__* %200)
  br label %202

202:                                              ; preds = %186, %165
  br label %203

203:                                              ; preds = %202, %158
  %204 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %205 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @PHYEV_SIG_FIS, align 4
  %208 = load i32, i32* @PHYEV_ID_DONE, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %206, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %311

212:                                              ; preds = %203
  %213 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i8* @mvs_is_phy_ready(%struct.mvs_info* %213, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %218 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i32 (i8*, i32, ...) @mv_dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  %221 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %222 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %297

225:                                              ; preds = %212
  %226 = call i32 @mdelay(i32 10)
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 4
  %229 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %228, align 8
  %230 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = call i32 %229(%struct.mvs_info* %230, i32 %231)
  %233 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %234 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @PORT_TYPE_SATA, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %257

239:                                              ; preds = %225
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %241, align 8
  %243 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %244 = load i32, i32* %5, align 4
  %245 = call i32 %242(%struct.mvs_info* %243, i32 %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* @PHYEV_SIG_FIS, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %7, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %7, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 3
  %252 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %251, align 8
  %253 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* %7, align 4
  %256 = call i32 %252(%struct.mvs_info* %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %239, %225
  %258 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %259 = load i32, i32* %5, align 4
  %260 = call i32 @mvs_update_phyinfo(%struct.mvs_info* %258, i32 %259, i32 0)
  %261 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %262 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @PORT_TYPE_SAS, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %257
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MVS_CHIP_DISP, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  %270 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %269, align 8
  %271 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* @MVS_PHY_TUNE, align 4
  %274 = call i32 %270(%struct.mvs_info* %271, i32 %272, i32 %273)
  %275 = call i32 @mdelay(i32 10)
  br label %276

276:                                              ; preds = %267, %257
  %277 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %278 = load i32, i32* %5, align 4
  %279 = call i32 @mvs_bytes_dmaed(%struct.mvs_info* %277, i32 %278)
  %280 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %281 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @PHY_PLUG_OUT, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %276
  %287 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %288 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %287, i32 0, i32 4
  %289 = call i32 @mvs_port_notify_formed(i32* %288, i32 0)
  %290 = load i32, i32* @PHY_PLUG_OUT, align 4
  %291 = xor i32 %290, -1
  %292 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %293 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, %291
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %286, %276
  br label %310

297:                                              ; preds = %212
  %298 = load i32, i32* %5, align 4
  %299 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %300 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %303 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %302, i32 0, i32 1
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = mul nsw i32 %301, %306
  %308 = add nsw i32 %298, %307
  %309 = call i32 (i8*, i32, ...) @mv_dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %297, %296
  br label %338

311:                                              ; preds = %203
  %312 = load %struct.mvs_phy*, %struct.mvs_phy** %8, align 8
  %313 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @PHYEV_BROAD_CH, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %337

318:                                              ; preds = %311
  %319 = load i32, i32* %5, align 4
  %320 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %321 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %324 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %323, i32 0, i32 1
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %322, %327
  %329 = add nsw i32 %319, %328
  %330 = call i32 (i8*, i32, ...) @mv_dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %329)
  %331 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = inttoptr i64 %333 to i8*
  %335 = load i32, i32* @EXP_BRCT_CHG, align 4
  %336 = call i32 @mvs_handle_event(%struct.mvs_info* %331, i8* %334, i32 %335)
  br label %337

337:                                              ; preds = %318, %311
  br label %338

338:                                              ; preds = %155, %337, %310
  ret void
}

declare dso_local i32 @mv_dprintk(i8*, i32, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mvs_do_release_task(%struct.mvs_info*, i32, i32*) #1

declare dso_local i32 @mvs_handle_event(%struct.mvs_info*, i8*, i32) #1

declare dso_local i8* @mvs_is_phy_ready(%struct.mvs_info*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @mvs_update_phyinfo(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_bytes_dmaed(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_port_notify_formed(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
