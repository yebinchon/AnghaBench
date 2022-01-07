; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lm363x-regulator.c_lm363x_regulator_enable_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lm363x-regulator.c_lm363x_regulator_enable_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@LM3631_REG_ENTIME_VCONT = common dso_local global i32 0, align 4
@LM3631_ENTIME_CONT_MASK = common dso_local global i32 0, align 4
@LM3631_REG_ENTIME_VOREF = common dso_local global i32 0, align 4
@LM3631_ENTIME_MASK = common dso_local global i32 0, align 4
@LM3631_REG_ENTIME_VPOS = common dso_local global i32 0, align 4
@LM3631_REG_ENTIME_VNEG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LM3631_ENTIME_SHIFT = common dso_local global i32 0, align 4
@ldo_cont_enable_time = common dso_local global i32* null, align 8
@ENABLE_TIME_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lm363x_regulator_enable_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm363x_regulator_enable_time(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %23 [
    i32 131, label %11
    i32 129, label %14
    i32 128, label %17
    i32 130, label %20
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @LM3631_REG_ENTIME_VCONT, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @LM3631_ENTIME_CONT_MASK, align 4
  store i32 %13, i32* %7, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @LM3631_REG_ENTIME_VOREF, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @LM3631_ENTIME_MASK, align 4
  store i32 %16, i32* %7, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @LM3631_REG_ENTIME_VPOS, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @LM3631_ENTIME_MASK, align 4
  store i32 %19, i32* %7, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @LM3631_REG_ENTIME_VNEG, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @LM3631_ENTIME_MASK, align 4
  store i32 %22, i32* %7, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

24:                                               ; preds = %20, %17, %14, %11
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @regmap_read(i32 %27, i32 %28, i32* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @LM3631_ENTIME_SHIFT, align 4
  %39 = lshr i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 131
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32*, i32** @ldo_cont_enable_time, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @ENABLE_TIME_USEC, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul i32 %49, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %42, %31, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
