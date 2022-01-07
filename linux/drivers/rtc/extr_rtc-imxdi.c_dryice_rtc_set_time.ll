; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_dryice_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_dryice_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.imxdi_dev = type { i64 }

@DCR = common dso_local global i64 0, align 8
@DSR = common dso_local global i64 0, align 8
@DCR_TCE = common dso_local global i32 0, align 4
@DSR_SVF = common dso_local global i32 0, align 4
@DCR_TCHL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@EPERM = common dso_local global i32 0, align 4
@DCR_TCSL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@DTCLR = common dso_local global i64 0, align 8
@DTCMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @dryice_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dryice_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.imxdi_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.imxdi_dev* @dev_get_drvdata(%struct.device* %10)
  store %struct.imxdi_dev* %11, %struct.imxdi_dev** %6, align 8
  %12 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %13 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %19 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DSR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DCR_TCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DSR_SVF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DCR_TCHL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %40 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @DCR_TCSL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DSR_SVF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43
  %54 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %55 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %89

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %61 = load i64, i64* @DTCLR, align 8
  %62 = call i32 @di_write_wait(%struct.imxdi_dev* %60, i32 0, i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %89

67:                                               ; preds = %59
  %68 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %69)
  %71 = load i64, i64* @DTCMR, align 8
  %72 = call i32 @di_write_wait(%struct.imxdi_dev* %68, i32 %70, i64 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %67
  %78 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %79 = load %struct.imxdi_dev*, %struct.imxdi_dev** %6, align 8
  %80 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DCR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl(i64 %83)
  %85 = load i32, i32* @DCR_TCE, align 4
  %86 = or i32 %84, %85
  %87 = load i64, i64* @DCR, align 8
  %88 = call i32 @di_write_wait(%struct.imxdi_dev* %78, i32 %86, i64 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %75, %65, %53, %38
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.imxdi_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @di_what_is_to_be_done(%struct.imxdi_dev*, i8*) #1

declare dso_local i32 @di_write_wait(%struct.imxdi_dev*, i32, i64) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
