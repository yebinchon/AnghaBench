; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_dm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_dm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.adapter.0*)* }
%struct.adapter.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_dm_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = call i64 @is_primary_adapter(%struct.adapter* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.adapter.0*)*, i32 (%struct.adapter.0*)** %9, align 8
  %11 = icmp ne i32 (%struct.adapter.0*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.adapter.0*)*, i32 (%struct.adapter.0*)** %15, align 8
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = bitcast %struct.adapter* %17 to %struct.adapter.0*
  %19 = call i32 %16(%struct.adapter.0* %18)
  br label %20

20:                                               ; preds = %12, %6
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

declare dso_local i64 @is_primary_adapter(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
