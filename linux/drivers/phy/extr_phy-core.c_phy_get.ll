; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"missing string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"phy-names\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy* @phy_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_WARN(%struct.device* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.phy* @ERR_PTR(i32 %14)
  store %struct.phy* %15, %struct.phy** %3, align 8
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @of_property_match_string(i64 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.phy* @_of_phy_get(i64 %29, i32 %30)
  store %struct.phy* %31, %struct.phy** %7, align 8
  br label %36

32:                                               ; preds = %16
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call %struct.phy* @phy_find(%struct.device* %33, i8* %34)
  store %struct.phy* %35, %struct.phy** %7, align 8
  br label %36

36:                                               ; preds = %32, %21
  %37 = load %struct.phy*, %struct.phy** %7, align 8
  %38 = call i64 @IS_ERR(%struct.phy* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %41, %struct.phy** %3, align 8
  br label %59

42:                                               ; preds = %36
  %43 = load %struct.phy*, %struct.phy** %7, align 8
  %44 = getelementptr inbounds %struct.phy, %struct.phy* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @try_module_get(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.phy* @ERR_PTR(i32 %52)
  store %struct.phy* %53, %struct.phy** %3, align 8
  br label %59

54:                                               ; preds = %42
  %55 = load %struct.phy*, %struct.phy** %7, align 8
  %56 = getelementptr inbounds %struct.phy, %struct.phy* %55, i32 0, i32 0
  %57 = call i32 @get_device(i32* %56)
  %58 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %58, %struct.phy** %3, align 8
  br label %59

59:                                               ; preds = %54, %50, %40, %10
  %60 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %60
}

declare dso_local i32 @dev_WARN(%struct.device*, i8*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @of_property_match_string(i64, i8*, i8*) #1

declare dso_local %struct.phy* @_of_phy_get(i64, i32) #1

declare dso_local %struct.phy* @phy_find(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
