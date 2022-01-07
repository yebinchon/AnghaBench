; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_show_tricklecharger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_show_tricklecharger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ds1343_priv = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@DS1343_TRICKLE_REG = common dso_local global i32 0, align 4
@DS1343_TRICKLE_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"one diode,\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no diode,\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1k Ohm\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"2k Ohm\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"4k Ohm\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ds1343_show_tricklecharger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_show_tricklecharger(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ds1343_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %11)
  store %struct.ds1343_priv* %12, %struct.ds1343_priv** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %13 = load %struct.ds1343_priv*, %struct.ds1343_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DS1343_TRICKLE_REG, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %8)
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 240
  %20 = load i32, i32* @DS1343_TRICKLE_MAGIC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 12
  switch i32 %24, label %26 [
    i32 128, label %25
  ]

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 3
  switch i32 %29, label %33 [
    i32 131, label %30
    i32 130, label %31
    i32 129, label %32
  ]

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %34

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %34

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %34

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %37, i8* %38)
  ret i32 %39
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
