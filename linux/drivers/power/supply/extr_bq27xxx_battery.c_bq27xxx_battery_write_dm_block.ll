; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_write_dm_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_write_dm_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32 }
%struct.bq27xxx_dm_buf = type { i32, i32, i32, i32 }

@BQ27XXX_O_CFGUP = common dso_local global i32 0, align 4
@BQ27XXX_DM_CTRL = common dso_local global i32 0, align 4
@BQ27XXX_DM_CLASS = common dso_local global i32 0, align 4
@BQ27XXX_DM_BLOCK = common dso_local global i32 0, align 4
@BQ27XXX_DM_DATA = common dso_local global i32 0, align 4
@BQ27XXX_DM_SZ = common dso_local global i32 0, align 4
@BQ27XXX_DM_CKSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bus error writing chip memory: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, %struct.bq27xxx_dm_buf*)* @bq27xxx_battery_write_dm_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_write_dm_block(%struct.bq27xxx_device_info* %0, %struct.bq27xxx_dm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq27xxx_device_info*, align 8
  %5 = alloca %struct.bq27xxx_dm_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %4, align 8
  store %struct.bq27xxx_dm_buf* %1, %struct.bq27xxx_dm_buf** %5, align 8
  %8 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %9 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BQ27XXX_O_CFGUP, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %14 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %23 = call i32 @bq27xxx_battery_set_cfgupdate(%struct.bq27xxx_device_info* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %107

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %31 = load i32, i32* @BQ27XXX_DM_CTRL, align 4
  %32 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %30, i32 %31, i32 0, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %94

36:                                               ; preds = %29
  %37 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %38 = load i32, i32* @BQ27XXX_DM_CLASS, align 4
  %39 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %40 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %37, i32 %38, i32 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %94

46:                                               ; preds = %36
  %47 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %48 = load i32, i32* @BQ27XXX_DM_BLOCK, align 4
  %49 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %50 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %47, i32 %48, i32 %51, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %94

56:                                               ; preds = %46
  %57 = call i32 @BQ27XXX_MSLEEP(i32 1)
  %58 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %59 = load i32, i32* @BQ27XXX_DM_DATA, align 4
  %60 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %61 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BQ27XXX_DM_SZ, align 4
  %64 = call i32 @bq27xxx_write_block(%struct.bq27xxx_device_info* %58, i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %94

68:                                               ; preds = %56
  %69 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %70 = load i32, i32* @BQ27XXX_DM_CKSUM, align 4
  %71 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %72 = call i32 @bq27xxx_battery_checksum_dm_block(%struct.bq27xxx_dm_buf* %71)
  %73 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %69, i32 %70, i32 %72, i32 1)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %94

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = call i32 @BQ27XXX_MSLEEP(i32 1)
  %82 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %83 = call i32 @bq27xxx_battery_soft_reset(%struct.bq27xxx_device_info* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %107

88:                                               ; preds = %80
  br label %91

89:                                               ; preds = %77
  %90 = call i32 @BQ27XXX_MSLEEP(i32 100)
  br label %91

91:                                               ; preds = %89, %88
  %92 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %93 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %107

94:                                               ; preds = %76, %67, %55, %45, %35
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %99 = call i32 @bq27xxx_battery_soft_reset(%struct.bq27xxx_device_info* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %102 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %91, %86, %26, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @bq27xxx_battery_set_cfgupdate(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @bq27xxx_write(%struct.bq27xxx_device_info*, i32, i32, i32) #1

declare dso_local i32 @BQ27XXX_MSLEEP(i32) #1

declare dso_local i32 @bq27xxx_write_block(%struct.bq27xxx_device_info*, i32, i32, i32) #1

declare dso_local i32 @bq27xxx_battery_checksum_dm_block(%struct.bq27xxx_dm_buf*) #1

declare dso_local i32 @bq27xxx_battery_soft_reset(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
