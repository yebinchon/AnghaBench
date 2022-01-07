; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_regulator_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_regulator_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"v-ape\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not get v-ape supply\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"vddulpivio18\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not get vddulpivio18 supply\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"musb_1v8\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not get musb_1v8 supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_usb*)* @ab8500_usb_regulator_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_regulator_get(%struct.ab8500_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ab8500_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %3, align 8
  %5 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %6 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @devm_regulator_get(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %12 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %18 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %22 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %1
  %27 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %28 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @devm_regulator_get(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %32 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %34 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %40 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %44 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %26
  %49 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %50 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @devm_regulator_get(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %54 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %56 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %62 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %66 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %60, %38, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
