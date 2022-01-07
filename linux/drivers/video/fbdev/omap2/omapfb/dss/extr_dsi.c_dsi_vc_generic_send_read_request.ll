; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_generic_send_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_generic_send_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"dsi_vc_generic_send_read_request(ch %d, reqlen %d)\0A\00", align 1
@MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"dsi_vc_generic_send_read_request(ch %d, reqlen %d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, i32*, i32)* @dsi_vc_generic_send_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_generic_send_read_request(%struct.platform_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dsi_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %14)
  store %struct.dsi_data* %15, %struct.dsi_data** %10, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %10, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @DSSDBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %56

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %55

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* @MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %44, %48
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %37
  %51 = call i32 (...) @BUG()
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %70

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @dsi_vc_send_short(%struct.platform_device* %57, i32 %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @DSSERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %64, %50
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dsi_vc_send_short(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
