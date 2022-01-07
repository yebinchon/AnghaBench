; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_handle_consumer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_handle_consumer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i64, i64, %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Underflow of regulator enable count\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*)* @_regulator_handle_consumer_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_handle_consumer_disable(%struct.regulator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  %5 = load %struct.regulator*, %struct.regulator** %3, align 8
  %6 = getelementptr inbounds %struct.regulator, %struct.regulator* %5, i32 0, i32 2
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  store %struct.regulator_dev* %7, %struct.regulator_dev** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held_once(i32* %10)
  %12 = load %struct.regulator*, %struct.regulator** %3, align 8
  %13 = getelementptr inbounds %struct.regulator, %struct.regulator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %18 = call i32 @rdev_err(%struct.regulator_dev* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.regulator*, %struct.regulator** %3, align 8
  %23 = getelementptr inbounds %struct.regulator, %struct.regulator* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.regulator*, %struct.regulator** %3, align 8
  %27 = getelementptr inbounds %struct.regulator, %struct.regulator* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.regulator*, %struct.regulator** %3, align 8
  %32 = getelementptr inbounds %struct.regulator, %struct.regulator* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %37 = call i32 @drms_uA_update(%struct.regulator_dev* %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %30, %21
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*) #1

declare dso_local i32 @drms_uA_update(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
