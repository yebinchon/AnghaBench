; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_xfer_msg_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_xfer_msg_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32 }
%struct.sdw_msg = type { i32 }
%struct.sdw_defer = type { i32 }
%struct.sdw_cdns = type { %struct.sdw_defer* }

@ENOTSUPP = common dso_local global i32 0, align 4
@SDW_CMD_FAIL_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns_xfer_msg_defer(%struct.sdw_bus* %0, %struct.sdw_msg* %1, %struct.sdw_defer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_msg*, align 8
  %7 = alloca %struct.sdw_defer*, align 8
  %8 = alloca %struct.sdw_cdns*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %6, align 8
  store %struct.sdw_defer* %2, %struct.sdw_defer** %7, align 8
  %11 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %12 = call %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus* %11)
  store %struct.sdw_cdns* %12, %struct.sdw_cdns** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %14 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %22 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %23 = call i32 @cdns_prep_msg(%struct.sdw_cdns* %21, %struct.sdw_msg* %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SDW_CMD_FAIL_OTHER, align 4
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load %struct.sdw_defer*, %struct.sdw_defer** %7, align 8
  %30 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %31 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %30, i32 0, i32 0
  store %struct.sdw_defer* %29, %struct.sdw_defer** %31, align 8
  %32 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %33 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %36 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %35, i32 0, i32 0
  %37 = load %struct.sdw_defer*, %struct.sdw_defer** %36, align 8
  %38 = getelementptr inbounds %struct.sdw_defer, %struct.sdw_defer* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.sdw_cdns*, %struct.sdw_cdns** %8, align 8
  %40 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %43 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @_cdns_xfer_msg(%struct.sdw_cdns* %39, %struct.sdw_msg* %40, i32 %41, i32 0, i32 %44, i32 1)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %28, %26, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus*) #1

declare dso_local i32 @cdns_prep_msg(%struct.sdw_cdns*, %struct.sdw_msg*, i32*) #1

declare dso_local i32 @_cdns_xfer_msg(%struct.sdw_cdns*, %struct.sdw_msg*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
