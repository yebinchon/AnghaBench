; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telem_evtlog_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telem_evtlog_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telem_ssram_region = type { i64, i64*, i64 }
%struct.telemetry_unit_config = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Ssram under update. Please Try Later\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TELEM_SSRAM_STARTTIME_OFFSET = common dso_local global i64 0, align 8
@TELEM_SSRAM_EVTLOG_OFFSET = common dso_local global i64 0, align 8
@BYTES_PER_LONG = common dso_local global i32 0, align 4
@TELEM_SSRAM_READ_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Timeout while reading Events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.telem_ssram_region*, i32)* @telem_evtlog_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telem_evtlog_read(i32 %0, %struct.telem_ssram_region* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.telem_ssram_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.telemetry_unit_config*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.telem_ssram_region* %1, %struct.telem_ssram_region** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @telem_get_unitconfig(i32 %14, %struct.telemetry_unit_config** %8)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %106

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.telemetry_unit_config*, %struct.telemetry_unit_config** %8, align 8
  %23 = getelementptr inbounds %struct.telemetry_unit_config, %struct.telemetry_unit_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.telemetry_unit_config*, %struct.telemetry_unit_config** %8, align 8
  %28 = getelementptr inbounds %struct.telemetry_unit_config, %struct.telemetry_unit_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %97, %30
  %32 = load %struct.telemetry_unit_config*, %struct.telemetry_unit_config** %8, align 8
  %33 = getelementptr inbounds %struct.telemetry_unit_config, %struct.telemetry_unit_config* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @readq(i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %106

42:                                               ; preds = %31
  %43 = load %struct.telemetry_unit_config*, %struct.telemetry_unit_config** %8, align 8
  %44 = getelementptr inbounds %struct.telemetry_unit_config, %struct.telemetry_unit_config* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TELEM_SSRAM_STARTTIME_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i64 @readq(i64 %47)
  %49 = load %struct.telem_ssram_region*, %struct.telem_ssram_region** %6, align 8
  %50 = getelementptr inbounds %struct.telem_ssram_region, %struct.telem_ssram_region* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %73, %42
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.telemetry_unit_config*, %struct.telemetry_unit_config** %8, align 8
  %57 = getelementptr inbounds %struct.telemetry_unit_config, %struct.telemetry_unit_config* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TELEM_SSRAM_EVTLOG_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @BYTES_PER_LONG, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = call i64 @readq(i64 %65)
  %67 = load %struct.telem_ssram_region*, %struct.telem_ssram_region** %6, align 8
  %68 = getelementptr inbounds %struct.telem_ssram_region, %struct.telem_ssram_region* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %66, i64* %72, align 8
  br label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.telemetry_unit_config*, %struct.telemetry_unit_config** %8, align 8
  %78 = getelementptr inbounds %struct.telemetry_unit_config, %struct.telemetry_unit_config* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @readq(i64 %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %106

87:                                               ; preds = %76
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* @TELEM_SSRAM_READ_TIMEOUT, align 4
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %106

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %31, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.telem_ssram_region*, %struct.telem_ssram_region** %6, align 8
  %104 = getelementptr inbounds %struct.telem_ssram_region, %struct.telem_ssram_region* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %101, %92, %83, %38, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @telem_get_unitconfig(i32, %struct.telemetry_unit_config**) #1

declare dso_local i64 @readq(i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
