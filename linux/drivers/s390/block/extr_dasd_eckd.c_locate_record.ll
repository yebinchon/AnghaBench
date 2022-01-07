; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_locate_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_locate_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.LO_eckd_data = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Locate: trk %d, rec %d, no_rec %d, cmd %d, reclen %d\00", align 1
@DASD_ECKD_CCW_LOCATE_RECORD = common dso_local global i32 0, align 4
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown locate record opcode 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, %struct.LO_eckd_data*, i32, i32, i32, i32, %struct.dasd_device*, i32)* @locate_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locate_record(%struct.ccw1* %0, %struct.LO_eckd_data* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dasd_device* %6, i32 %7) #0 {
  %9 = alloca %struct.ccw1*, align 8
  %10 = alloca %struct.LO_eckd_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dasd_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dasd_eckd_private*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %9, align 8
  store %struct.LO_eckd_data* %1, %struct.LO_eckd_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.dasd_device* %6, %struct.dasd_device** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load %struct.dasd_device*, %struct.dasd_device** %15, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %22, align 8
  store %struct.dasd_eckd_private* %23, %struct.dasd_eckd_private** %17, align 8
  %24 = load i32, i32* @DBF_INFO, align 4
  %25 = load %struct.dasd_device*, %struct.dasd_device** %15, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %24, %struct.dasd_device* %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @DASD_ECKD_CCW_LOCATE_RECORD, align 4
  %33 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %34 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i32 0, i32 0
  store i32 16, i32* %38, align 8
  %39 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %40 = call i64 @__pa(%struct.LO_eckd_data* %39)
  %41 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %42 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %44 = call i32 @memset(%struct.LO_eckd_data* %43, i32 0, i32 44)
  store i32 0, i32* %18, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %8
  %48 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %49 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %82 [
    i32 13200, label %52
    i32 13184, label %70
  ]

52:                                               ; preds = %47
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 6
  %55 = call i32 @ceil_quot(i32 %54, i32 232)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  %59 = mul nsw i32 6, %58
  %60 = add nsw i32 %56, %59
  %61 = call i32 @ceil_quot(i32 %60, i32 34)
  %62 = add nsw i32 9, %61
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub i32 %63, 1
  %65 = load i32, i32* %20, align 4
  %66 = add nsw i32 10, %65
  %67 = mul i32 %64, %66
  %68 = add i32 49, %67
  %69 = udiv i32 %68, 8
  store i32 %69, i32* %18, align 4
  br label %82

70:                                               ; preds = %47
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 12
  %73 = call i32 @ceil_quot(i32 %72, i32 32)
  %74 = add nsw i32 7, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub i32 %75, 1
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 8, %77
  %79 = mul i32 %76, %78
  %80 = add i32 39, %79
  %81 = udiv i32 %80, 7
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %47, %70, %52
  br label %83

83:                                               ; preds = %82, %8
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %86 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %89 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  switch i32 %90, label %181 [
    i32 132, label %91
    i32 140, label %98
    i32 128, label %105
    i32 136, label %116
    i32 135, label %127
    i32 129, label %127
    i32 131, label %127
    i32 130, label %127
    i32 134, label %137
    i32 133, label %137
    i32 144, label %147
    i32 137, label %147
    i32 139, label %147
    i32 138, label %147
    i32 143, label %157
    i32 142, label %157
    i32 141, label %167
    i32 145, label %171
  ]

91:                                               ; preds = %83
  %92 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %93 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 3, i32* %94, align 4
  %95 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %96 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 3, i32* %97, align 4
  br label %186

98:                                               ; preds = %83
  %99 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %100 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 3, i32* %101, align 4
  %102 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %103 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 22, i32* %104, align 4
  br label %186

105:                                              ; preds = %83
  %106 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %107 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %110 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 3, i32* %111, align 4
  %112 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %113 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %186

116:                                              ; preds = %83
  %117 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %118 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 3, i32* %119, align 4
  %120 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %121 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 22, i32* %122, align 4
  %123 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %124 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %186

127:                                              ; preds = %83, %83, %83, %83
  %128 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %129 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %133 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %135 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  br label %186

137:                                              ; preds = %83, %83
  %138 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %139 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %143 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %145 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 3, i32* %146, align 4
  br label %186

147:                                              ; preds = %83, %83, %83, %83
  %148 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %149 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %153 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  %154 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %155 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i32 6, i32* %156, align 4
  br label %186

157:                                              ; preds = %83, %83
  %158 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %159 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %163 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %165 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 22, i32* %166, align 4
  br label %186

167:                                              ; preds = %83
  %168 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %169 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  store i32 6, i32* %170, align 4
  br label %186

171:                                              ; preds = %83
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %174 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %176 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %179 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32 11, i32* %180, align 4
  br label %186

181:                                              ; preds = %83
  %182 = load i32, i32* @DBF_ERR, align 4
  %183 = load %struct.dasd_device*, %struct.dasd_device** %15, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 (i32, %struct.dasd_device*, i8*, i32, ...) @DBF_DEV_EVENT(i32 %182, %struct.dasd_device* %183, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %181, %171, %167, %157, %147, %137, %127, %116, %105, %98, %91
  %187 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %188 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %187, i32 0, i32 4
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %191 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = udiv i32 %189, %193
  %195 = load i32, i32* %11, align 4
  %196 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %197 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = urem i32 %195, %199
  %201 = call i32 @set_ch_t(%struct.TYPE_10__* %188, i32 %194, i32 %200)
  %202 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %203 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %207 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 4
  %209 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %210 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %214 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load %struct.LO_eckd_data*, %struct.LO_eckd_data** %10, align 8
  %218 = getelementptr inbounds %struct.LO_eckd_data, %struct.LO_eckd_data* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 4
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, ...) #1

declare dso_local i64 @__pa(%struct.LO_eckd_data*) #1

declare dso_local i32 @memset(%struct.LO_eckd_data*, i32, i32) #1

declare dso_local i32 @ceil_quot(i32, i32) #1

declare dso_local i32 @set_ch_t(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
