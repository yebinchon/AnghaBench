; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_regulator_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps80031-regulator.c_tps80031_regulator_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps80031_regulator = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.tps80031_regulator_platform_data = type { i32 }

@TPS80031_USBLDO_INPUT_VSYS = common dso_local global i32 0, align 4
@TPS80031_USBLDO_INPUT_PMID = common dso_local global i32 0, align 4
@MISC2_LDOUSB_IN_VSYS = common dso_local global i32 0, align 4
@MISC2_LDOUSB_IN_PMID = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_MISC2 = common dso_local global i32 0, align 4
@MISC2_LDOUSB_IN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LDOUSB config failed, e= %d\0A\00", align 1
@TPS80031_LDO3_OUTPUT_VIB = common dso_local global i32 0, align 4
@MISC2_LDO3_SEL_VIB_VAL = common dso_local global i32 0, align 4
@MISC2_LDO3_SEL_VIB_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"LDO3 config failed, e = %d\0A\00", align 1
@TPS80031_VBUS_SW_ONLY = common dso_local global i32 0, align 4
@tps80031_vbus_sw_ops = common dso_local global i32 0, align 4
@TPS80031_TRANS_ACTIVE_ON = common dso_local global i32 0, align 4
@TPS80031_TRANS_SLEEP_OFF = common dso_local global i32 0, align 4
@TPS80031_TRANS_OFF_OFF = common dso_local global i32 0, align 4
@TPS80031_TRANS_ACTIVE_MASK = common dso_local global i32 0, align 4
@TPS80031_TRANS_SLEEP_MASK = common dso_local global i32 0, align 4
@TPS80031_TRANS_OFF_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"trans reg update failed, e %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tps80031_regulator*, %struct.tps80031_regulator_platform_data*)* @tps80031_regulator_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_regulator_config(%struct.device* %0, %struct.tps80031_regulator* %1, %struct.tps80031_regulator_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tps80031_regulator*, align 8
  %7 = alloca %struct.tps80031_regulator_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.tps80031_regulator* %1, %struct.tps80031_regulator** %6, align 8
  store %struct.tps80031_regulator_platform_data* %2, %struct.tps80031_regulator_platform_data** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %11 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %93 [
    i32 129, label %16
    i32 130, label %54
    i32 128, label %79
  ]

16:                                               ; preds = %3
  %17 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %18 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TPS80031_USBLDO_INPUT_VSYS, align 4
  %21 = load i32, i32* @TPS80031_USBLDO_INPUT_PMID, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %26 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %27 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TPS80031_USBLDO_INPUT_VSYS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @MISC2_LDOUSB_IN_VSYS, align 4
  store i32 %33, i32* %9, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @MISC2_LDOUSB_IN_PMID, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %39 = load i32, i32* @TPS80031_MISC2, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MISC2_LDOUSB_IN_MASK, align 4
  %42 = call i32 @tps80031_update(%struct.device* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %47 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %124

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %16
  br label %94

54:                                               ; preds = %3
  %55 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %56 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TPS80031_LDO3_OUTPUT_VIB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %64 = load i32, i32* @TPS80031_MISC2, align 4
  %65 = load i32, i32* @MISC2_LDO3_SEL_VIB_VAL, align 4
  %66 = load i32, i32* @MISC2_LDO3_SEL_VIB_MASK, align 4
  %67 = call i32 @tps80031_update(%struct.device* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %72 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %124

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %54
  br label %94

79:                                               ; preds = %3
  %80 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %81 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @TPS80031_VBUS_SW_ONLY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %88 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32* @tps80031_vbus_sw_ops, i32** %91, align 8
  br label %92

92:                                               ; preds = %86, %79
  br label %94

93:                                               ; preds = %3
  br label %94

94:                                               ; preds = %93, %92, %78, %53
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %97 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %98 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TPS80031_TRANS_ACTIVE_ON, align 4
  %103 = load i32, i32* @TPS80031_TRANS_SLEEP_OFF, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @TPS80031_TRANS_OFF_OFF, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @TPS80031_TRANS_ACTIVE_MASK, align 4
  %108 = load i32, i32* @TPS80031_TRANS_SLEEP_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @TPS80031_TRANS_OFF_MASK, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @tps80031_update(%struct.device* %95, i32 %96, i32 %101, i32 %106, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %94
  %116 = load %struct.tps80031_regulator*, %struct.tps80031_regulator** %6, align 8
  %117 = getelementptr inbounds %struct.tps80031_regulator, %struct.tps80031_regulator* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %124

122:                                              ; preds = %94
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %115, %70, %45
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @tps80031_update(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
