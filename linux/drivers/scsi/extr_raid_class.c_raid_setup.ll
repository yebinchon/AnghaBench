; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_raid_class.c_raid_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_raid_class.c_raid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport_container = type { i32 }
%struct.device = type { i32 }
%struct.raid_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @raid_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_setup(%struct.transport_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport_container*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.raid_data*, align 8
  store %struct.transport_container* %0, %struct.transport_container** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load %struct.device*, %struct.device** %7, align 8
  %10 = call i32 @dev_get_drvdata(%struct.device* %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.raid_data* @kzalloc(i32 4, i32 %12)
  store %struct.raid_data* %13, %struct.raid_data** %8, align 8
  %14 = load %struct.raid_data*, %struct.raid_data** %8, align 8
  %15 = icmp ne %struct.raid_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.raid_data*, %struct.raid_data** %8, align 8
  %21 = getelementptr inbounds %struct.raid_data, %struct.raid_data* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.raid_data*, %struct.raid_data** %8, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.raid_data* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.raid_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.raid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
