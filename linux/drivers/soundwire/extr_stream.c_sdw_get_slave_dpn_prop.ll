; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_get_slave_dpn_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_get_slave_dpn_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_dpn_prop = type { i32 }
%struct.sdw_slave = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sdw_dpn_prop*, i32, %struct.sdw_dpn_prop*, i32 }

@SDW_DATA_DIR_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdw_dpn_prop* @sdw_get_slave_dpn_prop(%struct.sdw_slave* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdw_dpn_prop*, align 8
  %5 = alloca %struct.sdw_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdw_dpn_prop*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SDW_DATA_DIR_TX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %16 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @hweight32(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %21 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %22, align 8
  store %struct.sdw_dpn_prop* %23, %struct.sdw_dpn_prop** %8, align 8
  br label %34

24:                                               ; preds = %3
  %25 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %26 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hweight32(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %31 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %32, align 8
  store %struct.sdw_dpn_prop* %33, %struct.sdw_dpn_prop** %8, align 8
  br label %34

34:                                               ; preds = %24, %14
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %40, i64 %42
  %44 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %49, i64 %51
  store %struct.sdw_dpn_prop* %52, %struct.sdw_dpn_prop** %4, align 8
  br label %58

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %35

57:                                               ; preds = %35
  store %struct.sdw_dpn_prop* null, %struct.sdw_dpn_prop** %4, align 8
  br label %58

58:                                               ; preds = %57, %48
  %59 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %4, align 8
  ret %struct.sdw_dpn_prop* %59
}

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
