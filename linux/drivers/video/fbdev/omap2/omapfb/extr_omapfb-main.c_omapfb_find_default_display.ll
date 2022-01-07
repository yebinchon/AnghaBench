; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_find_default_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_find_default_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.omapfb2_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.omap_dss_device* }

@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_dss_device* (%struct.omapfb2_device*)* @omapfb_find_default_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_dss_device* @omapfb_find_default_display(%struct.omapfb2_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omapfb2_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %3, align 8
  %9 = call i8* (...) @omapdss_get_default_display_name()
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %51, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %16 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %21 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %26, align 8
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %6, align 8
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @strcmp(i8* %33, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  store %struct.omap_dss_device* %40, %struct.omap_dss_device** %2, align 8
  br label %100

41:                                               ; preds = %32, %19
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @strcmp(i8* %42, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  store %struct.omap_dss_device* %49, %struct.omap_dss_device** %2, align 8
  br label %100

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %13

54:                                               ; preds = %13
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %100

55:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %90, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %59 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %64 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.omap_dss_device*, %struct.omap_dss_device** %69, align 8
  store %struct.omap_dss_device* %70, %struct.omap_dss_device** %7, align 8
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %72 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %90

78:                                               ; preds = %62
  %79 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %80 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @of_alias_get_id(i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  store %struct.omap_dss_device* %88, %struct.omap_dss_device** %2, align 8
  br label %100

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %95 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.omap_dss_device*, %struct.omap_dss_device** %98, align 8
  store %struct.omap_dss_device* %99, %struct.omap_dss_device** %2, align 8
  br label %100

100:                                              ; preds = %93, %87, %54, %48, %39
  %101 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  ret %struct.omap_dss_device* %101
}

declare dso_local i8* @omapdss_get_default_display_name(...) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @of_alias_get_id(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
