; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_ml_sync_bank_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_ml_sync_bank_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Controller Timed out on bank switch\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*)* @sdw_ml_sync_bank_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_ml_sync_bank_switch(%struct.sdw_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_bus*, align 8
  %4 = alloca i64, align 8
  store %struct.sdw_bus* %0, %struct.sdw_bus** %3, align 8
  %5 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %6 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %12 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %15 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @wait_for_completion_timeout(i32* %13, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %22 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %10
  %28 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %29 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %36 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %39 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %46 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %49 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %27
  %54 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %55 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @kfree(%struct.TYPE_6__* %59)
  %61 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %62 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @kfree(%struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %53, %27
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %20, %9
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
