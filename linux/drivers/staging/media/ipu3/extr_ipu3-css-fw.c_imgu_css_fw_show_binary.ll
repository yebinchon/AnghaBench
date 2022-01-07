; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_show_binary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_show_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.imgu_fw_info = type { i64, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32*, i32*, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"found firmware binary type %i size %i name %s\0A\00", align 1
@IMGU_FW_ISP_FIRMWARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"    id %i mode %i bds 0x%x veceven %i/%i out_pins %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"    input (%i,%i)-(%i,%i) formats %s%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"yuv420 \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"raw8 raw10 \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"raw12\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"    internal (%i,%i)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"    output (%i,%i)-(%i,%i) formats\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" vf\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.imgu_fw_info*, i8*)* @imgu_css_fw_show_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_fw_show_binary(%struct.device* %0, %struct.imgu_fw_info* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.imgu_fw_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.imgu_fw_info* %1, %struct.imgu_fw_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %10 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %13 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %15, i8* %16)
  %18 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %19 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IMGU_FW_ISP_FIRMWARE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %235

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %27 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %33 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %40 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %47 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %54 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %61 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %38, i32 %45, i32 %52, i32 %59, i32 %64)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %68 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %75 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %82 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %89 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %96 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %105 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %106 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %24
  %114 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %115 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %113, %24
  %123 = phi i1 [ true, %24 ], [ %121, %113 ]
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %126 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %127 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %136 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %80, i32 %87, i32 %94, i8* %104, i8* %125, i8* %135)
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %139 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %146 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %144, i32 %151)
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %155 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %162 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %169 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %176 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %160, i32 %167, i32 %174, i32 %181)
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %203, %122
  %184 = load i32, i32* %7, align 4
  %185 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %186 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %184, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %183
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %194 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %7, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %183

206:                                              ; preds = %183
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %229, %206
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %212 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ult i32 %210, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %209
  %218 = load %struct.device*, %struct.device** %4, align 8
  %219 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %5, align 8
  %220 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %217
  %230 = load i32, i32* %7, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %209

232:                                              ; preds = %209
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %23
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
