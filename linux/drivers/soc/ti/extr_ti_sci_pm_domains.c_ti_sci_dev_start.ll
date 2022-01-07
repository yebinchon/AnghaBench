; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_dev_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_dev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sci_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ti_sci_handle.0*, i32)*, i32 (%struct.ti_sci_handle.1*, i32)* }
%struct.ti_sci_handle.0 = type opaque
%struct.ti_sci_handle.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ti_sci_dev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_dev_start(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ti_sci_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ti_sci_handle* @ti_sci_dev_to_sci_handle(%struct.device* %6)
  store %struct.ti_sci_handle* %7, %struct.ti_sci_handle** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @ti_sci_dev_id(%struct.device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @is_ti_sci_dev_exclusive(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %15 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ti_sci_handle.0*, i32)*, i32 (%struct.ti_sci_handle.0*, i32)** %17, align 8
  %19 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %20 = bitcast %struct.ti_sci_handle* %19 to %struct.ti_sci_handle.0*
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %18(%struct.ti_sci_handle.0* %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %25 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (%struct.ti_sci_handle.1*, i32)*, i32 (%struct.ti_sci_handle.1*, i32)** %27, align 8
  %29 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %30 = bitcast %struct.ti_sci_handle* %29 to %struct.ti_sci_handle.1*
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %28(%struct.ti_sci_handle.1* %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %23, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ti_sci_handle* @ti_sci_dev_to_sci_handle(%struct.device*) #1

declare dso_local i32 @ti_sci_dev_id(%struct.device*) #1

declare dso_local i64 @is_ti_sci_dev_exclusive(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
