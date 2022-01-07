; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_fw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_fw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"ti,charge-current\00", align 1
@bq24257_ichg_map = common dso_local global i32 0, align 4
@BQ24257_ICHG_MAP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ti,battery-regulation-voltage\00", align 1
@bq24257_vbat_map = common dso_local global i32 0, align 4
@BQ24257_VBAT_MAP_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ti,termination-current\00", align 1
@bq24257_iterm_map = common dso_local global i32 0, align 4
@BQ24257_ITERM_MAP_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"ti,current-limit\00", align 1
@IILIMIT_500 = common dso_local global i8* null, align 8
@bq24257_iilimit_map = common dso_local global i32 0, align 4
@BQ24257_IILIMIT_MAP_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"ti,ovp-voltage\00", align 1
@VOVP_6500 = common dso_local global i8* null, align 8
@bq24257_vovp_map = common dso_local global i32 0, align 4
@BQ24257_VOVP_MAP_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"ti,in-dpm-voltage\00", align 1
@VINDPM_4360 = common dso_local global i8* null, align 8
@bq24257_vindpm_map = common dso_local global i32 0, align 4
@BQ24257_VINDPM_MAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24257_device*)* @bq24257_fw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_fw_probe(%struct.bq24257_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24257_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bq24257_device* %0, %struct.bq24257_device** %3, align 8
  %6 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @device_property_read_u32(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %116

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @bq24257_ichg_map, align 4
  %17 = load i32, i32* @BQ24257_ICHG_MAP_SIZE, align 4
  %18 = call i8* @bq24257_find_idx(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %20 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i8* %18, i8** %21, align 8
  %22 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %23 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_property_read_u32(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %116

30:                                               ; preds = %14
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @bq24257_vbat_map, align 4
  %33 = load i32, i32* @BQ24257_VBAT_MAP_SIZE, align 4
  %34 = call i8* @bq24257_find_idx(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %36 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i8* %34, i8** %37, align 8
  %38 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %39 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_property_read_u32(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %116

46:                                               ; preds = %30
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @bq24257_iterm_map, align 4
  %49 = load i32, i32* @BQ24257_ITERM_MAP_SIZE, align 4
  %50 = call i8* @bq24257_find_idx(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %52 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %55 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_property_read_u32(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %62 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i8*, i8** @IILIMIT_500, align 8
  %64 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %65 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i8* %63, i8** %66, align 8
  br label %75

67:                                               ; preds = %46
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @bq24257_iilimit_map, align 4
  %70 = load i32, i32* @BQ24257_IILIMIT_MAP_SIZE, align 4
  %71 = call i8* @bq24257_find_idx(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %73 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i8* %71, i8** %74, align 8
  br label %75

75:                                               ; preds = %67, %60
  %76 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %77 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @device_property_read_u32(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i8*, i8** @VOVP_6500, align 8
  %84 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %85 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  br label %95

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @bq24257_vovp_map, align 4
  %90 = load i32, i32* @BQ24257_VOVP_MAP_SIZE, align 4
  %91 = call i8* @bq24257_find_idx(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %93 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %97 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_property_read_u32(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %5)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i8*, i8** @VINDPM_4360, align 8
  %104 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %105 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  br label %115

107:                                              ; preds = %95
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @bq24257_vindpm_map, align 4
  %110 = load i32, i32* @BQ24257_VINDPM_MAP_SIZE, align 4
  %111 = call i8* @bq24257_find_idx(i32 %108, i32 %109, i32 %110)
  %112 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %113 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  br label %115

115:                                              ; preds = %107, %102
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %44, %28, %12
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i8* @bq24257_find_idx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
