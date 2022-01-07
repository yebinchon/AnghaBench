; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_claim_hogs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_claim_hogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no hogs found\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error claiming hogs: %li\0A\00", align 1
@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to lookup the default state\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to select default state\0A\00", align 1
@PINCTRL_STATE_SLEEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to lookup the sleep state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*)* @pinctrl_claim_hogs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinctrl_claim_hogs(%struct.pinctrl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pinctrl_dev*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  %4 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %8 = call %struct.TYPE_7__* @create_pinctrl(i32 %6, %struct.pinctrl_dev* %7)
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %9, i32 0, i32 2
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @PTR_ERR(%struct.TYPE_7__* %13)
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %101

23:                                               ; preds = %1
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i64 @IS_ERR(%struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.TYPE_7__* %35)
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.TYPE_7__* %40)
  store i32 %41, i32* %2, align 4
  br label %101

42:                                               ; preds = %23
  %43 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %44 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @kref_get(i32* %46)
  %48 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %49 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %52 = call i8* @pinctrl_lookup_state(%struct.TYPE_7__* %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_7__*
  %54 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %54, i32 0, i32 3
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %57 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i64 @IS_ERR(%struct.TYPE_7__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %42
  %62 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %63 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %81

66:                                               ; preds = %42
  %67 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %68 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %71 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %70, i32 0, i32 3
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i64 @pinctrl_select_state(%struct.TYPE_7__* %69, %struct.TYPE_7__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %77 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %66
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %83 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* @PINCTRL_STATE_SLEEP, align 4
  %86 = call i8* @pinctrl_lookup_state(%struct.TYPE_7__* %84, i32 %85)
  %87 = bitcast i8* %86 to %struct.TYPE_7__*
  %88 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %89 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %88, i32 0, i32 1
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %91 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = call i64 @IS_ERR(%struct.TYPE_7__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %97 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %81
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %29, %18
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_7__* @create_pinctrl(i32, %struct.pinctrl_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i8* @pinctrl_lookup_state(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @pinctrl_select_state(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
