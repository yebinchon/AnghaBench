; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_ms_get_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_ms_get_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.asd_manuf_sec = type { i32 }
%struct.asd_manuf_phy_param = type { i8*, i64, i32, i32, i32, %struct.asd_manuf_phy_desc* }
%struct.asd_manuf_phy_desc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"ms: no phy parameters found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ms: Creating default phy parameters\0A\00", align 1
@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"unsupported manuf. phy param major version:0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ms: num_phy_desc: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ms: phy%d: HIDDEN\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ms: phy%d: REPORTED\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ms: phy%d: ENABLED\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ms: max_phys:0x%x, num_phys:0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ms: enabled_phys:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_manuf_sec*)* @asd_ms_get_phy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_ms_get_phy_params(%struct.asd_ha_struct* %0, %struct.asd_manuf_sec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca %struct.asd_manuf_sec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.asd_manuf_phy_param*, align 8
  %10 = alloca %struct.asd_manuf_phy_param, align 8
  %11 = alloca %struct.asd_manuf_phy_desc*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store %struct.asd_manuf_sec* %1, %struct.asd_manuf_sec** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %5, align 8
  %13 = call %struct.asd_manuf_phy_param* @asd_find_ll_by_id(%struct.asd_manuf_sec* %12, i8 signext 80, i8 signext 77)
  store %struct.asd_manuf_phy_param* %13, %struct.asd_manuf_phy_param** %9, align 8
  %14 = load %struct.asd_manuf_phy_param*, %struct.asd_manuf_phy_param** %9, align 8
  %15 = icmp ne %struct.asd_manuf_phy_param* %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 80, i8* %21, align 1
  %22 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 77, i8* %24, align 1
  %25 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 2
  store i32 2, i32* %26, align 8
  %27 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 3
  store i32 8, i32* %27, align 4
  %28 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 4
  store i32 24, i32* %28, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %71, %16
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ASD_MAX_PHYS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 5
  %35 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %35, i64 %37
  %39 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 5
  %42 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %42, i64 %44
  %46 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %45, i32 0, i32 1
  store i32 %40, i32* %46, align 4
  %47 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 5
  %48 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %48, i64 %50
  %52 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %51, i32 0, i32 2
  store i32 246, i32* %52, align 4
  %53 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 5
  %54 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %54, i64 %56
  %58 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %57, i32 0, i32 3
  store i32 16, i32* %58, align 4
  %59 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 5
  %60 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %60, i64 %62
  %64 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %63, i32 0, i32 4
  store i32 67, i32* %64, align 4
  %65 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %10, i32 0, i32 5
  %66 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %66, i64 %68
  %70 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %69, i32 0, i32 5
  store i32 235, i32* %70, align 4
  br label %71

71:                                               ; preds = %33
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %29

74:                                               ; preds = %29
  store %struct.asd_manuf_phy_param* %10, %struct.asd_manuf_phy_param** %9, align 8
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.asd_manuf_phy_param*, %struct.asd_manuf_phy_param** %9, align 8
  %77 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.asd_manuf_phy_param*, %struct.asd_manuf_phy_param** %9, align 8
  %82 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @asd_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %213

87:                                               ; preds = %75
  %88 = load %struct.asd_manuf_phy_param*, %struct.asd_manuf_phy_param** %9, align 8
  %89 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %93 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %185, %87
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.asd_manuf_phy_param*, %struct.asd_manuf_phy_param** %9, align 8
  %98 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %188

101:                                              ; preds = %95
  %102 = load %struct.asd_manuf_phy_param*, %struct.asd_manuf_phy_param** %9, align 8
  %103 = getelementptr inbounds %struct.asd_manuf_phy_param, %struct.asd_manuf_phy_param* %102, i32 0, i32 5
  %104 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %104, i64 %106
  store %struct.asd_manuf_phy_desc* %107, %struct.asd_manuf_phy_desc** %11, align 8
  %108 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %11, align 8
  %109 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 15
  switch i32 %111, label %140 [
    i32 129, label %112
    i32 128, label %115
    i32 130, label %128
  ]

112:                                              ; preds = %101
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %185

115:                                              ; preds = %101
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = shl i32 1, %118
  %120 = xor i32 %119, -1
  %121 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %122 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %120
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %185

128:                                              ; preds = %101
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = shl i32 1, %131
  %133 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %134 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %101, %128
  %141 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %11, align 8
  %142 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %145 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 %143, i32* %151, align 4
  %152 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %11, align 8
  %153 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %156 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  store i32 %154, i32* %162, align 4
  %163 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %11, align 8
  %164 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %167 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  store i32 %165, i32* %173, align 4
  %174 = load %struct.asd_manuf_phy_desc*, %struct.asd_manuf_phy_desc** %11, align 8
  %175 = getelementptr inbounds %struct.asd_manuf_phy_desc, %struct.asd_manuf_phy_desc* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %178 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  store i32 %176, i32* %184, align 4
  br label %185

185:                                              ; preds = %140, %115, %112
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %95

188:                                              ; preds = %95
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %189, %190
  %192 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %193 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %197 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  store i32 %195, i32* %198, align 8
  %199 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %200 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %204 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %206)
  %208 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %209 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %211)
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %188, %80
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.asd_manuf_phy_param* @asd_find_ll_by_id(%struct.asd_manuf_sec*, i8 signext, i8 signext) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

declare dso_local i32 @asd_printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
