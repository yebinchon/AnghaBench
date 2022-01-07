; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-dev.c___uwb_dev_sys_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-dev.c___uwb_dev_sys_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev = type { %struct.device }
%struct.device = type { %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_dev*, %struct.device*)* @__uwb_dev_sys_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uwb_dev_sys_add(%struct.uwb_dev* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.uwb_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.uwb_dev* %0, %struct.uwb_dev** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  store %struct.device* %8, %struct.device** %10, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.uwb_dev*, %struct.uwb_dev** %3, align 8
  %13 = call i32 @dev_set_drvdata(%struct.device* %11, %struct.uwb_dev* %12)
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @device_add(%struct.device* %14)
  ret i32 %15
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.uwb_dev*) #1

declare dso_local i32 @device_add(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
