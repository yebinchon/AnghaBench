; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i64, i32, i64, i8*, i8*, i8*, i32*, i32, i32, i64, i32, i32, i8**, i8**, i8*, i8*, i32, i32*, i32, i32, i32, i32, i8*, i32 }

@RATE_1M = common dso_local global i8* null, align 8
@RATE_24M = common dso_local global i32 0, align 4
@MAC_REG_LOCALID = common dso_local global i64 0, align 8
@CB_MAX_CHANNEL = common dso_local global i32 0, align 4
@EEP_OFS_ANTENNA = common dso_local global i8 0, align 1
@EEP_ANTINV = common dso_local global i8 0, align 1
@EEP_ANTENNA_AUX = common dso_local global i8 0, align 1
@EEP_ANTENNA_MAIN = common dso_local global i8 0, align 1
@ANT_B = common dso_local global i8* null, align 8
@ANT_A = common dso_local global i8* null, align 8
@EEP_OFS_ZONETYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"priv->byZoneType = %x\0A\00", align 1
@EEP_OFS_PWR_CCK = common dso_local global i8 0, align 1
@EEP_OFS_PWR_OFDMG = common dso_local global i8 0, align 1
@CB_MAX_CHANNEL_24G = common dso_local global i32 0, align 4
@EEP_OFS_CCK_PWR_TBL = common dso_local global i64 0, align 8
@EEP_OFS_OFDM_PWR_TBL = common dso_local global i64 0, align 8
@CB_MAX_CHANNEL_5G = common dso_local global i32 0, align 4
@EEP_OFS_OFDMA_PWR_TBL = common dso_local global i64 0, align 8
@EEP_OFS_OFDMA_PWR_dBm = common dso_local global i64 0, align 8
@REV_ID_VT3253_B1 = common dso_local global i64 0, align 8
@MAC_REG_MSRCTL = common dso_local global i64 0, align 8
@MSRCTL1_TXPWR = common dso_local global i32 0, align 4
@MSRCTL1_CSAPAREN = common dso_local global i32 0, align 4
@MAC_REG_CFG = common dso_local global i32 0, align 4
@CFG_TKIPOPT = common dso_local global i32 0, align 4
@CFG_NOTXTIMEOUT = common dso_local global i32 0, align 4
@MAC_REG_TFTCTL = common dso_local global i64 0, align 8
@TFTCTL_TSFCNTRST = common dso_local global i32 0, align 4
@TFTCTL_TSFCNTREN = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i8* null, align 8
@EEP_OFS_RADIOCTL = common dso_local global i8 0, align 1
@EEP_RADIOCTL_ENABLE = common dso_local global i32 0, align 4
@GPIO0_DATA = common dso_local global i32 0, align 4
@EEP_RADIOCTL_INV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Network address = %pM\0A\00", align 1
@REV_ID_VT3253_A1 = common dso_local global i64 0, align 8
@MAC_REG_RCR = common dso_local global i32 0, align 4
@RCR_WPAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @device_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_init_registers(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %8 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %9 = call i32 @MACbShutdown(%struct.vnt_private* %8)
  %10 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %11 = call i32 @BBvSoftwareReset(%struct.vnt_private* %10)
  %12 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %13 = call i32 @MACbSoftwareReset(%struct.vnt_private* %12)
  %14 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %19 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** @RATE_1M, align 8
  %23 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 20
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @RATE_24M, align 4
  %26 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 40
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @RATE_1M, align 8
  %29 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 39
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %32 = call i32 @MACvInitialize(%struct.vnt_private* %31)
  %33 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 17
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAC_REG_LOCALID, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 4
  %40 = call i32 @VNSvInPortB(i64 %37, i64* %39)
  %41 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 38
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %46 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %45, i32 0, i32 17
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 34
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @SROMvReadAllContents(i64 %47, i32* %50)
  %52 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 38
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %57 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %56, i32 0, i32 5
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %59 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %60 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %59, i32 0, i32 37
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %62 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %61, i32 0, i32 17
  %63 = load i64, i64* %62, align 8
  %64 = load i8, i8* @EEP_OFS_ANTENNA, align 1
  %65 = call i8* @SROMbyReadEmbedded(i64 %63, i8 zeroext %64)
  %66 = ptrtoint i8* %65 to i8
  store i8 %66, i8* %5, align 1
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @EEP_ANTINV, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %1
  %74 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %75 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %74, i32 0, i32 6
  store i32 1, i32* %75, align 4
  br label %79

76:                                               ; preds = %1
  %77 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 6
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i8, i8* @EEP_ANTENNA_AUX, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @EEP_ANTENNA_MAIN, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %81, %83
  %85 = load i8, i8* %5, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %5, align 1
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load i8, i8* @EEP_ANTENNA_AUX, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @EEP_ANTENNA_MAIN, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %94, %96
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %5, align 1
  br label %99

99:                                               ; preds = %92, %79
  %100 = load i8, i8* %5, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @EEP_ANTENNA_AUX, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @EEP_ANTENNA_MAIN, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %131

108:                                              ; preds = %99
  %109 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %110 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %109, i32 0, i32 7
  store i32 2, i32* %110, align 8
  %111 = load i8*, i8** @ANT_B, align 8
  %112 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %113 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %112, i32 0, i32 21
  store i8* %111, i8** %113, align 8
  %114 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %115 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %114, i32 0, i32 8
  store i32 1, i32* %115, align 4
  %116 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %117 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %116, i32 0, i32 9
  store i32 1, i32* %117, align 8
  %118 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %119 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %108
  %123 = load i8*, i8** @ANT_A, align 8
  %124 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %125 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %124, i32 0, i32 22
  store i8* %123, i8** %125, align 8
  br label %130

126:                                              ; preds = %108
  %127 = load i8*, i8** @ANT_B, align 8
  %128 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %129 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %128, i32 0, i32 22
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %122
  br label %179

131:                                              ; preds = %99
  %132 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %133 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %132, i32 0, i32 7
  store i32 1, i32* %133, align 8
  %134 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %135 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %134, i32 0, i32 8
  store i32 0, i32* %135, align 4
  %136 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %137 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %136, i32 0, i32 9
  store i32 0, i32* %137, align 8
  %138 = load i8, i8* %5, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @EEP_ANTENNA_AUX, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %131
  %145 = load i8*, i8** @ANT_A, align 8
  %146 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %147 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %146, i32 0, i32 21
  store i8* %145, i8** %147, align 8
  %148 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %149 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = load i8*, i8** @ANT_B, align 8
  %154 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %155 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %154, i32 0, i32 22
  store i8* %153, i8** %155, align 8
  br label %160

156:                                              ; preds = %144
  %157 = load i8*, i8** @ANT_A, align 8
  %158 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %159 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %158, i32 0, i32 22
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %156, %152
  br label %178

161:                                              ; preds = %131
  %162 = load i8*, i8** @ANT_B, align 8
  %163 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %164 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %163, i32 0, i32 21
  store i8* %162, i8** %164, align 8
  %165 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %166 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load i8*, i8** @ANT_A, align 8
  %171 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %172 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %171, i32 0, i32 22
  store i8* %170, i8** %172, align 8
  br label %177

173:                                              ; preds = %161
  %174 = load i8*, i8** @ANT_B, align 8
  %175 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %176 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %175, i32 0, i32 22
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177, %160
  br label %179

179:                                              ; preds = %178, %130
  %180 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %181 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %182 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %181, i32 0, i32 21
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @BBvSetTxAntennaMode(%struct.vnt_private* %180, i8* %183)
  %185 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %186 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %187 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %186, i32 0, i32 22
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @BBvSetRxAntennaMode(%struct.vnt_private* %185, i8* %188)
  %190 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %191 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %190, i32 0, i32 34
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @EEP_OFS_ZONETYPE, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %197 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %196, i32 0, i32 36
  store i32 %195, i32* %197, align 4
  %198 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %199 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %198, i32 0, i32 35
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %179
  %203 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %204 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %203, i32 0, i32 34
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @EEP_OFS_ZONETYPE, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %210 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %209, i32 0, i32 33
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %202, %179
  %212 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %213 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %212, i32 0, i32 33
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %217 = call i32 @RFbInit(%struct.vnt_private* %216)
  %218 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %219 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %218, i32 0, i32 10
  store i32 255, i32* %219, align 4
  %220 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %221 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %220, i32 0, i32 17
  %222 = load i64, i64* %221, align 8
  %223 = load i8, i8* @EEP_OFS_PWR_CCK, align 1
  %224 = call i8* @SROMbyReadEmbedded(i64 %222, i8 zeroext %223)
  %225 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %226 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %225, i32 0, i32 32
  store i8* %224, i8** %226, align 8
  %227 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %228 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %227, i32 0, i32 17
  %229 = load i64, i64* %228, align 8
  %230 = load i8, i8* @EEP_OFS_PWR_OFDMG, align 1
  %231 = call i8* @SROMbyReadEmbedded(i64 %229, i8 zeroext %230)
  %232 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %233 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %232, i32 0, i32 31
  store i8* %231, i8** %233, align 8
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %329, %211
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %238, label %332

238:                                              ; preds = %234
  %239 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %240 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %239, i32 0, i32 17
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* @EEP_OFS_CCK_PWR_TBL, align 8
  %245 = add nsw i64 %243, %244
  %246 = trunc i64 %245 to i8
  %247 = call i8* @SROMbyReadEmbedded(i64 %241, i8 zeroext %246)
  %248 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %249 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %248, i32 0, i32 30
  %250 = load i8**, i8*** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = add i32 %251, 1
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %250, i64 %253
  store i8* %247, i8** %254, align 8
  %255 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %256 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %255, i32 0, i32 30
  %257 = load i8**, i8*** %256, align 8
  %258 = load i32, i32* %4, align 4
  %259 = add i32 %258, 1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %257, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = icmp eq i8* %262, null
  br i1 %263, label %264, label %275

264:                                              ; preds = %238
  %265 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %266 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %265, i32 0, i32 32
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %269 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %268, i32 0, i32 30
  %270 = load i8**, i8*** %269, align 8
  %271 = load i32, i32* %4, align 4
  %272 = add i32 %271, 1
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %270, i64 %273
  store i8* %267, i8** %274, align 8
  br label %275

275:                                              ; preds = %264, %238
  %276 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %277 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %276, i32 0, i32 17
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* %4, align 4
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* @EEP_OFS_OFDM_PWR_TBL, align 8
  %282 = add nsw i64 %280, %281
  %283 = trunc i64 %282 to i8
  %284 = call i8* @SROMbyReadEmbedded(i64 %278, i8 zeroext %283)
  %285 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %286 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %285, i32 0, i32 29
  %287 = load i8**, i8*** %286, align 8
  %288 = load i32, i32* %4, align 4
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %287, i64 %290
  store i8* %284, i8** %291, align 8
  %292 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %293 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %292, i32 0, i32 29
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = add i32 %295, 1
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %294, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = icmp eq i8* %299, null
  br i1 %300, label %301, label %312

301:                                              ; preds = %275
  %302 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %303 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %302, i32 0, i32 31
  %304 = load i8*, i8** %303, align 8
  %305 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %306 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %305, i32 0, i32 29
  %307 = load i8**, i8*** %306, align 8
  %308 = load i32, i32* %4, align 4
  %309 = add i32 %308, 1
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %307, i64 %310
  store i8* %304, i8** %311, align 8
  br label %312

312:                                              ; preds = %301, %275
  %313 = load i8, i8* %6, align 1
  %314 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %315 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %314, i32 0, i32 11
  %316 = load i8*, i8** %315, align 8
  %317 = load i32, i32* %4, align 4
  %318 = add i32 %317, 1
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  store i8 %313, i8* %320, align 1
  %321 = load i8, i8* %7, align 1
  %322 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %323 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %322, i32 0, i32 12
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = add i32 %325, 1
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  store i8 %321, i8* %328, align 1
  br label %329

329:                                              ; preds = %312
  %330 = load i32, i32* %4, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %4, align 4
  br label %234

332:                                              ; preds = %234
  store i32 11, i32* %4, align 4
  br label %333

333:                                              ; preds = %359, %332
  %334 = load i32, i32* %4, align 4
  %335 = icmp ult i32 %334, 14
  br i1 %335, label %336, label %362

336:                                              ; preds = %333
  %337 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %338 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %337, i32 0, i32 30
  %339 = load i8**, i8*** %338, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 10
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %343 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %342, i32 0, i32 30
  %344 = load i8**, i8*** %343, align 8
  %345 = load i32, i32* %4, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %344, i64 %346
  store i8* %341, i8** %347, align 8
  %348 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %349 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %348, i32 0, i32 29
  %350 = load i8**, i8*** %349, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 10
  %352 = load i8*, i8** %351, align 8
  %353 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %354 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %353, i32 0, i32 29
  %355 = load i8**, i8*** %354, align 8
  %356 = load i32, i32* %4, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i8*, i8** %355, i64 %357
  store i8* %352, i8** %358, align 8
  br label %359

359:                                              ; preds = %336
  %360 = load i32, i32* %4, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %4, align 4
  br label %333

362:                                              ; preds = %333
  store i32 0, i32* %4, align 4
  br label %363

363:                                              ; preds = %405, %362
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* @CB_MAX_CHANNEL_5G, align 4
  %366 = icmp ult i32 %364, %365
  br i1 %366, label %367, label %408

367:                                              ; preds = %363
  %368 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %369 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %368, i32 0, i32 17
  %370 = load i64, i64* %369, align 8
  %371 = load i32, i32* %4, align 4
  %372 = zext i32 %371 to i64
  %373 = load i64, i64* @EEP_OFS_OFDMA_PWR_TBL, align 8
  %374 = add nsw i64 %372, %373
  %375 = trunc i64 %374 to i8
  %376 = call i8* @SROMbyReadEmbedded(i64 %370, i8 zeroext %375)
  %377 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %378 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %377, i32 0, i32 29
  %379 = load i8**, i8*** %378, align 8
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %382 = add i32 %380, %381
  %383 = add i32 %382, 1
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds i8*, i8** %379, i64 %384
  store i8* %376, i8** %385, align 8
  %386 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %387 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %386, i32 0, i32 17
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* %4, align 4
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* @EEP_OFS_OFDMA_PWR_dBm, align 8
  %392 = add nsw i64 %390, %391
  %393 = trunc i64 %392 to i8
  %394 = call i8* @SROMbyReadEmbedded(i64 %388, i8 zeroext %393)
  %395 = ptrtoint i8* %394 to i8
  %396 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %397 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %396, i32 0, i32 12
  %398 = load i8*, i8** %397, align 8
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %401 = add i32 %399, %400
  %402 = add i32 %401, 1
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %398, i64 %403
  store i8 %395, i8* %404, align 1
  br label %405

405:                                              ; preds = %367
  %406 = load i32, i32* %4, align 4
  %407 = add i32 %406, 1
  store i32 %407, i32* %4, align 4
  br label %363

408:                                              ; preds = %363
  %409 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %410 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @REV_ID_VT3253_B1, align 8
  %413 = icmp sgt i64 %411, %412
  br i1 %413, label %414, label %433

414:                                              ; preds = %408
  %415 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %416 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %415, i32 0, i32 17
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @MACvSelectPage1(i64 %417)
  %419 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %420 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %419, i32 0, i32 17
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @MAC_REG_MSRCTL, align 8
  %423 = add nsw i64 %421, %422
  %424 = add nsw i64 %423, 1
  %425 = load i32, i32* @MSRCTL1_TXPWR, align 4
  %426 = load i32, i32* @MSRCTL1_CSAPAREN, align 4
  %427 = or i32 %425, %426
  %428 = call i32 @VNSvOutPortB(i64 %424, i32 %427)
  %429 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %430 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %429, i32 0, i32 17
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @MACvSelectPage0(i64 %431)
  br label %433

433:                                              ; preds = %414, %408
  %434 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %435 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %434, i32 0, i32 17
  %436 = load i64, i64* %435, align 8
  %437 = load i32, i32* @MAC_REG_CFG, align 4
  %438 = load i32, i32* @CFG_TKIPOPT, align 4
  %439 = load i32, i32* @CFG_NOTXTIMEOUT, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @MACvWordRegBitsOn(i64 %436, i32 %437, i32 %440)
  %442 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %443 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %444 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %443, i32 0, i32 28
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @MACvSetShortRetryLimit(%struct.vnt_private* %442, i32 %445)
  %447 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %448 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %449 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %448, i32 0, i32 27
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @MACvSetLongRetryLimit(%struct.vnt_private* %447, i32 %450)
  %452 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %453 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %452, i32 0, i32 17
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @MAC_REG_TFTCTL, align 8
  %456 = add nsw i64 %454, %455
  %457 = load i32, i32* @TFTCTL_TSFCNTRST, align 4
  %458 = call i32 @VNSvOutPortB(i64 %456, i32 %457)
  %459 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %460 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %459, i32 0, i32 17
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @MAC_REG_TFTCTL, align 8
  %463 = add nsw i64 %461, %462
  %464 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %465 = call i32 @VNSvOutPortB(i64 %463, i32 %464)
  %466 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %467 = call i32 @BBbVT3253Init(%struct.vnt_private* %466)
  %468 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %469 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %468, i32 0, i32 26
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %492

472:                                              ; preds = %433
  %473 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %474 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %473, i32 0, i32 23
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 0
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %479 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %478, i32 0, i32 24
  store i32 %477, i32* %479, align 8
  %480 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %481 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %480, i32 0, i32 24
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %484 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %483, i32 0, i32 25
  store i32 %482, i32* %484, align 4
  %485 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %486 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %487 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %486, i32 0, i32 23
  %488 = load i32*, i32** %487, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 0
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @BBvSetVGAGainOffset(%struct.vnt_private* %485, i32 %490)
  br label %492

492:                                              ; preds = %472, %433
  %493 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %494 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %495 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %494, i32 0, i32 22
  %496 = load i8*, i8** %495, align 8
  %497 = call i32 @BBvSetRxAntennaMode(%struct.vnt_private* %493, i8* %496)
  %498 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %499 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %500 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %499, i32 0, i32 21
  %501 = load i8*, i8** %500, align 8
  %502 = call i32 @BBvSetTxAntennaMode(%struct.vnt_private* %498, i8* %501)
  %503 = load i8*, i8** @RATE_54M, align 8
  %504 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %505 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %504, i32 0, i32 20
  store i8* %503, i8** %505, align 8
  %506 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %507 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %506, i32 0, i32 13
  store i32 0, i32* %507, align 8
  %508 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %509 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %508, i32 0, i32 17
  %510 = load i64, i64* %509, align 8
  %511 = load i8, i8* @EEP_OFS_RADIOCTL, align 1
  %512 = call i8* @SROMbyReadEmbedded(i64 %510, i8 zeroext %511)
  %513 = ptrtoint i8* %512 to i32
  %514 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %515 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %514, i32 0, i32 14
  store i32 %513, i32* %515, align 4
  %516 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %517 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %516, i32 0, i32 15
  store i32 0, i32* %517, align 8
  %518 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %519 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %518, i32 0, i32 14
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @EEP_RADIOCTL_ENABLE, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %562

524:                                              ; preds = %492
  %525 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %526 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %525, i32 0, i32 17
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %529 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %528, i32 0, i32 16
  %530 = call i32 @MACvGPIOIn(i64 %527, i32* %529)
  %531 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %532 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %531, i32 0, i32 16
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* @GPIO0_DATA, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %544

537:                                              ; preds = %524
  %538 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %539 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %538, i32 0, i32 14
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* @EEP_RADIOCTL_INV, align 4
  %542 = and i32 %540, %541
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %558

544:                                              ; preds = %537, %524
  %545 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %546 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %545, i32 0, i32 16
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @GPIO0_DATA, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %561, label %551

551:                                              ; preds = %544
  %552 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %553 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %552, i32 0, i32 14
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @EEP_RADIOCTL_INV, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %551, %537
  %559 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %560 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %559, i32 0, i32 15
  store i32 1, i32* %560, align 8
  br label %561

561:                                              ; preds = %558, %551, %544
  br label %562

562:                                              ; preds = %561, %492
  %563 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %564 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %563, i32 0, i32 15
  %565 = load i32, i32* %564, align 8
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %572, label %567

567:                                              ; preds = %562
  %568 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %569 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %568, i32 0, i32 19
  %570 = load i64, i64* %569, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %567, %562
  %573 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %574 = call i32 @CARDbRadioPowerOff(%struct.vnt_private* %573)
  br label %575

575:                                              ; preds = %572, %567
  %576 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %577 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %576, i32 0, i32 17
  %578 = load i64, i64* %577, align 8
  %579 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %580 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %579, i32 0, i32 18
  %581 = load i32, i32* %580, align 8
  %582 = call i32 @SROMvReadEtherAddress(i64 %578, i32 %581)
  %583 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %584 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %583, i32 0, i32 18
  %585 = load i32, i32* %584, align 8
  %586 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %585)
  %587 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %588 = call i32 @CARDvSafeResetRx(%struct.vnt_private* %587)
  %589 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %590 = call i32 @CARDvSafeResetTx(%struct.vnt_private* %589)
  %591 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %592 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %591, i32 0, i32 4
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* @REV_ID_VT3253_A1, align 8
  %595 = icmp sle i64 %593, %594
  br i1 %595, label %596, label %603

