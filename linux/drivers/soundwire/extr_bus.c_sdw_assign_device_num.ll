; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_assign_device_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_assign_device_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Get dev_num failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Slave already registered dev_num:%d\0A\00", align 1
@SDW_SCP_DEVNUMBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Program device_num %d failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_slave*)* @sdw_assign_device_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_assign_device_num(%struct.sdw_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_slave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %3, align 8
  %6 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %7 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %1
  %11 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %12 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %17 = call i32 @sdw_get_device_num(%struct.sdw_slave* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %19 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %10
  %26 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %27 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %10
  br label %52

37:                                               ; preds = %1
  %38 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %39 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %44 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %48 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %51 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %37, %36
  %53 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %54 = load i32, i32* @SDW_SCP_DEVNUMBER, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @sdw_write(%struct.sdw_slave* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %61 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %60, i32 0, i32 1
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %69 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %59, %25
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sdw_get_device_num(%struct.sdw_slave*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @sdw_write(%struct.sdw_slave*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
