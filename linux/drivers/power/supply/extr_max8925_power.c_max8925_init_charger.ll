; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_init_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_init_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_chip = type { i32 }
%struct.max8925_power_info = type { i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@MAX8925_IRQ_VCHG_DC_OVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ac-ovp\00", align 1
@MAX8925_IRQ_VCHG_DC_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ac-remove\00", align 1
@MAX8925_IRQ_VCHG_DC_R = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ac-insert\00", align 1
@MAX8925_IRQ_VCHG_THM_OK_R = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"batt-temp-in-range\00", align 1
@MAX8925_IRQ_VCHG_THM_OK_F = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"batt-temp-out-range\00", align 1
@MAX8925_IRQ_VCHG_SYSLOW_F = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"vsys-high\00", align 1
@MAX8925_IRQ_VCHG_SYSLOW_R = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"vsys-low\00", align 1
@MAX8925_IRQ_VCHG_RST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"charger-reset\00", align 1
@MAX8925_IRQ_VCHG_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"charger-done\00", align 1
@MAX8925_IRQ_VCHG_TOPOFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"charger-topoff\00", align 1
@MAX8925_IRQ_VCHG_TMR_FAULT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"charger-timer-expire\00", align 1
@MEASURE_VCHG = common dso_local global i32 0, align 4
@MAX8925_CHG_STATUS = common dso_local global i32 0, align 4
@MAX8925_CHG_MBDET = common dso_local global i32 0, align 4
@MAX8925_CHG_AC_RANGE_MASK = common dso_local global i32 0, align 4
@MAX8925_CHG_CNTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8925_chip*, %struct.max8925_power_info*)* @max8925_init_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_init_charger(%struct.max8925_chip* %0, %struct.max8925_power_info* %1) #0 {
  %3 = alloca %struct.max8925_chip*, align 8
  %4 = alloca %struct.max8925_power_info*, align 8
  %5 = alloca i32, align 4
  store %struct.max8925_chip* %0, %struct.max8925_chip** %3, align 8
  store %struct.max8925_power_info* %1, %struct.max8925_power_info** %4, align 8
  %6 = load i32, i32* @MAX8925_IRQ_VCHG_DC_OVP, align 4
  %7 = call i32 @REQUEST_IRQ(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %9 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX8925_IRQ_VCHG_DC_F, align 4
  %14 = call i32 @REQUEST_IRQ(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @MAX8925_IRQ_VCHG_DC_R, align 4
  %16 = call i32 @REQUEST_IRQ(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %19 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @MAX8925_IRQ_VCHG_THM_OK_R, align 4
  %24 = call i32 @REQUEST_IRQ(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @MAX8925_IRQ_VCHG_THM_OK_F, align 4
  %26 = call i32 @REQUEST_IRQ(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @MAX8925_IRQ_VCHG_SYSLOW_F, align 4
  %29 = call i32 @REQUEST_IRQ(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i32, i32* @MAX8925_IRQ_VCHG_SYSLOW_R, align 4
  %31 = call i32 @REQUEST_IRQ(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @MAX8925_IRQ_VCHG_RST, align 4
  %33 = call i32 @REQUEST_IRQ(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %34 = load i32, i32* @MAX8925_IRQ_VCHG_DONE, align 4
  %35 = call i32 @REQUEST_IRQ(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %36 = load i32, i32* @MAX8925_IRQ_VCHG_TOPOFF, align 4
  %37 = call i32 @REQUEST_IRQ(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i32, i32* @MAX8925_IRQ_VCHG_TMR_FAULT, align 4
  %39 = call i32 @REQUEST_IRQ(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %40 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %41 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %43 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %45 = load i32, i32* @MEASURE_VCHG, align 4
  %46 = call i32 @start_measure(%struct.max8925_power_info* %44, i32 %45)
  %47 = mul nsw i32 %46, 2000
  %48 = icmp sgt i32 %47, 500000
  br i1 %48, label %49, label %52

49:                                               ; preds = %27
  %50 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %51 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %55

52:                                               ; preds = %27
  %53 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX8925_CHG_STATUS, align 4
  %60 = call i32 @max8925_reg_read(i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %55
  %64 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MAX8925_CHG_MBDET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 1
  %75 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %76 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %80

77:                                               ; preds = %63
  %78 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %79 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %68
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MAX8925_CHG_AC_RANGE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %91

88:                                               ; preds = %80
  %89 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %55
  %93 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %94 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MAX8925_CHG_CNTL1, align 4
  %97 = call i32 @max8925_set_bits(i32 %95, i32 %96, i32 128, i32 128)
  %98 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %99 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MAX8925_CHG_CNTL1, align 4
  %102 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %103 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %104, 5
  %106 = call i32 @max8925_set_bits(i32 %100, i32 %101, i32 96, i32 %105)
  %107 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MAX8925_CHG_CNTL1, align 4
  %111 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %112 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @max8925_set_bits(i32 %109, i32 %110, i32 7, i32 %113)
  ret i32 0
}

declare dso_local i32 @REQUEST_IRQ(i32, i8*) #1

declare dso_local i32 @start_measure(%struct.max8925_power_info*, i32) #1

declare dso_local i32 @max8925_reg_read(i32, i32) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
