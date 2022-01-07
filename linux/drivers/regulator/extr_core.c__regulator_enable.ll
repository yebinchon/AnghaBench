; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { i64, %struct.regulator*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PM_SUSPEND_ON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@REGULATOR_EVENT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"is_enabled() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*)* @_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_enable(%struct.regulator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  %6 = load %struct.regulator*, %struct.regulator** %3, align 8
  %7 = getelementptr inbounds %struct.regulator, %struct.regulator* %6, i32 0, i32 0
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  store %struct.regulator_dev* %8, %struct.regulator_dev** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held_once(i32* %11)
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %19 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %18, i32 0, i32 1
  %20 = load %struct.regulator*, %struct.regulator** %19, align 8
  %21 = icmp ne %struct.regulator* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 1
  %25 = load %struct.regulator*, %struct.regulator** %24, align 8
  %26 = call i32 @_regulator_enable(%struct.regulator* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %119

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %17, %1
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %34 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %40 = load i32, i32* @PM_SUSPEND_ON, align 4
  %41 = call i32 @regulator_balance_voltage(%struct.regulator_dev* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %102

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.regulator*, %struct.regulator** %3, align 8
  %48 = call i32 @_regulator_handle_consumer_enable(%struct.regulator* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %102

52:                                               ; preds = %46
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %59 = call i32 @_regulator_is_enabled(%struct.regulator_dev* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64, %57
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %69 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %70 = call i32 @regulator_ops_is_valid(%struct.regulator_dev* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %99

75:                                               ; preds = %67
  %76 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %77 = call i32 @_regulator_do_enable(%struct.regulator_dev* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %99

81:                                               ; preds = %75
  %82 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %83 = load i32, i32* @REGULATOR_EVENT_ENABLE, align 4
  %84 = call i32 @_notifier_call_chain(%struct.regulator_dev* %82, i32 %83, i32* null)
  br label %93

85:                                               ; preds = %64
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @rdev_err(%struct.regulator_dev* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %99

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %81
  br label %94

94:                                               ; preds = %93, %52
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %96 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  store i32 0, i32* %2, align 4
  br label %119

99:                                               ; preds = %88, %80, %72
  %100 = load %struct.regulator*, %struct.regulator** %3, align 8
  %101 = call i32 @_regulator_handle_consumer_disable(%struct.regulator* %100)
  br label %102

102:                                              ; preds = %99, %51, %44
  %103 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %104 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %109 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %108, i32 0, i32 1
  %110 = load %struct.regulator*, %struct.regulator** %109, align 8
  %111 = icmp ne %struct.regulator* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %114 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %113, i32 0, i32 1
  %115 = load %struct.regulator*, %struct.regulator** %114, align 8
  %116 = call i32 @_regulator_disable(%struct.regulator* %115)
  br label %117

117:                                              ; preds = %112, %107, %102
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %94, %29
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @regulator_balance_voltage(%struct.regulator_dev*, i32) #1

declare dso_local i32 @_regulator_handle_consumer_enable(%struct.regulator*) #1

declare dso_local i32 @_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #1

declare dso_local i32 @_regulator_do_enable(%struct.regulator_dev*) #1

declare dso_local i32 @_notifier_call_chain(%struct.regulator_dev*, i32, i32*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, i32) #1

declare dso_local i32 @_regulator_handle_consumer_disable(%struct.regulator*) #1

declare dso_local i32 @_regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
