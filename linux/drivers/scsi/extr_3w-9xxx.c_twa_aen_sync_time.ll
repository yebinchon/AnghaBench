; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_aen_sync_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_aen_sync_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { i32**, i64*, i32*, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i32, i8*, i8*, i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i32 }

@TW_OP_SET_PARAM = common dso_local global i32 0, align 4
@TW_SECTOR_SIZE = common dso_local global i32 0, align 4
@TW_COMMAND_SIZE = common dso_local global i32 0, align 4
@TW_TIMEKEEP_TABLE = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32)* @twa_aen_sync_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twa_aen_sync_time(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %12, i64 %14
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %6, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = call i32 @memset(%struct.TYPE_20__* %17, i32 0, i32 72)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %7, align 8
  %22 = load i32, i32* @TW_OP_SET_PARAM, align 4
  %23 = call i32 @TW_OPSGL_IN(i32 2, i32 %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TW_CPU_TO_SGL(i32 %35)
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  store i32 %36, i32* %43, align 8
  %44 = load i32, i32* @TW_SECTOR_SIZE, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i8* %45, i8** %52, align 8
  %53 = load i32, i32* @TW_COMMAND_SIZE, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = call i8* @cpu_to_le16(i32 1)
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %8, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = load i32, i32* @TW_SECTOR_SIZE, align 4
  %70 = call i32 @memset(%struct.TYPE_20__* %68, i32 0, i32 %69)
  %71 = load i32, i32* @TW_TIMEKEEP_TABLE, align 4
  %72 = or i32 %71, 32768
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = call i8* @cpu_to_le16(i32 3)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = call i8* @cpu_to_le16(i32 4)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = call i64 (...) @ktime_get_real_seconds()
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sys_tz, i32 0, i32 0), align 4
  %84 = mul nsw i32 %83, 60
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %82, %85
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub nsw i64 %87, 259200
  %89 = call i32 @div_u64_rem(i64 %88, i32 604800, i32* %5)
  %90 = load i32, i32* %5, align 4
  %91 = srem i32 %90, 604800
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %5, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i32 %96, i32* %5, i32 4)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @twa_post_command_packet(%struct.TYPE_21__* %104, i32 %105, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @TW_OPSGL_IN(i32, i32) #1

declare dso_local i32 @TW_CPU_TO_SGL(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @div_u64_rem(i64, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @twa_post_command_packet(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
