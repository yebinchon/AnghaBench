; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_raw_read_eventlog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_plt_raw_read_eventlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.telemetry_evtmap* }
%struct.telemetry_evtmap = type { i64 }
%struct.TYPE_4__ = type { %struct.telemetry_evtmap* }
%struct.telemetry_evtlog = type { i64, i32 }
%struct.telem_ssram_region = type { i32* }

@telm_conf = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unknown Telemetry Unit Specified %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TELEM_MAX_EVENTS_SRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.telemetry_evtlog*, i32, i32)* @telemetry_plt_raw_read_eventlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_plt_raw_read_eventlog(i32 %0, %struct.telemetry_evtlog* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.telemetry_evtlog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.telem_ssram_region, align 8
  %15 = alloca %struct.telemetry_evtmap*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.telemetry_evtlog* %1, %struct.telemetry_evtlog** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.telemetry_evtmap*, %struct.telemetry_evtmap** %21, align 8
  store %struct.telemetry_evtmap* %22, %struct.telemetry_evtmap** %15, align 8
  br label %33

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @telm_conf, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.telemetry_evtmap*, %struct.telemetry_evtmap** %26, align 8
  store %struct.telemetry_evtmap* %27, %struct.telemetry_evtmap** %15, align 8
  br label %33

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %146

33:                                               ; preds = %23, %18
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @TELEM_MAX_EVENTS_SRAM, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @telem_evtlog_read(i32 %39, %struct.telem_ssram_region* %14, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %146

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %146

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %87, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.telem_ssram_region, %struct.telem_ssram_region* %14, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.telemetry_evtlog*, %struct.telemetry_evtlog** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %71, i64 %73
  %75 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 8
  %76 = load %struct.telemetry_evtmap*, %struct.telemetry_evtmap** %15, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.telemetry_evtmap, %struct.telemetry_evtmap* %76, i64 %78
  %80 = getelementptr inbounds %struct.telemetry_evtmap, %struct.telemetry_evtmap* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.telemetry_evtlog*, %struct.telemetry_evtlog** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %82, i64 %84
  %86 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  br label %87

87:                                               ; preds = %64
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %60

90:                                               ; preds = %60
  br label %144

91:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i1 [ false, %92 ], [ %99, %96 ]
  br i1 %101, label %102, label %143

102:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %136, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %139

107:                                              ; preds = %103
  %108 = load %struct.telemetry_evtmap*, %struct.telemetry_evtmap** %15, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.telemetry_evtmap, %struct.telemetry_evtmap* %108, i64 %110
  %112 = getelementptr inbounds %struct.telemetry_evtmap, %struct.telemetry_evtmap* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.telemetry_evtlog*, %struct.telemetry_evtlog** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %114, i64 %116
  %118 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %113, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.telem_ssram_region, %struct.telem_ssram_region* %14, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.telemetry_evtlog*, %struct.telemetry_evtlog** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %128, i64 %130
  %132 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %131, i32 0, i32 1
  store i32 %127, i32* %132, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %139

135:                                              ; preds = %107
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %103

139:                                              ; preds = %121, %103
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %92

143:                                              ; preds = %100
  br label %144

144:                                              ; preds = %143, %90
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %53, %44, %28
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @telem_evtlog_read(i32, %struct.telem_ssram_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
