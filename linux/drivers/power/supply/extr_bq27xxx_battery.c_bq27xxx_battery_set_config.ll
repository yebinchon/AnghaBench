; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }
%struct.power_supply_battery_info = type { i32, i32, i32 }
%struct.bq27xxx_dm_buf = type { i64, i64, i64 }

@BQ27XXX_DM_DESIGN_CAPACITY = common dso_local global i32 0, align 4
@BQ27XXX_DM_TERMINATE_VOLTAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BQ27XXX_DM_DESIGN_ENERGY = common dso_local global i32 0, align 4
@BQ27XXX_O_CFGUP = common dso_local global i32 0, align 4
@BQ27XXX_REG_CTRL = common dso_local global i32 0, align 4
@BQ27XXX_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq27xxx_device_info*, %struct.power_supply_battery_info*)* @bq27xxx_battery_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq27xxx_battery_set_config(%struct.bq27xxx_device_info* %0, %struct.power_supply_battery_info* %1) #0 {
  %3 = alloca %struct.bq27xxx_device_info*, align 8
  %4 = alloca %struct.power_supply_battery_info*, align 8
  %5 = alloca %struct.bq27xxx_dm_buf, align 8
  %6 = alloca %struct.bq27xxx_dm_buf, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %3, align 8
  store %struct.power_supply_battery_info* %1, %struct.power_supply_battery_info** %4, align 8
  %9 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %10 = load i32, i32* @BQ27XXX_DM_DESIGN_CAPACITY, align 4
  call void @BQ27XXX_DM_BUF(%struct.bq27xxx_dm_buf* sret %5, %struct.bq27xxx_device_info* %9, i32 %10)
  %11 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %12 = load i32, i32* @BQ27XXX_DM_TERMINATE_VOLTAGE, align 4
  call void @BQ27XXX_DM_BUF(%struct.bq27xxx_dm_buf* sret %6, %struct.bq27xxx_device_info* %11, i32 %12)
  %13 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %14 = call i64 @bq27xxx_battery_unseal(%struct.bq27xxx_device_info* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %4, align 8
  %19 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %4, align 8
  %26 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %33 = call i32 @bq27xxx_battery_read_dm_block(%struct.bq27xxx_device_info* %32, %struct.bq27xxx_dm_buf* %5)
  %34 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %35 = load i32, i32* @BQ27XXX_DM_DESIGN_CAPACITY, align 4
  %36 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %4, align 8
  %37 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 1000
  %40 = call i32 @bq27xxx_battery_update_dm_block(%struct.bq27xxx_device_info* %34, %struct.bq27xxx_dm_buf* %5, i32 %35, i32 %39)
  %41 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %42 = load i32, i32* @BQ27XXX_DM_DESIGN_ENERGY, align 4
  %43 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %4, align 8
  %44 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 1000
  %47 = call i32 @bq27xxx_battery_update_dm_block(%struct.bq27xxx_device_info* %41, %struct.bq27xxx_dm_buf* %5, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %31, %24, %17
  %49 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %4, align 8
  %50 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %5, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ false, %55 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %74 = call i32 @bq27xxx_battery_read_dm_block(%struct.bq27xxx_device_info* %73, %struct.bq27xxx_dm_buf* %6)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %81

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %79
  %82 = phi %struct.bq27xxx_dm_buf* [ %5, %79 ], [ %6, %80 ]
  %83 = load i32, i32* @BQ27XXX_DM_TERMINATE_VOLTAGE, align 4
  %84 = load %struct.power_supply_battery_info*, %struct.power_supply_battery_info** %4, align 8
  %85 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 1000
  %88 = call i32 @bq27xxx_battery_update_dm_block(%struct.bq27xxx_device_info* %76, %struct.bq27xxx_dm_buf* %82, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %81, %48
  %90 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %5, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %6, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ true, %89 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %101 = call i32 @bq27xxx_battery_write_dm_block(%struct.bq27xxx_device_info* %100, %struct.bq27xxx_dm_buf* %5)
  %102 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %103 = call i32 @bq27xxx_battery_write_dm_block(%struct.bq27xxx_device_info* %102, %struct.bq27xxx_dm_buf* %6)
  %104 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %105 = call i32 @bq27xxx_battery_seal(%struct.bq27xxx_device_info* %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %97
  %109 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %110 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @BQ27XXX_O_CFGUP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %117 = load i32, i32* @BQ27XXX_REG_CTRL, align 4
  %118 = load i32, i32* @BQ27XXX_RESET, align 4
  %119 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %116, i32 %117, i32 %118, i32 0)
  %120 = call i32 @BQ27XXX_MSLEEP(i32 300)
  br label %121

121:                                              ; preds = %16, %115, %108, %97
  ret void
}

declare dso_local void @BQ27XXX_DM_BUF(%struct.bq27xxx_dm_buf* sret, %struct.bq27xxx_device_info*, i32) #1

declare dso_local i64 @bq27xxx_battery_unseal(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @bq27xxx_battery_read_dm_block(%struct.bq27xxx_device_info*, %struct.bq27xxx_dm_buf*) #1

declare dso_local i32 @bq27xxx_battery_update_dm_block(%struct.bq27xxx_device_info*, %struct.bq27xxx_dm_buf*, i32, i32) #1

declare dso_local i32 @bq27xxx_battery_write_dm_block(%struct.bq27xxx_device_info*, %struct.bq27xxx_dm_buf*) #1

declare dso_local i32 @bq27xxx_battery_seal(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @bq27xxx_write(%struct.bq27xxx_device_info*, i32, i32, i32) #1

declare dso_local i32 @BQ27XXX_MSLEEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
