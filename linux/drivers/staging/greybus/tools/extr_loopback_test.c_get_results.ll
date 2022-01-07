; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_get_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_get_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i32, %struct.loopback_results, i64, %struct.loopback_device* }
%struct.loopback_results = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.loopback_device = type { i32, %struct.loopback_results }

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"requests_per_second_min\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"requests_per_second_max\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"requests_per_second_avg\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"latency_min\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"latency_max\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"latency_avg\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"throughput_min\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"throughput_max\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"throughput_avg\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"apbridge_unipro_latency_min\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"apbridge_unipro_latency_max\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"apbridge_unipro_latency_avg\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"gbphy_firmware_latency_min\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"gbphy_firmware_latency_max\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"gbphy_firmware_latency_avg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_test*)* @get_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_results(%struct.loopback_test* %0) #0 {
  %2 = alloca %struct.loopback_test*, align 8
  %3 = alloca %struct.loopback_device*, align 8
  %4 = alloca %struct.loopback_results*, align 8
  %5 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %183, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %9 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %186

12:                                               ; preds = %6
  %13 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @device_enabled(%struct.loopback_test* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %183

18:                                               ; preds = %12
  %19 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %20 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %19, i32 0, i32 3
  %21 = load %struct.loopback_device*, %struct.loopback_device** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %21, i64 %23
  store %struct.loopback_device* %24, %struct.loopback_device** %3, align 8
  %25 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %26 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %25, i32 0, i32 1
  store %struct.loopback_results* %26, %struct.loopback_results** %4, align 8
  %27 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %28 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @read_sysfs_int(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %32 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %31, i32 0, i32 20
  store i8* %30, i8** %32, align 8
  %33 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %34 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @read_sysfs_int(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %38 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %37, i32 0, i32 12
  store i8* %36, i8** %38, align 8
  %39 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %40 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @read_sysfs_int(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %44 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  %45 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %46 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @read_sysfs_float(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %50 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %49, i32 0, i32 19
  store i8* %48, i8** %50, align 8
  %51 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %52 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @read_sysfs_int(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %56 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %58 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @read_sysfs_int(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %62 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %61, i32 0, i32 10
  store i8* %60, i8** %62, align 8
  %63 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %64 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @read_sysfs_float(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %68 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %67, i32 0, i32 18
  store i8* %66, i8** %68, align 8
  %69 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %70 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @read_sysfs_int(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %73 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %74 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %76 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @read_sysfs_int(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %79 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %80 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %82 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @read_sysfs_float(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %85 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %86 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %85, i32 0, i32 17
  store i8* %84, i8** %86, align 8
  %87 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %88 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @read_sysfs_int(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %91 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %92 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %94 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @read_sysfs_int(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %97 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %98 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %100 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @read_sysfs_float(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %103 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %104 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %103, i32 0, i32 16
  store i8* %102, i8** %104, align 8
  %105 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %106 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @read_sysfs_int(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %109 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %110 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %112 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @read_sysfs_int(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %115 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %116 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.loopback_device*, %struct.loopback_device** %3, align 8
  %118 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @read_sysfs_float(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %121 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %122 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %121, i32 0, i32 15
  store i8* %120, i8** %122, align 8
  %123 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %124 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %123, i32 0, i32 13
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %127 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %126, i32 0, i32 12
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %125 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %134 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %133, i32 0, i32 14
  store i8* %132, i8** %134, align 8
  %135 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %136 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %135, i32 0, i32 10
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %139 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %138, i32 0, i32 9
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %137 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %146 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %145, i32 0, i32 11
  store i8* %144, i8** %146, align 8
  %147 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %148 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %147, i32 0, i32 7
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %151 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %150, i32 0, i32 6
  %152 = load i8*, i8** %151, align 8
  %153 = ptrtoint i8* %149 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %158 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %157, i32 0, i32 8
  store i8* %156, i8** %158, align 8
  %159 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %160 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %163 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %161 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %170 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %169, i32 0, i32 5
  store i8* %168, i8** %170, align 8
  %171 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %172 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %175 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = ptrtoint i8* %173 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %182 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %18, %17
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %6

186:                                              ; preds = %6
  %187 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %188 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %314

191:                                              ; preds = %186
  %192 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %193 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %192, i32 0, i32 1
  store %struct.loopback_results* %193, %struct.loopback_results** %4, align 8
  %194 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %195 = call i8* @get_request_min_aggregate(%struct.loopback_test* %194)
  %196 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %197 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %196, i32 0, i32 12
  store i8* %195, i8** %197, align 8
  %198 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %199 = call i8* @get_request_max_aggregate(%struct.loopback_test* %198)
  %200 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %201 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %200, i32 0, i32 13
  store i8* %199, i8** %201, align 8
  %202 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %203 = call i8* @get_request_avg_aggregate(%struct.loopback_test* %202)
  %204 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %205 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %204, i32 0, i32 19
  store i8* %203, i8** %205, align 8
  %206 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %207 = call i8* @get_latency_min_aggregate(%struct.loopback_test* %206)
  %208 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %209 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %208, i32 0, i32 9
  store i8* %207, i8** %209, align 8
  %210 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %211 = call i8* @get_latency_max_aggregate(%struct.loopback_test* %210)
  %212 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %213 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %212, i32 0, i32 10
  store i8* %211, i8** %213, align 8
  %214 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %215 = call i8* @get_latency_avg_aggregate(%struct.loopback_test* %214)
  %216 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %217 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %216, i32 0, i32 18
  store i8* %215, i8** %217, align 8
  %218 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %219 = call i8* @get_throughput_min_aggregate(%struct.loopback_test* %218)
  %220 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %221 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  %222 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %223 = call i8* @get_throughput_max_aggregate(%struct.loopback_test* %222)
  %224 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %225 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %224, i32 0, i32 7
  store i8* %223, i8** %225, align 8
  %226 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %227 = call i8* @get_throughput_avg_aggregate(%struct.loopback_test* %226)
  %228 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %229 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %228, i32 0, i32 17
  store i8* %227, i8** %229, align 8
  %230 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %231 = call i8* @get_apbridge_unipro_latency_min_aggregate(%struct.loopback_test* %230)
  %232 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %233 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %235 = call i8* @get_apbridge_unipro_latency_max_aggregate(%struct.loopback_test* %234)
  %236 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %237 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %236, i32 0, i32 4
  store i8* %235, i8** %237, align 8
  %238 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %239 = call i8* @get_apbridge_unipro_latency_avg_aggregate(%struct.loopback_test* %238)
  %240 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %241 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %240, i32 0, i32 16
  store i8* %239, i8** %241, align 8
  %242 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %243 = call i8* @get_gbphy_firmware_latency_min_aggregate(%struct.loopback_test* %242)
  %244 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %245 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %244, i32 0, i32 0
  store i8* %243, i8** %245, align 8
  %246 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %247 = call i8* @get_gbphy_firmware_latency_max_aggregate(%struct.loopback_test* %246)
  %248 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %249 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %251 = call i8* @get_gbphy_firmware_latency_avg_aggregate(%struct.loopback_test* %250)
  %252 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %253 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %252, i32 0, i32 15
  store i8* %251, i8** %253, align 8
  %254 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %255 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %254, i32 0, i32 13
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %258 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %257, i32 0, i32 12
  %259 = load i8*, i8** %258, align 8
  %260 = ptrtoint i8* %256 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %265 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %264, i32 0, i32 14
  store i8* %263, i8** %265, align 8
  %266 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %267 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %266, i32 0, i32 10
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %270 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %269, i32 0, i32 9
  %271 = load i8*, i8** %270, align 8
  %272 = ptrtoint i8* %268 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = inttoptr i64 %274 to i8*
  %276 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %277 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %276, i32 0, i32 11
  store i8* %275, i8** %277, align 8
  %278 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %279 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %278, i32 0, i32 7
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %282 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %281, i32 0, i32 6
  %283 = load i8*, i8** %282, align 8
  %284 = ptrtoint i8* %280 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  %287 = inttoptr i64 %286 to i8*
  %288 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %289 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %288, i32 0, i32 8
  store i8* %287, i8** %289, align 8
  %290 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %291 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %290, i32 0, i32 4
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %294 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %293, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = ptrtoint i8* %292 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = inttoptr i64 %298 to i8*
  %300 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %301 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %300, i32 0, i32 5
  store i8* %299, i8** %301, align 8
  %302 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %303 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %306 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = ptrtoint i8* %304 to i64
  %309 = ptrtoint i8* %307 to i64
  %310 = sub i64 %308, %309
  %311 = inttoptr i64 %310 to i8*
  %312 = load %struct.loopback_results*, %struct.loopback_results** %4, align 8
  %313 = getelementptr inbounds %struct.loopback_results, %struct.loopback_results* %312, i32 0, i32 2
  store i8* %311, i8** %313, align 8
  br label %314

314:                                              ; preds = %191, %186
  ret i32 0
}

declare dso_local i32 @device_enabled(%struct.loopback_test*, i32) #1

declare dso_local i8* @read_sysfs_int(i32, i8*) #1

declare dso_local i8* @read_sysfs_float(i32, i8*) #1

declare dso_local i8* @get_request_min_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_request_max_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_request_avg_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_latency_min_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_latency_max_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_latency_avg_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_throughput_min_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_throughput_max_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_throughput_avg_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_apbridge_unipro_latency_min_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_apbridge_unipro_latency_max_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_apbridge_unipro_latency_avg_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_gbphy_firmware_latency_min_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_gbphy_firmware_latency_max_aggregate(%struct.loopback_test*) #1

declare dso_local i8* @get_gbphy_firmware_latency_avg_aggregate(%struct.loopback_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
