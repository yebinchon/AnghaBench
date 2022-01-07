; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup_evtconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_pltdrv.c_telemetry_setup_evtconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.telemetry_evtconfig = type { i64, i32 }

@telm_conf = common dso_local global %struct.TYPE_2__* null, align 8
@TELEM_UPDATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TELEM_PSS = common dso_local global i32 0, align 4
@TELEM_IOSS = common dso_local global i32 0, align 4
@TELEM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32, i32)* @telemetry_setup_evtconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_setup_evtconfig(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.telemetry_evtconfig, align 8
  %7 = alloca %struct.telemetry_evtconfig, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.telemetry_evtconfig* %6 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %1, i32* %12, align 8
  %13 = bitcast %struct.telemetry_evtconfig* %7 to { i64, i32 }*
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  store i32 %3, i32* %15, align 8
  store i32 %4, i32* %8, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TELEM_UPDATE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %99

30:                                               ; preds = %22, %5
  %31 = load i32, i32* @TELEM_PSS, align 4
  %32 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @telemetry_check_evtid(i32 %31, i32 %33, i64 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %99

41:                                               ; preds = %30
  %42 = load i32, i32* @TELEM_IOSS, align 4
  %43 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @telemetry_check_evtid(i32 %42, i32 %44, i64 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %99

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = bitcast %struct.telemetry_evtconfig* %7 to { i64, i32 }*
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @telemetry_setup_iossevtconfig(i64 %60, i32 %62, i32 %57)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %99

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %52
  %69 = getelementptr inbounds %struct.telemetry_evtconfig, %struct.telemetry_evtconfig* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = bitcast %struct.telemetry_evtconfig* %6 to { i64, i32 }*
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %74, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @telemetry_setup_pssevtconfig(i64 %76, i32 %78, i32 %73)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %99

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %68
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @TELEM_UPDATE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @TELEM_ADD, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88, %84
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  br label %98

95:                                               ; preds = %88
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %82, %66, %51, %40, %27
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @telm_conf, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @telemetry_check_evtid(i32, i32, i64, i32) #1

declare dso_local i32 @telemetry_setup_iossevtconfig(i64, i32, i32) #1

declare dso_local i32 @telemetry_setup_pssevtconfig(i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
