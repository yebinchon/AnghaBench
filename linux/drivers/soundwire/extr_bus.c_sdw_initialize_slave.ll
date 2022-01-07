; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_initialize_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_initialize_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { %struct.TYPE_4__*, %struct.sdw_slave_prop }
%struct.TYPE_4__ = type { i32 }
%struct.sdw_slave_prop = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDW_SCP_INT1_IMPL_DEF = common dso_local global i32 0, align 4
@SDW_SCP_INT1_BUS_CLASH = common dso_local global i32 0, align 4
@SDW_SCP_INT1_PARITY = common dso_local global i32 0, align 4
@SDW_SCP_INTMASK1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SDW_SCP_INTMASK1 write failed:%d\0A\00", align 1
@SDW_DP0_INT_PORT_READY = common dso_local global i32 0, align 4
@SDW_DP0_INT_BRA_FAILURE = common dso_local global i32 0, align 4
@SDW_DP0_INTMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SDW_DP0_INTMASK read failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_slave*)* @sdw_initialize_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_initialize_slave(%struct.sdw_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_slave*, align 8
  %4 = alloca %struct.sdw_slave_prop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %3, align 8
  %7 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %8 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %7, i32 0, i32 1
  store %struct.sdw_slave_prop* %8, %struct.sdw_slave_prop** %4, align 8
  %9 = load i32, i32* @SDW_SCP_INT1_IMPL_DEF, align 4
  %10 = load i32, i32* @SDW_SCP_INT1_BUS_CLASH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SDW_SCP_INT1_PARITY, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %15 = load i32, i32* @SDW_SCP_INTMASK1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sdw_update(%struct.sdw_slave* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %23 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %1
  %31 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %32 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.sdw_slave_prop, %struct.sdw_slave_prop* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %65

37:                                               ; preds = %30
  %38 = load %struct.sdw_slave_prop*, %struct.sdw_slave_prop** %4, align 8
  %39 = getelementptr inbounds %struct.sdw_slave_prop, %struct.sdw_slave_prop* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SDW_DP0_INT_PORT_READY, align 4
  %44 = load i32, i32* @SDW_DP0_INT_BRA_FAILURE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %49 = load i32, i32* @SDW_DP0_INTMASK, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @sdw_update(%struct.sdw_slave* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %37
  %56 = load %struct.sdw_slave*, %struct.sdw_slave** %3, align 8
  %57 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55, %36, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @sdw_update(%struct.sdw_slave*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
