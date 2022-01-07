; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_parse_def_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_parse_def_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }

@def_mode = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*)* @omapfb_parse_def_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_parse_def_modes(%struct.omapfb2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb2_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.omap_dss_device*, align 8
  %12 = alloca i32, align 4
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @def_mode, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kstrdup(i32 %13, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %91, %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %92

31:                                               ; preds = %29
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 58)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load i8*, i8** %8, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %10, align 8
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %11, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %74, %39
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %47 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %52 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.omap_dss_device*, %struct.omap_dss_device** %57, align 8
  %59 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strcmp(i32 %60, i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %50
  %65 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %66 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.omap_dss_device*, %struct.omap_dss_device** %71, align 8
  store %struct.omap_dss_device* %72, %struct.omap_dss_device** %11, align 8
  br label %77

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %44

77:                                               ; preds = %64, %44
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %79 = icmp ne %struct.omap_dss_device* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %92

83:                                               ; preds = %77
  %84 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @omapfb_set_def_mode(%struct.omapfb2_device* %84, %struct.omap_dss_device* %85, i8* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %92

91:                                               ; preds = %83
  br label %23

92:                                               ; preds = %90, %80, %36, %29
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @kfree(i8* %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %18
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @omapfb_set_def_mode(%struct.omapfb2_device*, %struct.omap_dss_device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
