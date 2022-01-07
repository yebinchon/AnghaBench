; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_sync_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_sync_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_voltage*, %struct.regulator_dev* }
%struct.regulator_voltage = type { i32, i32 }
%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@PM_SUSPEND_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_sync_voltage(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.regulator_voltage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %8 = load %struct.regulator*, %struct.regulator** %2, align 8
  %9 = getelementptr inbounds %struct.regulator, %struct.regulator* %8, i32 0, i32 1
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  store %struct.regulator_dev* %10, %struct.regulator_dev** %3, align 8
  %11 = load %struct.regulator*, %struct.regulator** %2, align 8
  %12 = getelementptr inbounds %struct.regulator, %struct.regulator* %11, i32 0, i32 0
  %13 = load %struct.regulator_voltage*, %struct.regulator_voltage** %12, align 8
  %14 = load i64, i64* @PM_SUSPEND_ON, align 8
  %15 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %13, i64 %14
  store %struct.regulator_voltage* %15, %struct.regulator_voltage** %4, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %17 = call i32 @regulator_lock(%struct.regulator_dev* %16)
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %19 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %74

38:                                               ; preds = %26, %1
  %39 = load %struct.regulator_voltage*, %struct.regulator_voltage** %4, align 8
  %40 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.regulator_voltage*, %struct.regulator_voltage** %4, align 8
  %45 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %74

51:                                               ; preds = %43, %38
  %52 = load %struct.regulator_voltage*, %struct.regulator_voltage** %4, align 8
  %53 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.regulator_voltage*, %struct.regulator_voltage** %4, align 8
  %56 = getelementptr inbounds %struct.regulator_voltage, %struct.regulator_voltage* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %59 = call i32 @regulator_check_voltage(%struct.regulator_dev* %58, i32* %6, i32* %7)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %74

63:                                               ; preds = %51
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %65 = call i32 @regulator_check_consumers(%struct.regulator_dev* %64, i32* %6, i32* %7, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %74

69:                                               ; preds = %63
  %70 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @_regulator_do_set_voltage(%struct.regulator_dev* %70, i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %68, %62, %48, %35
  %75 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %76 = call i32 @regulator_unlock(%struct.regulator_dev* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_check_voltage(%struct.regulator_dev*, i32*, i32*) #1

declare dso_local i32 @regulator_check_consumers(%struct.regulator_dev*, i32*, i32*, i32) #1

declare dso_local i32 @_regulator_do_set_voltage(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
