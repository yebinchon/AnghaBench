; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_do_set_suspend_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_do_set_suspend_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i32)* }
%struct.regulator_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32)* @_regulator_do_set_suspend_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_do_set_suspend_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.regulator_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev* %13, i32 %14)
  store %struct.regulator_state* %15, %struct.regulator_state** %10, align 8
  %16 = load %struct.regulator_state*, %struct.regulator_state** %10, align 8
  %17 = icmp eq %struct.regulator_state* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.regulator_state*, %struct.regulator_state** %10, align 8
  %24 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.regulator_state*, %struct.regulator_state** %10, align 8
  %29 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.regulator_state*, %struct.regulator_state** %10, align 8
  %34 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.regulator_state*, %struct.regulator_state** %10, align 8
  %39 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @regulator_map_voltage(%struct.regulator_dev* %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %41
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %56, align 8
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 %57(%struct.regulator_dev* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.regulator_state*, %struct.regulator_state** %10, align 8
  %71 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %64, %50
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %48, %18
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev*, i32) #1

declare dso_local i32 @regulator_map_voltage(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
