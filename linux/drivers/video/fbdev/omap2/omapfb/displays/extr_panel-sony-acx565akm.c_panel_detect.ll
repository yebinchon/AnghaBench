; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_panel_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_panel_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32*, i8*, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MIPID_CMD_READ_DISP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MIPI display ID: %02x%02x%02x\0A\00", align 1
@MIPID_VER_ACX565AKM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"acx565akm\00", align 1
@MIPID_VER_L4F00311 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"l4f00311\00", align 1
@MIPID_VER_LPH8923 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"lph8923\00", align 1
@MIPID_VER_LS041Y3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ls041y3\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid display ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"omapfb: %s rev %02x LCD detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @panel_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_detect(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %4 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %5 = load i32, i32* @MIPID_CMD_READ_DISP_ID, align 4
  %6 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @acx565akm_read(%struct.panel_drv_data* %4, i32 %5, i32* %8, i32 3)
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %11 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %15 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %20 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %25 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %28)
  %30 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %31 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %63 [
    i32 16, label %35
    i32 41, label %45
    i32 69, label %51
    i32 131, label %57
  ]

35:                                               ; preds = %1
  %36 = load i32, i32* @MIPID_VER_ACX565AKM, align 4
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %42 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 3
  store i32 1, i32* %44, align 4
  br label %73

45:                                               ; preds = %1
  %46 = load i32, i32* @MIPID_VER_L4F00311, align 4
  %47 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %48 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %50 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  br label %73

51:                                               ; preds = %1
  %52 = load i32, i32* @MIPID_VER_LPH8923, align 4
  %53 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %54 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %56 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %55, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  br label %73

57:                                               ; preds = %1
  %58 = load i32, i32* @MIPID_VER_LS041Y3, align 4
  %59 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %60 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %62, align 8
  br label %73

63:                                               ; preds = %1
  %64 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %65 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %64, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %67 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %92

73:                                               ; preds = %57, %51, %45, %35
  %74 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %75 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %80 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %82 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %86 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %89 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %87, i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %73, %63
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @acx565akm_read(%struct.panel_drv_data*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
