; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_plt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_plt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.wl1271*)* }
%struct.TYPE_4__ = type { %struct.wiphy* }
%struct.wiphy = type { i32, i32 }

@WL1271_BOOT_RETRIES = common dso_local global i32 0, align 4
@wl1271_plt_start.PLT_MODE = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"PLT_OFF\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PLT_ON\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PLT_FEM_DETECT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PLT_CHIP_AWAKE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"power up\00", align 1
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [54 x i8] c"cannot go into PLT state because not in off state: %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PLT_CHIP_AWAKE = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"firmware booted in PLT mode %s (%s)\00", align 1
@PLT_OFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"firmware boot in PLT mode failed despite %d retries\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_plt_start(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @WL1271_BOOT_RETRIES, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %6, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = call i32 (i8*, ...) @wl1271_notice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %18 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @wl1271_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %103

31:                                               ; preds = %2
  %32 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %92, %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %44 = call i32 @wl12xx_chip_wakeup(%struct.wl1271* %43, i32 1)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %92

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PLT_CHIP_AWAKE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 5
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %56, align 8
  %58 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %59 = call i32 %57(%struct.wl1271* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %92

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* @WLCORE_STATE_ON, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8*], [4 x i8*]* @wl1271_plt_start.PLT_MODE, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @wl1271_notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %76)
  %78 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %79 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %83 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %85 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strncpy(i32 %86, i32 %90, i32 4)
  br label %103

92:                                               ; preds = %62, %47
  %93 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %94 = call i32 @wl1271_power_off(%struct.wl1271* %93)
  br label %37

95:                                               ; preds = %37
  %96 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 1
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* @PLT_OFF, align 4
  %99 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %100 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @WL1271_BOOT_RETRIES, align 4
  %102 = call i32 @wl1271_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %95, %64, %23
  %104 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %105 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %104, i32 0, i32 3
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_notice(i8*, ...) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl12xx_chip_wakeup(%struct.wl1271*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @wl1271_power_off(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
