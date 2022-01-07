; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_locate_record_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_locate_record_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.LRE_eckd_data = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@DASD_ECKD_CCW_LOCATE_RECORD_EXT = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fill LRE unknown opcode 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, %struct.LRE_eckd_data*, i32, i32, i32, i32, %struct.dasd_device*, i32, i32)* @locate_record_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locate_record_ext(%struct.ccw1* %0, %struct.LRE_eckd_data* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dasd_device* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.ccw1*, align 8
  %11 = alloca %struct.LRE_eckd_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dasd_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dasd_eckd_private*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %10, align 8
  store %struct.LRE_eckd_data* %1, %struct.LRE_eckd_data** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.dasd_device* %6, %struct.dasd_device** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load %struct.dasd_device*, %struct.dasd_device** %16, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 0
  %25 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %24, align 8
  store %struct.dasd_eckd_private* %25, %struct.dasd_eckd_private** %19, align 8
  %26 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %27 = icmp ne %struct.ccw1* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %9
  %29 = load i32, i32* @DASD_ECKD_CCW_LOCATE_RECORD_EXT, align 4
  %30 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %31 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %33 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 134
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i32 0, i32 0
  store i32 22, i32* %38, align 8
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %41 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %40, i32 0, i32 0
  store i32 20, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %44 = call i64 @__pa(%struct.LRE_eckd_data* %43)
  %45 = load %struct.ccw1*, %struct.ccw1** %10, align 8
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %9
  %48 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %49 = call i32 @memset(%struct.LRE_eckd_data* %48, i32 0, i32 64)
  store i32 0, i32* %20, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  %53 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %19, align 8
  %54 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %87 [
    i32 13200, label %57
    i32 13184, label %75
  ]

57:                                               ; preds = %52
  %58 = load i32, i32* %17, align 4
  %59 = add i32 %58, 6
  %60 = call i32 @ceil_quot(i32 %59, i32 232)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %21, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 6, %63
  %65 = add i32 %61, %64
  %66 = call i32 @ceil_quot(i32 %65, i32 34)
  %67 = add nsw i32 9, %66
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub i32 %68, 1
  %70 = load i32, i32* %22, align 4
  %71 = add nsw i32 10, %70
  %72 = mul i32 %69, %71
  %73 = add i32 49, %72
  %74 = udiv i32 %73, 8
  store i32 %74, i32* %20, align 4
  br label %87

75:                                               ; preds = %52
  %76 = load i32, i32* %17, align 4
  %77 = add i32 %76, 12
  %78 = call i32 @ceil_quot(i32 %77, i32 32)
  %79 = add nsw i32 7, %78
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub i32 %80, 1
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 8, %82
  %84 = mul i32 %81, %83
  %85 = add i32 39, %84
  %86 = udiv i32 %85, 7
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %52, %75, %57
  br label %88

88:                                               ; preds = %87, %47
  %89 = load i32, i32* %20, align 4
  %90 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %91 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %94 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  switch i32 %95, label %273 [
    i32 133, label %96
    i32 144, label %103
    i32 129, label %110
    i32 140, label %121
    i32 137, label %132
    i32 130, label %132
    i32 132, label %132
    i32 131, label %132
    i32 136, label %142
    i32 135, label %142
    i32 134, label %152
    i32 128, label %206
    i32 148, label %218
    i32 141, label %218
    i32 143, label %218
    i32 142, label %218
    i32 147, label %228
    i32 146, label %228
    i32 145, label %238
    i32 139, label %242
    i32 138, label %253
    i32 149, label %263
  ]

96:                                               ; preds = %88
  %97 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %98 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 3, i32* %99, align 4
  %100 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %101 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 3, i32* %102, align 4
  br label %279

103:                                              ; preds = %88
  %104 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %105 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 3, i32* %106, align 4
  %107 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %108 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 22, i32* %109, align 4
  br label %279

110:                                              ; preds = %88
  %111 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %112 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %115 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 3, i32* %116, align 4
  %117 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %118 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %279

121:                                              ; preds = %88
  %122 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %123 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 3, i32* %124, align 4
  %125 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %126 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 22, i32* %127, align 4
  %128 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %129 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %279

132:                                              ; preds = %88, %88, %88, %88
  %133 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %134 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %138 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %140 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %279

142:                                              ; preds = %88, %88
  %143 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %144 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %148 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %150 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i32 3, i32* %151, align 4
  br label %279

152:                                              ; preds = %88
  %153 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %154 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 0, i32* %155, align 4
  %156 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %157 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  store i32 63, i32* %158, align 4
  %159 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %160 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %159, i32 0, i32 3
  store i32 17, i32* %160, align 4
  %161 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %162 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %161, i32 0, i32 2
  store i32 0, i32* %162, align 8
  %163 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %164 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %163, i32 0, i32 4
  store i32 2, i32* %164, align 8
  %165 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %166 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 8
  br i1 %168, label %169, label %186

169:                                              ; preds = %152
  %170 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %171 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %170, i32 0, i32 5
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 255, i32* %173, align 4
  %174 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %175 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  store i32 255, i32* %177, align 4
  %178 = load i32, i32* %14, align 4
  %179 = sub nsw i32 16, %178
  %180 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %181 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %180, i32 0, i32 5
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, %179
  store i32 %185, i32* %183, align 4
  br label %203

186:                                              ; preds = %152
  %187 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %188 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 255, i32* %190, align 4
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 8, %191
  %193 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %194 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, %192
  store i32 %198, i32* %196, align 4
  %199 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %200 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %186, %169
  %204 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %205 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %204, i32 0, i32 0
  store i32 255, i32* %205, align 8
  br label %279

206:                                              ; preds = %88
  %207 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %208 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %207, i32 0, i32 9
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %212 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %214 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i32 63, i32* %215, align 4
  %216 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %217 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %216, i32 0, i32 3
  store i32 35, i32* %217, align 4
  br label %279

218:                                              ; preds = %88, %88, %88, %88
  %219 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %220 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %219, i32 0, i32 9
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %224 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %226 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %225, i32 0, i32 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  store i32 6, i32* %227, align 4
  br label %279

228:                                              ; preds = %88, %88
  %229 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %230 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %229, i32 0, i32 9
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %234 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %236 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %235, i32 0, i32 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  store i32 22, i32* %237, align 4
  br label %279

238:                                              ; preds = %88
  %239 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %240 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  store i32 6, i32* %241, align 4
  br label %279

242:                                              ; preds = %88
  %243 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %244 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %243, i32 0, i32 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 4
  %246 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %247 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %246, i32 0, i32 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  store i32 12, i32* %248, align 4
  %249 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %250 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %249, i32 0, i32 4
  store i32 0, i32* %250, align 8
  %251 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %252 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %251, i32 0, i32 0
  store i32 255, i32* %252, align 8
  br label %279

253:                                              ; preds = %88
  %254 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %255 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  store i32 1, i32* %256, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %259 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %261 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %260, i32 0, i32 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  store i32 12, i32* %262, align 4
  br label %279

263:                                              ; preds = %88
  %264 = load i32, i32* %17, align 4
  %265 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %266 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %268 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %267, i32 0, i32 9
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  store i32 1, i32* %269, align 4
  %270 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %271 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  store i32 11, i32* %272, align 4
  br label %279

273:                                              ; preds = %88
  %274 = load i32, i32* @DBF_ERR, align 4
  %275 = load %struct.dasd_device*, %struct.dasd_device** %16, align 8
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @DBF_DEV_EVENT(i32 %274, %struct.dasd_device* %275, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %276)
  %278 = call i32 (...) @BUG()
  br label %279

279:                                              ; preds = %273, %263, %253, %242, %238, %228, %218, %206, %203, %142, %132, %121, %110, %103, %96
  %280 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %281 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %280, i32 0, i32 7
  %282 = load i32, i32* %12, align 4
  %283 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %19, align 8
  %284 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = udiv i32 %282, %286
  %288 = load i32, i32* %12, align 4
  %289 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %19, align 8
  %290 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = urem i32 %288, %292
  %294 = call i32 @set_ch_t(%struct.TYPE_10__* %281, i32 %287, i32 %293)
  %295 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %296 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %295, i32 0, i32 7
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %300 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 2
  store i32 %298, i32* %301, align 8
  %302 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %303 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %302, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %307 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %306, i32 0, i32 6
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  store i32 %305, i32* %308, align 4
  %309 = load i32, i32* %13, align 4
  %310 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %11, align 8
  %311 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %310, i32 0, i32 6
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 8
  ret void
}

declare dso_local i64 @__pa(%struct.LRE_eckd_data*) #1

declare dso_local i32 @memset(%struct.LRE_eckd_data*, i32, i32) #1

declare dso_local i32 @ceil_quot(i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @set_ch_t(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
