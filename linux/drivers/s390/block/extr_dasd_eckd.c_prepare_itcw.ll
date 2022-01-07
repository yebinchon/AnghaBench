; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_prepare_itcw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_prepare_itcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itcw = type { i32 }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_14__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.PFX_eckd_data = type { i32, %struct.TYPE_19__, i32, i32, %struct.LRE_eckd_data, %struct.DE_eckd_data }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.LRE_eckd_data = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_22__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.DE_eckd_data = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.dcw = type { i32 }

@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@DASD_ECKD_CCW_PFX_READ = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PFX = common dso_local global i32 0, align 4
@DASD_BYPASS_CACHE = common dso_local global i64 0, align 8
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"prepare itcw, unknown opcode 0x%x\00", align 1
@DASD_SEQ_PRESTAGE = common dso_local global i64 0, align 8
@DASD_SEQ_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itcw*, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32, i32, i32, i32, i32, i32)* @prepare_itcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_itcw(%struct.itcw* %0, i32 %1, i32 %2, i32 %3, %struct.dasd_device* %4, %struct.dasd_device* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.itcw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dasd_device*, align 8
  %19 = alloca %struct.dasd_device*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.PFX_eckd_data, align 8
  %27 = alloca %struct.dasd_eckd_private*, align 8
  %28 = alloca %struct.dasd_eckd_private*, align 8
  %29 = alloca %struct.DE_eckd_data*, align 8
  %30 = alloca %struct.LRE_eckd_data*, align 8
  %31 = alloca %struct.dcw*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.itcw* %0, %struct.itcw** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store %struct.dasd_device* %4, %struct.dasd_device** %18, align 8
  store %struct.dasd_device* %5, %struct.dasd_device** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %42 = load %struct.dasd_device*, %struct.dasd_device** %18, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 0
  %44 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %43, align 8
  store %struct.dasd_eckd_private* %44, %struct.dasd_eckd_private** %27, align 8
  %45 = load %struct.dasd_device*, %struct.dasd_device** %19, align 8
  %46 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %45, i32 0, i32 0
  %47 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %46, align 8
  store %struct.dasd_eckd_private* %47, %struct.dasd_eckd_private** %28, align 8
  %48 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 5
  store %struct.DE_eckd_data* %48, %struct.DE_eckd_data** %29, align 8
  %49 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 4
  store %struct.LRE_eckd_data* %49, %struct.LRE_eckd_data** %30, align 8
  %50 = call i32 @memset(%struct.PFX_eckd_data* %26, i32 0, i32 152)
  %51 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %53 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %52, i32 0, i32 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %59 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %58, i32 0, i32 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %28, align 8
  %67 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %12
  %73 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %12
  %76 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %28, align 8
  %77 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %75
  %88 = load i32, i32* %17, align 4
  switch i32 %88, label %190 [
    i32 129, label %89
    i32 128, label %117
    i32 130, label %165
  ]

89:                                               ; preds = %87
  %90 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %91 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %94 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %98 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %102 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %104 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 66
  store i32 %106, i32* %104, align 4
  %107 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %108 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %111 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  store i32 12, i32* %112, align 4
  %113 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %114 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* @DASD_ECKD_CCW_PFX_READ, align 4
  store i32 %116, i32* %37, align 4
  br label %196

117:                                              ; preds = %87
  %118 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %119 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  store i32 2, i32* %120, align 8
  %121 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %122 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %126 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load i32, i32* %22, align 4
  %129 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %130 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %132 = load %struct.dasd_device*, %struct.dasd_device** %18, align 8
  %133 = call i32 @set_timestamp(i32* null, %struct.DE_eckd_data* %131, %struct.dasd_device* %132)
  store i32 %133, i32* %38, align 4
  %134 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %135 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, 66
  store i32 %137, i32* %135, align 4
  %138 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %139 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  %141 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %142 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  store i32 63, i32* %143, align 4
  %144 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %145 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %144, i32 0, i32 0
  store i32 35, i32* %145, align 4
  %146 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %147 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i32 2, i32* %148, align 4
  %149 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %150 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %117
  %155 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %156 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 2
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %26, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 3
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %154, %117
  %164 = load i32, i32* @DASD_ECKD_CCW_PFX, align 4
  store i32 %164, i32* %37, align 4
  br label %196

165:                                              ; preds = %87
  %166 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %167 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load i64, i64* @DASD_BYPASS_CACHE, align 8
  %170 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %171 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  %173 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %174 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, 66
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %179 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %181 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %180, i32 0, i32 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  store i32 2, i32* %182, align 4
  %183 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %184 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  store i32 22, i32* %185, align 4
  %186 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %187 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load i32, i32* @DASD_ECKD_CCW_PFX_READ, align 4
  store i32 %189, i32* %37, align 4
  br label %196

190:                                              ; preds = %87
  %191 = load i32, i32* @DBF_ERR, align 4
  %192 = load %struct.dasd_device*, %struct.dasd_device** %18, align 8
  %193 = load i32, i32* %17, align 4
  %194 = call i32 @DBF_DEV_EVENT(i32 %191, %struct.dasd_device* %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %193)
  %195 = call i32 (...) @BUG()
  br label %196

196:                                              ; preds = %190, %165, %163, %89
  %197 = load i32, i32* %38, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* %38, align 4
  store i32 %200, i32* %13, align 4
  br label %376

201:                                              ; preds = %196
  %202 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %203 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  store i32 3, i32* %204, align 8
  %205 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %206 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %34, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %34, align 4
  %211 = udiv i32 %209, %210
  store i32 %211, i32* %32, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %34, align 4
  %214 = urem i32 %212, %213
  store i32 %214, i32* %35, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %34, align 4
  %217 = udiv i32 %215, %216
  store i32 %217, i32* %33, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %34, align 4
  %220 = urem i32 %218, %219
  store i32 %220, i32* %36, align 4
  %221 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %222 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %221, i32 0, i32 6
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @DASD_SEQ_PRESTAGE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %234, label %227

227:                                              ; preds = %201
  %228 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %229 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @DASD_SEQ_ACCESS, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %258

234:                                              ; preds = %227, %201
  %235 = load i32, i32* %33, align 4
  %236 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %237 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %235, %239
  %241 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %242 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %234
  %246 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %247 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %33, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %33, align 4
  br label %257

252:                                              ; preds = %234
  %253 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %254 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %33, align 4
  br label %257

257:                                              ; preds = %252, %245
  br label %258

258:                                              ; preds = %257, %227
  %259 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %260 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %259, i32 0, i32 5
  %261 = load i32, i32* %32, align 4
  %262 = load i32, i32* %35, align 4
  %263 = call i32 @set_ch_t(%struct.TYPE_13__* %260, i32 %261, i32 %262)
  %264 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %265 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %264, i32 0, i32 4
  %266 = load i32, i32* %33, align 4
  %267 = load i32, i32* %36, align 4
  %268 = call i32 @set_ch_t(%struct.TYPE_13__* %265, i32 %266, i32 %267)
  %269 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %270 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %269, i32 0, i32 2
  store i32 32, i32* %270, align 8
  %271 = load i32, i32* %25, align 4
  %272 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %29, align 8
  %273 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %20, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %312

276:                                              ; preds = %258
  %277 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %27, align 8
  %278 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  switch i32 %280, label %311 [
    i32 13200, label %281
    i32 13184, label %299
  ]

281:                                              ; preds = %276
  %282 = load i32, i32* %22, align 4
  %283 = add i32 %282, 6
  %284 = call i32 @ceil_quot(i32 %283, i32 232)
  store i32 %284, i32* %40, align 4
  %285 = load i32, i32* %22, align 4
  %286 = load i32, i32* %40, align 4
  %287 = add nsw i32 %286, 1
  %288 = mul nsw i32 6, %287
  %289 = add i32 %285, %288
  %290 = call i32 @ceil_quot(i32 %289, i32 34)
  %291 = add nsw i32 9, %290
  store i32 %291, i32* %41, align 4
  %292 = load i32, i32* %20, align 4
  %293 = sub i32 %292, 1
  %294 = load i32, i32* %41, align 4
  %295 = add nsw i32 10, %294
  %296 = mul i32 %293, %295
  %297 = add i32 49, %296
  %298 = udiv i32 %297, 8
  store i32 %298, i32* %39, align 4
  br label %311

299:                                              ; preds = %276
  %300 = load i32, i32* %22, align 4
  %301 = add i32 %300, 12
  %302 = call i32 @ceil_quot(i32 %301, i32 32)
  %303 = add nsw i32 7, %302
  store i32 %303, i32* %41, align 4
  %304 = load i32, i32* %20, align 4
  %305 = sub i32 %304, 1
  %306 = load i32, i32* %41, align 4
  %307 = add nsw i32 8, %306
  %308 = mul i32 %305, %307
  %309 = add i32 39, %308
  %310 = udiv i32 %309, 7
  store i32 %310, i32* %39, align 4
  br label %311

311:                                              ; preds = %276, %299, %281
  br label %312

312:                                              ; preds = %311, %258
  %313 = load i32, i32* %17, align 4
  %314 = icmp eq i32 %313, 130
  br i1 %314, label %315, label %324

315:                                              ; preds = %312
  %316 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %317 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %316, i32 0, i32 7
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  store i32 0, i32* %318, align 4
  %319 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %320 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %319, i32 0, i32 7
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 2
  store i32 0, i32* %321, align 4
  %322 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %323 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %322, i32 0, i32 1
  store i32 255, i32* %323, align 4
  br label %334

324:                                              ; preds = %312
  %325 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %326 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %325, i32 0, i32 7
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 1
  store i32 1, i32* %327, align 4
  %328 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %329 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 2
  store i32 1, i32* %330, align 4
  %331 = load i32, i32* %39, align 4
  %332 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %333 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 4
  br label %334

334:                                              ; preds = %324, %315
  %335 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %336 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %335, i32 0, i32 7
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 3
  store i32 1, i32* %337, align 4
  %338 = load i32, i32* %24, align 4
  %339 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %340 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 4
  %341 = load i32, i32* %17, align 4
  %342 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %343 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %21, align 4
  %345 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %346 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %345, i32 0, i32 4
  store i32 %344, i32* %346, align 4
  %347 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %348 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %347, i32 0, i32 6
  %349 = load i32, i32* %32, align 4
  %350 = load i32, i32* %35, align 4
  %351 = call i32 @set_ch_t(%struct.TYPE_13__* %348, i32 %349, i32 %350)
  %352 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %353 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %352, i32 0, i32 6
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %357 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 2
  store i32 %355, i32* %358, align 4
  %359 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %360 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %359, i32 0, i32 6
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %364 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 1
  store i32 %362, i32* %365, align 4
  %366 = load i32, i32* %20, align 4
  %367 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %30, align 8
  %368 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %367, i32 0, i32 5
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 4
  %370 = load %struct.itcw*, %struct.itcw** %14, align 8
  %371 = load i32, i32* %37, align 4
  %372 = load i32, i32* %23, align 4
  %373 = call %struct.dcw* @itcw_add_dcw(%struct.itcw* %370, i32 %371, i32 0, %struct.PFX_eckd_data* %26, i32 152, i32 %372)
  store %struct.dcw* %373, %struct.dcw** %31, align 8
  %374 = load %struct.dcw*, %struct.dcw** %31, align 8
  %375 = call i32 @PTR_ERR_OR_ZERO(%struct.dcw* %374)
  store i32 %375, i32* %13, align 4
  br label %376

376:                                              ; preds = %334, %199
  %377 = load i32, i32* %13, align 4
  ret i32 %377
}

declare dso_local i32 @memset(%struct.PFX_eckd_data*, i32, i32) #1

declare dso_local i32 @set_timestamp(i32*, %struct.DE_eckd_data*, %struct.dasd_device*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @set_ch_t(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ceil_quot(i32, i32) #1

declare dso_local %struct.dcw* @itcw_add_dcw(%struct.itcw*, i32, i32, %struct.PFX_eckd_data*, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dcw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
