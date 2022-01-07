; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_find_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_find_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.omapfb_device = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.omapfb_platform_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@ctrls = common dso_local global %struct.TYPE_5__** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ctrl %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ctrl %s not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @omapfb_find_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_find_ctrl(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca %struct.omapfb_platform_data*, align 8
  %5 = alloca [17 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %7 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %8 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.omapfb_platform_data* @dev_get_platdata(i32 %9)
  store %struct.omapfb_platform_data* %10, %struct.omapfb_platform_data** %4, align 8
  %11 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %12 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %11, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %14 = load %struct.omapfb_platform_data*, %struct.omapfb_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.omapfb_platform_data, %struct.omapfb_platform_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strncpy(i8* %13, i32 %17, i32 16)
  %19 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 16
  store i8 0, i8* %19, align 16
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %25 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %28 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %27, i32 0, i32 1
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  store i32 0, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ctrls, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %37 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ctrls, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ctrls, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %35
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @ctrls, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %64 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %63, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  br label %69

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %30

69:                                               ; preds = %57, %30
  %70 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %71 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = icmp eq %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %76 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %79 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  store i32 -1, i32* %2, align 4
  br label %81

80:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %74, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.omapfb_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
