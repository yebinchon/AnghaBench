; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, i64, %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_load(%struct.regulator* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.regulator*, %struct.regulator** %3, align 8
  %9 = getelementptr inbounds %struct.regulator, %struct.regulator* %8, i32 0, i32 2
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  store %struct.regulator_dev* %10, %struct.regulator_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call i32 @regulator_lock(%struct.regulator_dev* %11)
  %13 = load %struct.regulator*, %struct.regulator** %3, align 8
  %14 = getelementptr inbounds %struct.regulator, %struct.regulator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.regulator*, %struct.regulator** %3, align 8
  %18 = getelementptr inbounds %struct.regulator, %struct.regulator* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.regulator*, %struct.regulator** %3, align 8
  %20 = getelementptr inbounds %struct.regulator, %struct.regulator* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %29 = call i32 @drms_uA_update(%struct.regulator_dev* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.regulator*, %struct.regulator** %3, align 8
  %35 = getelementptr inbounds %struct.regulator, %struct.regulator* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %23, %2
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %39 = call i32 @regulator_unlock(%struct.regulator_dev* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @drms_uA_update(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
