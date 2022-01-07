; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmf_reenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cmf.c_cmf_reenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*)* }
%struct.ccw_device = type { i32 }

@cmbops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmf_reenable(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmbops, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %4, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = call i32 %5(%struct.ccw_device* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmbops, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*, i32)** %9, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = call i32 %10(%struct.ccw_device* %11, i32 2)
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
