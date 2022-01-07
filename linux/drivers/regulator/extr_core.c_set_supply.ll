; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_set_supply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_set_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"supplied by %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SUPPLY\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, %struct.regulator_dev*)* @set_supply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_supply(%struct.regulator_dev* %0, %struct.regulator_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store %struct.regulator_dev* %1, %struct.regulator_dev** %5, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %9 = call i32 @rdev_get_name(%struct.regulator_dev* %8)
  %10 = call i32 @rdev_info(%struct.regulator_dev* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 2
  %23 = call i32* @create_regulator(%struct.regulator_dev* %20, i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %19
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %30, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @rdev_info(%struct.regulator_dev*, i8*, i32) #1

declare dso_local i32 @rdev_get_name(%struct.regulator_dev*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32* @create_regulator(%struct.regulator_dev*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
