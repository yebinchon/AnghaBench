; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { i32, %struct.regulator*, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"unbalanced disables for %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@REGULATOR_EVENT_PRE_DISABLE = common dso_local global i32 0, align 4
@NOTIFY_STOP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to disable\0A\00", align 1
@REGULATOR_EVENT_ABORT_DISABLE = common dso_local global i32 0, align 4
@REGULATOR_EVENT_DISABLE = common dso_local global i32 0, align 4
@PM_SUSPEND_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*)* @_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_disable(%struct.regulator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  %6 = load %struct.regulator*, %struct.regulator** %3, align 8
  %7 = getelementptr inbounds %struct.regulator, %struct.regulator* %6, i32 0, i32 0
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  store %struct.regulator_dev* %8, %struct.regulator_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held_once(i32* %11)
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %19 = call i32 @rdev_get_name(%struct.regulator_dev* %18)
  %20 = call i64 @WARN(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %127

25:                                               ; preds = %1
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %77

30:                                               ; preds = %25
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %32 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %35
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %44 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %45 = call i64 @regulator_ops_is_valid(%struct.regulator_dev* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %49 = load i32, i32* @REGULATOR_EVENT_PRE_DISABLE, align 4
  %50 = call i32 @_notifier_call_chain(%struct.regulator_dev* %48, i32 %49, i32* null)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %127

58:                                               ; preds = %47
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %60 = call i32 @_regulator_do_disable(%struct.regulator_dev* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = call i32 @rdev_err(%struct.regulator_dev* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %67 = load i32, i32* @REGULATOR_EVENT_ABORT_DISABLE, align 4
  %68 = call i32 @_notifier_call_chain(%struct.regulator_dev* %66, i32 %67, i32* null)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %127

70:                                               ; preds = %58
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %72 = load i32, i32* @REGULATOR_EVENT_DISABLE, align 4
  %73 = call i32 @_notifier_call_chain(%struct.regulator_dev* %71, i32 %72, i32* null)
  br label %74

74:                                               ; preds = %70, %42
  %75 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %76 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %88

77:                                               ; preds = %35, %30, %25
  %78 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %79 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %84 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.regulator*, %struct.regulator** %3, align 8
  %93 = call i32 @_regulator_handle_consumer_disable(%struct.regulator* %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %99 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %105 = load i32, i32* @PM_SUSPEND_ON, align 4
  %106 = call i32 @regulator_balance_voltage(%struct.regulator_dev* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %97, %94
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %112 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %117 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %116, i32 0, i32 1
  %118 = load %struct.regulator*, %struct.regulator** %117, align 8
  %119 = icmp ne %struct.regulator* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %122 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %121, i32 0, i32 1
  %123 = load %struct.regulator*, %struct.regulator** %122, align 8
  %124 = call i32 @_regulator_disable(%struct.regulator* %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %120, %115, %110, %107
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %63, %55, %22
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @rdev_get_name(%struct.regulator_dev*) #1

declare dso_local i64 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #1

declare dso_local i32 @_notifier_call_chain(%struct.regulator_dev*, i32, i32*) #1

declare dso_local i32 @_regulator_do_disable(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*) #1

declare dso_local i32 @_regulator_handle_consumer_disable(%struct.regulator*) #1

declare dso_local i32 @regulator_balance_voltage(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
