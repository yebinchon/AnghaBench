; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_init_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_init_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_7__*, %struct.TYPE_5__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IG_Backup, backup the initial gain.\0A\00", align 1
@bMaskByte0 = common dso_local global i32 0, align 4
@dm_digtable = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@DIG_ALGO_BY_FALSE_ALARM = common dso_local global i32 0, align 4
@UFWP = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@rCCK0_CCA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Scan InitialGainBackup 0xc50 is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Scan InitialGainBackup 0xc58 is %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Scan InitialGainBackup 0xc60 is %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Scan InitialGainBackup 0xc68 is %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Scan InitialGainBackup 0xa0a is %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Write scan initial gain = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Write scan 0xa0a = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"IG_Restore, restore the initial gain.\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Scan BBInitialGainRestore 0xc50 is %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Scan BBInitialGainRestore 0xc58 is %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Scan BBInitialGainRestore 0xc60 is %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Scan BBInitialGainRestore 0xc68 is %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Scan BBInitialGainRestore 0xa0a is %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Unknown IG Operation.\0A\00", align 1
@POWER_DETECTION_TH = common dso_local global i32 0, align 4
@SCAN_RX_INITIAL_GAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_init_gain(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %5, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %222

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %218 [
    i32 129, label %16
    i32 128, label %118
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @COMP_SCAN, align 4
  %18 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 23, i32* %7, align 4
  %19 = load i32, i32* @bMaskByte0, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dm_digtable, i32 0, i32 0), align 4
  %21 = load i32, i32* @DIG_ALGO_BY_FALSE_ALARM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @UFWP, align 4
  %26 = load i32, i32* @bMaskByte1, align 4
  %27 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %24, i32 %25, i32 %26, i32 8)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rtl92e_get_bb_reg(%struct.net_device* %29, i32 %30, i32 %31)
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rtl92e_get_bb_reg(%struct.net_device* %36, i32 %37, i32 %38)
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @rtl92e_get_bb_reg(%struct.net_device* %43, i32 %44, i32 %45)
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @rtl92e_get_bb_reg(%struct.net_device* %50, i32 %51, i32 %52)
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @bMaskByte2, align 4
  store i32 %57, i32* %6, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load i32, i32* @rCCK0_CCA, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @rtl92e_get_bb_reg(%struct.net_device* %58, i32 %59, i32 %60)
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @COMP_SCAN, align 4
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @COMP_SCAN, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @COMP_SCAN, align 4
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @COMP_SCAN, align 4
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @COMP_SCAN, align 4
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @COMP_SCAN, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @rtl92e_writeb(%struct.net_device* %98, i32 %99, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @rtl92e_writeb(%struct.net_device* %102, i32 %103, i32 %104)
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @rtl92e_writeb(%struct.net_device* %106, i32 %107, i32 %108)
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @rtl92e_writeb(%struct.net_device* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @COMP_SCAN, align 4
  %115 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = call i32 @rtl92e_writeb(%struct.net_device* %116, i32 2570, i32 8)
  br label %221

118:                                              ; preds = %14
  %119 = load i32, i32* @COMP_SCAN, align 4
  %120 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 127, i32* %6, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dm_digtable, i32 0, i32 0), align 4
  %122 = load i32, i32* @DIG_ALGO_BY_FALSE_ALARM, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = load i32, i32* @UFWP, align 4
  %127 = load i32, i32* @bMaskByte1, align 4
  %128 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %125, i32 %126, i32 %127, i32 8)
  br label %129

129:                                              ; preds = %124, %118
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %134 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %130, i32 %131, i32 %132, i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  %139 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %142 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %138, i32 %139, i32 %140, i32 %144)
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %150 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %146, i32 %147, i32 %148, i32 %152)
  %154 = load %struct.net_device*, %struct.net_device** %3, align 8
  %155 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %158 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %154, i32 %155, i32 %156, i32 %160)
  %162 = load i32, i32* @bMaskByte2, align 4
  store i32 %162, i32* %6, align 4
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = load i32, i32* @rCCK0_CCA, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %167 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %163, i32 %164, i32 %165, i32 %169)
  %171 = load i32, i32* @COMP_SCAN, align 4
  %172 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %173 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %171, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @COMP_SCAN, align 4
  %178 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %179 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %177, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @COMP_SCAN, align 4
  %184 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %185 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @COMP_SCAN, align 4
  %190 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %191 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %189, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* @COMP_SCAN, align 4
  %196 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %197 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %195, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %199)
  %201 = load %struct.net_device*, %struct.net_device** %3, align 8
  %202 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %203 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %202, i32 0, i32 0
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @rtl92e_set_tx_power(%struct.net_device* %201, i32 %207)
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dm_digtable, i32 0, i32 0), align 4
  %210 = load i32, i32* @DIG_ALGO_BY_FALSE_ALARM, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %129
  %213 = load %struct.net_device*, %struct.net_device** %3, align 8
  %214 = load i32, i32* @UFWP, align 4
  %215 = load i32, i32* @bMaskByte1, align 4
  %216 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %213, i32 %214, i32 %215, i32 1)
  br label %217

217:                                              ; preds = %212, %129
  br label %221

218:                                              ; preds = %14
  %219 = load i32, i32* @COMP_SCAN, align 4
  %220 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %217, %28
  br label %222

222:                                              ; preds = %221, %2
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl92e_get_bb_reg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl92e_set_tx_power(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
