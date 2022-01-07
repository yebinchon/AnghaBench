; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_discover_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_discover_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"No support for either device tree or ACPI\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"richtek,output-charge-current\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Error: missing \22output-charge-current\22 property\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"richtek,end-of-charge-percentage\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Error: missing \22end-of-charge-percentage\22 property\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"richtek,battery-regulation-voltage\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Error: missing \22battery-regulation-voltage\22 property\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"richtek,boost-output-voltage\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Error: missing \22boost-output-voltage\22 property\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"richtek,min-input-voltage-regulation\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"richtek,avg-input-current-regulation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, i32*, i32*, i32*, i32*)* @rt9455_discover_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_discover_charger(%struct.rt9455_info* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt9455_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %15 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load %struct.device*, %struct.device** %12, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %5
  %23 = load %struct.device*, %struct.device** %12, align 8
  %24 = call i32 @ACPI_HANDLE(%struct.device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %12, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %80

31:                                               ; preds = %22, %5
  %32 = load %struct.device*, %struct.device** %12, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @device_property_read_u32(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %12, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %80

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @device_property_read_u32(%struct.device* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.device*, %struct.device** %12, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %80

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %54 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %53, i32 0, i32 1
  %55 = call i32 @device_property_read_u32(%struct.device* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %12, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %80

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %12, align 8
  %64 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %65 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %64, i32 0, i32 0
  %66 = call i32 @device_property_read_u32(%struct.device* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.device*, %struct.device** %12, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %80

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %12, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @device_property_read_u32(%struct.device* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32* %75)
  %77 = load %struct.device*, %struct.device** %12, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @device_property_read_u32(%struct.device* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32* %78)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %69, %58, %47, %37, %26
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
