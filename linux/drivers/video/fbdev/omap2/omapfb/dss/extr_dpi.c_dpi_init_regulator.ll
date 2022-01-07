; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_regulator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.regulator*, %struct.TYPE_2__* }
%struct.regulator = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FEAT_DPI_USES_VDDS_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vdds_dsi\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't get VDDS_DSI regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*)* @dpi_init_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_init_regulator(%struct.dpi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca %struct.regulator*, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %3, align 8
  %5 = load i32, i32* @FEAT_DPI_USES_VDDS_DSI, align 4
  %6 = call i32 @dss_has_feature(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %11 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %10, i32 0, i32 0
  %12 = load %struct.regulator*, %struct.regulator** %11, align 8
  %13 = icmp ne %struct.regulator* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %9
  %16 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %17 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call %struct.regulator* @devm_regulator_get(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %20, %struct.regulator** %4, align 8
  %21 = load %struct.regulator*, %struct.regulator** %4, align 8
  %22 = call i64 @IS_ERR(%struct.regulator* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load %struct.regulator*, %struct.regulator** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.regulator* %25)
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.regulator*, %struct.regulator** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.regulator* %33)
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %15
  %36 = load %struct.regulator*, %struct.regulator** %4, align 8
  %37 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %38 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %37, i32 0, i32 0
  store %struct.regulator* %36, %struct.regulator** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %32, %14, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local %struct.regulator* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
