; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_get_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }
%struct.sdw_cdns_streams = type { i32, i32, i32, i32, i32, i32 }

@SDW_DATA_DIR_RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_cdns_get_stream(%struct.sdw_cdns* %0, %struct.sdw_cdns_streams* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sdw_cdns*, align 8
  %6 = alloca %struct.sdw_cdns_streams*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %5, align 8
  store %struct.sdw_cdns_streams* %1, %struct.sdw_cdns_streams** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @SDW_DATA_DIR_RX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %15 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %6, align 8
  %16 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %6, align 8
  %19 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @cdns_get_num_pdi(%struct.sdw_cdns* %14, i32 %17, i32 %20, i64 %21)
  store i32 %22, i32* %9, align 4
  br label %33

23:                                               ; preds = %4
  %24 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %25 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %6, align 8
  %26 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %6, align 8
  %29 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @cdns_get_num_pdi(%struct.sdw_cdns* %24, i32 %27, i32 %30, i64 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %38 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %6, align 8
  %39 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %6, align 8
  %42 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @cdns_get_num_pdi(%struct.sdw_cdns* %37, i32 %40, i32 %43, i64 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @cdns_get_num_pdi(%struct.sdw_cdns*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
