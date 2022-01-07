; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_validate_identity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_validate_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"NIC ID: %#x v%d.%d.%d\0A\00", align 1
@nicid = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"MFI ID: %#x v%d %d->%d\0A\00", align 1
@rfid = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"CFI ID: %#x v%d %d->%d\0A\00", align 1
@macid = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"PRI ID: %#x v%d %d->%d\0A\00", align 1
@priid = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@ns3info = common dso_local global i32 0, align 4
@s3info = common dso_local global %struct.TYPE_12__* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Version:  ID %#x %d.%d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Compat: Role %#x Id %#x v%d %d->%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Seq: %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Platform:  ID %#x %d.%d.%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"name inforec len %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Unknown inforec type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @validate_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_identity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 0), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 3), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 2), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 1), align 4
  %8 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rfid, i32 0, i32 3), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rfid, i32 0, i32 2), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rfid, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rfid, i32 0, i32 0), align 4
  %13 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @macid, i32 0, i32 3), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @macid, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @macid, i32 0, i32 2), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @macid, i32 0, i32 1), align 4
  %18 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @priid, i32 0, i32 3), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @priid, i32 0, i32 2), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @priid, i32 0, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @priid, i32 0, i32 1), align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %320, %0
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @ns3info, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %323

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %311 [
    i32 1, label %35
    i32 2, label %69
    i32 3, label %209
    i32 4, label %218
    i32 32769, label %303
  ]

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %51, i32 %59, i32 %67)
  br label %319

69:                                               ; preds = %28
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %85, i32 %93, i32 %101, i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %143

120:                                              ; preds = %69
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %143

130:                                              ; preds = %120
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @macid, i32 0, i32 0), align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  store i32 2, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %130
  br label %143

143:                                              ; preds = %142, %120, %69
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %187

153:                                              ; preds = %143
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %155 = load i32, i32* %1, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %187

163:                                              ; preds = %153
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @priid, i32 0, i32 1), align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %185, label %174

174:                                              ; preds = %163
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %176 = load i32, i32* %1, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @priid, i32 0, i32 0), align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %174, %163
  store i32 3, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %174
  br label %187

187:                                              ; preds = %186, %153, %143
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %189 = load i32, i32* %1, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %208

197:                                              ; preds = %187
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %199 = load i32, i32* %1, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 4
  br i1 %206, label %207, label %208

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %207, %197, %187
  br label %319

209:                                              ; preds = %28
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %211 = load i32, i32* %1, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %216)
  br label %319

218:                                              ; preds = %28
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %244 = load i32, i32* %1, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %226, i32 %234, i32 %242, i32 %250)
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 0), align 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %254 = load i32, i32* %1, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %252, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %218
  br label %320

263:                                              ; preds = %218
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 3), align 4
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %266 = load i32, i32* %1, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %264, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %263
  br label %320

275:                                              ; preds = %263
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 2), align 4
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %276, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %275
  br label %320

287:                                              ; preds = %275
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 1), align 4
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %290 = load i32, i32* %1, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %288, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %287
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nicid, i32 0, i32 0), align 4
  %300 = icmp ne i32 %299, 32776
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %320

302:                                              ; preds = %298, %287
  store i32 1, i32* %3, align 4
  br label %319

303:                                              ; preds = %28
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %305 = load i32, i32* %1, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %309)
  br label %319

311:                                              ; preds = %28
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s3info, align 8
  %313 = load i32, i32* %1, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %311, %303, %302, %209, %208, %35
  br label %320

320:                                              ; preds = %319, %301, %286, %274, %262
  %321 = load i32, i32* %1, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %1, align 4
  br label %24

323:                                              ; preds = %24
  %324 = load i32, i32* %3, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load i32, i32* %2, align 4
  %328 = icmp ne i32 %327, 2
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 0, i32* %2, align 4
  br label %330

330:                                              ; preds = %329, %326, %323
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
