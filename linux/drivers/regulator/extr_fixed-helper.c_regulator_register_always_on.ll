; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed-helper.c_regulator_register_always_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed-helper.c_regulator_register_always_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.regulator_consumer_supply*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.regulator_consumer_supply = type { i32 }
%struct.fixed_regulator_data = type { %struct.platform_device, %struct.TYPE_7__, %struct.TYPE_6__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"reg-fixed-voltage\00", align 1
@regulator_fixed_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @regulator_register_always_on(i32 %0, i8* %1, %struct.regulator_consumer_supply* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.regulator_consumer_supply*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fixed_regulator_data*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.regulator_consumer_supply* %2, %struct.regulator_consumer_supply** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fixed_regulator_data* @kzalloc(i32 80, i32 %13)
  store %struct.fixed_regulator_data* %14, %struct.fixed_regulator_data** %12, align 8
  %15 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %16 = icmp ne %struct.fixed_regulator_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.platform_device* null, %struct.platform_device** %6, align 8
  br label %81

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @kstrdup(i8* %19, i32 %20)
  %22 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %23 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %26 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %32 = call i32 @kfree(%struct.fixed_regulator_data* %31)
  store %struct.platform_device* null, %struct.platform_device** %6, align 8
  br label %81

33:                                               ; preds = %18
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %36 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %39 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %42 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %41, i32 0, i32 2
  %43 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %44 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %47 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.regulator_consumer_supply*, %struct.regulator_consumer_supply** %9, align 8
  %51 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %52 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.regulator_consumer_supply* %50, %struct.regulator_consumer_supply** %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %56 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %59 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %63 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %66 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %65, i32 0, i32 1
  %67 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %68 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %70, align 8
  %71 = load i32, i32* @regulator_fixed_release, align 4
  %72 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %73 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %77 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %76, i32 0, i32 0
  %78 = call i32 @platform_device_register(%struct.platform_device* %77)
  %79 = load %struct.fixed_regulator_data*, %struct.fixed_regulator_data** %12, align 8
  %80 = getelementptr inbounds %struct.fixed_regulator_data, %struct.fixed_regulator_data* %79, i32 0, i32 0
  store %struct.platform_device* %80, %struct.platform_device** %6, align 8
  br label %81

81:                                               ; preds = %33, %30, %17
  %82 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  ret %struct.platform_device* %82
}

declare dso_local %struct.fixed_regulator_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.fixed_regulator_data*) #1

declare dso_local i32 @platform_device_register(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
