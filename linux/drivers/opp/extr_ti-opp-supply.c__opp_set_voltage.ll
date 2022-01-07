; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_ti-opp-supply.c__opp_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_ti-opp-supply.c__opp_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.dev_pm_opp_supply = type { i64, i64, i64 }
%struct.regulator = type { i32 }

@opp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"Invalid range voltages [Min:%lu target:%lu Max:%lu]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s scaling to %luuV[min %luuV max %luuV]\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s failed for %luuV[min %luuV max %luuV]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.dev_pm_opp_supply*, i32, %struct.regulator*, i8*)* @_opp_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_opp_set_voltage(%struct.device* %0, %struct.dev_pm_opp_supply* %1, i32 %2, %struct.regulator* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dev_pm_opp_supply*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regulator*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.dev_pm_opp_supply* %1, %struct.dev_pm_opp_supply** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.regulator* %3, %struct.regulator** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %13, align 8
  br label %24

20:                                               ; preds = %5
  %21 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %22 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opp_data, i32 0, i32 0), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opp_data, i32 0, i32 0), align 8
  store i64 %28, i64* %14, align 8
  br label %33

29:                                               ; preds = %24
  %30 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %31 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %14, align 8
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %40 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %45 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43, %37, %33
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %52 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54, i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %88

59:                                               ; preds = %43
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %64 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %61, i64 %62, i64 %65, i64 %66)
  %68 = load %struct.regulator*, %struct.regulator** %10, align 8
  %69 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %70 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @regulator_set_voltage_triplet(%struct.regulator* %68, i64 %71, i64 %72, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %59
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %8, align 8
  %82 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %79, i64 %80, i64 %83, i64 %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %88

87:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %77, %49
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @regulator_set_voltage_triplet(%struct.regulator*, i64, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
