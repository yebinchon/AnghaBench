; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_initialize_bus_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_initialize_bus_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@IPR_MAX_NUM_BUSES = common dso_local global i32 0, align 4
@IPR_DEFAULT_BUS_WIDTH = common dso_local global i32 0, align 4
@ipr_max_speed = common dso_local global i64 0, align 8
@ipr_max_bus_speeds = common dso_local global i32* null, align 8
@IPR_U160_SCSI_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*)* @ipr_initialize_bus_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_initialize_bus_attr(%struct.ipr_ioa_cfg* %0) #0 {
  %2 = alloca %struct.ipr_ioa_cfg*, align 8
  %3 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %58, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IPR_MAX_NUM_BUSES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %61

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %9, i32* %16, align 8
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @IPR_DEFAULT_BUS_WIDTH, align 4
  %25 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %26 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %24, i32* %31, align 8
  %32 = load i64, i64* @ipr_max_speed, align 8
  %33 = load i32*, i32** @ipr_max_bus_speeds, align 8
  %34 = call i64 @ARRAY_SIZE(i32* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %8
  %37 = load i32*, i32** @ipr_max_bus_speeds, align 8
  %38 = load i64, i64* @ipr_max_speed, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %42 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %40, i32* %47, align 4
  br label %57

48:                                               ; preds = %8
  %49 = load i32, i32* @IPR_U160_SCSI_RATE, align 4
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %49, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %36
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %4

61:                                               ; preds = %4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