596:                                              ; preds = %575
  %597 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %598 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %597, i32 0, i32 17
  %599 = load i64, i64* %598, align 8
  %600 = load i32, i32* @MAC_REG_RCR, align 4
  %601 = load i32, i32* @RCR_WPAERR, align 4
  %602 = call i32 @MACvRegBitsOn(i64 %599, i32 %600, i32 %601)
  br label %603

603:                                              ; preds = %596, %575
  %604 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %605 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %604, i32 0, i32 17
  %606 = load i64, i64* %605, align 8
  %607 = call i32 @MACvReceive0(i64 %606)
  %608 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %609 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %608, i32 0, i32 17
  %610 = load i64, i64* %609, align 8
  %611 = call i32 @MACvReceive1(i64 %610)
  %612 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %613 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %612, i32 0, i32 17
  %614 = load i64, i64* %613, align 8
  %615 = call i32 @MACvStart(i64 %614)
  ret void
}

declare dso_local i32 @MACbShutdown(%struct.vnt_private*) #1

declare dso_local i32 @BBvSoftwareReset(%struct.vnt_private*) #1

declare dso_local i32 @MACbSoftwareReset(%struct.vnt_private*) #1

declare dso_local i32 @MACvInitialize(%struct.vnt_private*) #1

declare dso_local i32 @VNSvInPortB(i64, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SROMvReadAllContents(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @SROMbyReadEmbedded(i64, i8 zeroext) #1

declare dso_local i32 @BBvSetTxAntennaMode(%struct.vnt_private*, i8*) #1

declare dso_local i32 @BBvSetRxAntennaMode(%struct.vnt_private*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @RFbInit(%struct.vnt_private*) #1

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

declare dso_local i32 @MACvWordRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @MACvSetShortRetryLimit(%struct.vnt_private*, i32) #1

declare dso_local i32 @MACvSetLongRetryLimit(%struct.vnt_private*, i32) #1

declare dso_local i32 @BBbVT3253Init(%struct.vnt_private*) #1

declare dso_local i32 @BBvSetVGAGainOffset(%struct.vnt_private*, i32) #1

declare dso_local i32 @MACvGPIOIn(i64, i32*) #1

declare dso_local i32 @CARDbRadioPowerOff(%struct.vnt_private*) #1

declare dso_local i32 @SROMvReadEtherAddress(i64, i32) #1

declare dso_local i32 @CARDvSafeResetRx(%struct.vnt_private*) #1

declare dso_local i32 @CARDvSafeResetTx(%struct.vnt_private*) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @MACvReceive0(i64) #1

declare dso_local i32 @MACvReceive1(i64) #1

declare dso_local i32 @MACvStart(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
