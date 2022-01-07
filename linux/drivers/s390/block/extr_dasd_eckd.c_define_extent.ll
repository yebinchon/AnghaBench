; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_define_extent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_define_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.DE_eckd_data = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dasd_device = type { %struct.TYPE_7__*, %struct.dasd_eckd_private* }
%struct.TYPE_7__ = type { i32 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@DASD_ECKD_CCW_DEFINE_EXTENT = common dso_local global i32 0, align 4
@DASD_BYPASS_CACHE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"0x%x is not a known command\0A\00", align 1
@DASD_SEQ_PRESTAGE = common dso_local global i64 0, align 8
@DASD_SEQ_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw1*, %struct.DE_eckd_data*, i32, i32, i32, %struct.dasd_device*, i32)* @define_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @define_extent(%struct.ccw1* %0, %struct.DE_eckd_data* %1, i32 %2, i32 %3, i32 %4, %struct.dasd_device* %5, i32 %6) #0 {
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca %struct.DE_eckd_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dasd_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dasd_eckd_private*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %8, align 8
  store %struct.DE_eckd_data* %1, %struct.DE_eckd_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dasd_device* %5, %struct.dasd_device** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 1
  %24 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %23, align 8
  store %struct.dasd_eckd_private* %24, %struct.dasd_eckd_private** %15, align 8
  store i32 0, i32* %21, align 4
  %25 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %26 = icmp ne %struct.ccw1* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %7
  %28 = load i32, i32* @DASD_ECKD_CCW_DEFINE_EXTENT, align 4
  %29 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %32 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %34 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %33, i32 0, i32 0
  store i32 16, i32* %34, align 8
  %35 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %36 = call i64 @__pa(%struct.DE_eckd_data* %35)
  %37 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %27, %7
  %40 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %41 = call i32 @memset(%struct.DE_eckd_data* %40, i32 0, i32 40)
  %42 = load i32, i32* %12, align 4
  switch i32 %42, label %148 [
    i32 144, label %43
    i32 140, label %43
    i32 148, label %43
    i32 141, label %43
    i32 147, label %43
    i32 146, label %43
    i32 143, label %43
    i32 142, label %43
    i32 145, label %54
    i32 139, label %63
    i32 138, label %63
    i32 137, label %76
    i32 130, label %76
    i32 132, label %76
    i32 131, label %76
    i32 136, label %91
    i32 135, label %91
    i32 149, label %101
    i32 133, label %101
    i32 129, label %101
    i32 134, label %117
    i32 128, label %130
  ]

43:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39
  %44 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %45 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %48 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %52 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %155

54:                                               ; preds = %39
  %55 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %56 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %61 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  br label %155

63:                                               ; preds = %39, %39
  %64 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %65 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %68 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %72 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %75 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %155

76:                                               ; preds = %39, %39, %39, %39
  %77 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %78 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 2, i32* %79, align 8
  %80 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %81 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %85 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %88 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %89 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %90 = call i32 @set_timestamp(%struct.ccw1* %87, %struct.DE_eckd_data* %88, %struct.dasd_device* %89)
  store i32 %90, i32* %21, align 4
  br label %155

91:                                               ; preds = %39, %39
  %92 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %95 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %98 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %99 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %100 = call i32 @set_timestamp(%struct.ccw1* %97, %struct.DE_eckd_data* %98, %struct.dasd_device* %99)
  store i32 %100, i32* %21, align 4
  br label %155

101:                                              ; preds = %39, %39, %39
  %102 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %103 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 3, i32* %104, align 8
  %105 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %106 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load i8*, i8** @DASD_BYPASS_CACHE, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %111 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %114 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %115 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %116 = call i32 @set_timestamp(%struct.ccw1* %113, %struct.DE_eckd_data* %114, %struct.dasd_device* %115)
  store i32 %116, i32* %21, align 4
  br label %155

117:                                              ; preds = %39
  %118 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %119 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 3, i32* %120, align 8
  %121 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %122 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %126 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %129 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  br label %155

130:                                              ; preds = %39
  %131 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %132 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 2, i32* %133, align 8
  %134 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %135 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %139 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %143 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %145 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %146 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %147 = call i32 @set_timestamp(%struct.ccw1* %144, %struct.DE_eckd_data* %145, %struct.dasd_device* %146)
  store i32 %147, i32* %21, align 4
  br label %155

148:                                              ; preds = %39
  %149 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  %150 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @dev_err(i32* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %148, %130, %117, %101, %91, %76, %63, %54, %43
  %156 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %157 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store i32 3, i32* %158, align 8
  %159 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %160 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 8453
  br i1 %163, label %176, label %164

164:                                              ; preds = %155
  %165 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %166 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 8455
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %172 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 5968
  br i1 %175, label %176, label %189

176:                                              ; preds = %170, %164, %155
  %177 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %178 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* %10, align 4
  %183 = icmp ult i32 %182, 2
  br i1 %183, label %189, label %184

184:                                              ; preds = %181, %176
  %185 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %186 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, 64
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %181, %170
  %190 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %191 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %16, align 4
  %196 = udiv i32 %194, %195
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %16, align 4
  %199 = urem i32 %197, %198
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %16, align 4
  %202 = udiv i32 %200, %201
  store i32 %202, i32* %20, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %16, align 4
  %205 = urem i32 %203, %204
  store i32 %205, i32* %18, align 4
  %206 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %207 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @DASD_SEQ_PRESTAGE, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %219, label %212

212:                                              ; preds = %189
  %213 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %214 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @DASD_SEQ_ACCESS, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %243

219:                                              ; preds = %212, %189
  %220 = load i32, i32* %20, align 4
  %221 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %222 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %220, %224
  %226 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %227 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %219
  %231 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %232 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %20, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %20, align 4
  br label %242

237:                                              ; preds = %219
  %238 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %15, align 8
  %239 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %20, align 4
  br label %242

242:                                              ; preds = %237, %230
  br label %243

243:                                              ; preds = %242, %212
  %244 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %245 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %244, i32 0, i32 3
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %17, align 4
  %248 = call i32 @set_ch_t(i32* %245, i32 %246, i32 %247)
  %249 = load %struct.DE_eckd_data*, %struct.DE_eckd_data** %9, align 8
  %250 = getelementptr inbounds %struct.DE_eckd_data, %struct.DE_eckd_data* %249, i32 0, i32 2
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @set_ch_t(i32* %250, i32 %251, i32 %252)
  %254 = load i32, i32* %21, align 4
  ret i32 %254
}

declare dso_local i64 @__pa(%struct.DE_eckd_data*) #1

declare dso_local i32 @memset(%struct.DE_eckd_data*, i32, i32) #1

declare dso_local i32 @set_timestamp(%struct.ccw1*, %struct.DE_eckd_data*, %struct.dasd_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @set_ch_t(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
