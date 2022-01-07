; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_invalid_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_invalid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DTCR = common dso_local global i64 0, align 8
@DCR_TDCSL = common dso_local global i32 0, align 4
@DCR = common dso_local global i64 0, align 8
@DTCMR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"The security violation has happened at %u seconds\0A\00", align 1
@DCR_TCE = common dso_local global i32 0, align 4
@DCR_TCHL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DCR_TCSL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@DSR_NVF = common dso_local global i32 0, align 4
@DSR = common dso_local global i64 0, align 8
@DSR_TCO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxdi_dev*, i32)* @di_handle_invalid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_handle_invalid_state(%struct.imxdi_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imxdi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %9 = load i64, i64* @DTCR, align 8
  %10 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %8, i32 0, i64 %9)
  %11 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %12 = load i32, i32* @DCR_TDCSL, align 4
  %13 = load i64, i64* @DCR, align 8
  %14 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %11, i32 %12, i64 %13)
  %15 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DTCMR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %25 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %32 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DCR_TCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DCR_TCHL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %48 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %89

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @DCR_TCSL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %58 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %89

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %64 = load i32, i32* @DSR_NVF, align 4
  %65 = load i64, i64* @DSR, align 8
  %66 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %63, i32 %64, i64 %65)
  %67 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %68 = load i32, i32* @DSR_TCO, align 4
  %69 = load i64, i64* @DSR, align 8
  %70 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %67, i32 %68, i64 %69)
  %71 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @DCR_TCE, align 4
  %74 = or i32 %72, %73
  %75 = load i64, i64* @DCR, align 8
  %76 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %71, i32 %74, i64 %75)
  %77 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i64, i64* @DTCMR, align 8
  %80 = call i32 @di_write_busy_wait(%struct.imxdi_dev* %77, i32 %78, i64 %79)
  %81 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %82 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %83 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DSR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @__raw_readl(i64 %86)
  %88 = call i32 @di_handle_valid_state(%struct.imxdi_dev* %81, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %62, %56, %46
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @di_write_busy_wait(%struct.imxdi_dev*, i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @di_what_is_to_be_done(%struct.imxdi_dev*, i8*) #1

declare dso_local i32 @di_handle_valid_state(%struct.imxdi_dev*, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
