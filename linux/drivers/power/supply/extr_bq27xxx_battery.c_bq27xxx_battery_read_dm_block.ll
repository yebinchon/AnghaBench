; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_dm_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_read_dm_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }
%struct.bq27xxx_dm_buf = type { i32, i32, i32, i32, i32 }

@BQ27XXX_DM_CLASS = common dso_local global i32 0, align 4
@BQ27XXX_DM_BLOCK = common dso_local global i32 0, align 4
@BQ27XXX_DM_DATA = common dso_local global i32 0, align 4
@BQ27XXX_DM_SZ = common dso_local global i32 0, align 4
@BQ27XXX_DM_CKSUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bus error reading chip memory: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, %struct.bq27xxx_dm_buf*)* @bq27xxx_battery_read_dm_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_read_dm_block(%struct.bq27xxx_device_info* %0, %struct.bq27xxx_dm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq27xxx_device_info*, align 8
  %5 = alloca %struct.bq27xxx_dm_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %4, align 8
  store %struct.bq27xxx_dm_buf* %1, %struct.bq27xxx_dm_buf** %5, align 8
  %7 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %8 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %10 = load i32, i32* @BQ27XXX_DM_CLASS, align 4
  %11 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %12 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %9, i32 %10, i32 %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %20 = load i32, i32* @BQ27XXX_DM_BLOCK, align 4
  %21 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %22 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %19, i32 %20, i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %61

28:                                               ; preds = %18
  %29 = call i32 @BQ27XXX_MSLEEP(i32 1)
  %30 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %31 = load i32, i32* @BQ27XXX_DM_DATA, align 4
  %32 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %33 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BQ27XXX_DM_SZ, align 4
  %36 = call i32 @bq27xxx_read_block(%struct.bq27xxx_device_info* %30, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %61

40:                                               ; preds = %28
  %41 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %42 = load i32, i32* @BQ27XXX_DM_CKSUM, align 4
  %43 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %41, i32 %42, i32 1)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %61

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %51 = call i64 @bq27xxx_battery_checksum_dm_block(%struct.bq27xxx_dm_buf* %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %58 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.bq27xxx_dm_buf*, %struct.bq27xxx_dm_buf** %5, align 8
  %60 = getelementptr inbounds %struct.bq27xxx_dm_buf, %struct.bq27xxx_dm_buf* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %68

61:                                               ; preds = %53, %46, %39, %27, %17
  %62 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %63 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @bq27xxx_write(%struct.bq27xxx_device_info*, i32, i32, i32) #1

declare dso_local i32 @BQ27XXX_MSLEEP(i32) #1

declare dso_local i32 @bq27xxx_read_block(%struct.bq27xxx_device_info*, i32, i32, i32) #1

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i64 @bq27xxx_battery_checksum_dm_block(%struct.bq27xxx_dm_buf*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
