; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.power_supply_battery_info = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ti,system-minimum-microvolt\00", align 1
@BQ24190_REG_POC_SYS_MIN_MIN = common dso_local global i32 0, align 4
@BQ24190_REG_POC_SYS_MIN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid value for %s: %u\0A\00", align 1
@BQ24190_REG_PCTCC_IPRECHG_MIN = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC_IPRECHG_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"invalid value for battery:precharge-current-microamp: %d\0A\00", align 1
@BQ24190_REG_PCTCC_ITERM_MIN = common dso_local global i32 0, align 4
@BQ24190_REG_PCTCC_ITERM_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"invalid value for battery:charge-term-current-microamp: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*)* @bq24190_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_get_config(%struct.bq24190_dev_info* %0) #0 {
  %2 = alloca %struct.bq24190_dev_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.power_supply_battery_info, align 4
  %5 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %2, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = bitcast %struct.power_supply_battery_info* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %8 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call i64 @device_property_read_u32(%struct.TYPE_3__* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32* %5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 1000
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BQ24190_REG_POC_SYS_MIN_MIN, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BQ24190_REG_POC_SYS_MIN_MAX, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %25 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %32

26:                                               ; preds = %18, %12
  %27 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %28 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %35 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %33
  %41 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %42 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @power_supply_get_battery_info(i32 %43, %struct.power_supply_battery_info* %4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %89, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BQ24190_REG_PCTCC_IPRECHG_MIN, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BQ24190_REG_PCTCC_IPRECHG_MAX, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %60 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %67

61:                                               ; preds = %53, %46
  %62 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %63 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %57
  %68 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 1000
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @BQ24190_REG_PCTCC_ITERM_MIN, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BQ24190_REG_PCTCC_ITERM_MAX, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %81 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %88

82:                                               ; preds = %74, %67
  %83 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %84 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %85, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %82, %78
  br label %89

89:                                               ; preds = %88, %40, %33
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @device_property_read_u32(%struct.TYPE_3__*, i8*, i32*) #2

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, ...) #2

declare dso_local i32 @power_supply_get_battery_info(i32, %struct.power_supply_battery_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
