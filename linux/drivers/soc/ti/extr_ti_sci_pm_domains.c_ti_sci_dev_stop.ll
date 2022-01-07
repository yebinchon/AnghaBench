; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_dev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sci_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ti_sci_handle.0*, i32)* }
%struct.ti_sci_handle.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ti_sci_dev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_dev_stop(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ti_sci_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ti_sci_handle* @ti_sci_dev_to_sci_handle(%struct.device* %5)
  store %struct.ti_sci_handle* %6, %struct.ti_sci_handle** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @ti_sci_dev_id(%struct.device* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %10 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ti_sci_handle.0*, i32)*, i32 (%struct.ti_sci_handle.0*, i32)** %12, align 8
  %14 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %15 = bitcast %struct.ti_sci_handle* %14 to %struct.ti_sci_handle.0*
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %13(%struct.ti_sci_handle.0* %15, i32 %16)
  ret i32 %17
}

declare dso_local %struct.ti_sci_handle* @ti_sci_dev_to_sci_handle(%struct.device*) #1

declare dso_local i32 @ti_sci_dev_id(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
