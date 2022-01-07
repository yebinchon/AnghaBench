; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_failure_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_handle_failure_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"DSR register reports: %08X\0A\00", align 1
@DCR = common dso_local global i64 0, align 8
@DCR_FSHL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxdi_dev*, i32)* @di_handle_failure_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_handle_failure_state(%struct.imxdi_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imxdi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %8 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @di_report_tamper_info(%struct.imxdi_dev* %13, i32 %14)
  %16 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %17 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DCR_FSHL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %28 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.imxdi_dev*, %struct.imxdi_dev** %4, align 8
  %33 = call i32 @di_what_is_to_be_done(%struct.imxdi_dev* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @di_report_tamper_info(%struct.imxdi_dev*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @di_what_is_to_be_done(%struct.imxdi_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
