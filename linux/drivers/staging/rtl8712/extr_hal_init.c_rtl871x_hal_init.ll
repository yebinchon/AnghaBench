; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl871x_hal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl871x_hal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct._adapter.0*)* }
%struct._adapter.0 = type opaque

@_FAIL = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtl871x_hal_init(%struct._adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._adapter*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %4 = load %struct._adapter*, %struct._adapter** %3, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct._adapter.0*)*, i64 (%struct._adapter.0*)** %8, align 8
  %10 = icmp ne i64 (%struct._adapter.0*)* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @_FAIL, align 8
  store i64 %12, i64* %2, align 8
  br label %39

13:                                               ; preds = %1
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct._adapter.0*)*, i64 (%struct._adapter.0*)** %16, align 8
  %18 = load %struct._adapter*, %struct._adapter** %3, align 8
  %19 = bitcast %struct._adapter* %18 to %struct._adapter.0*
  %20 = call i64 %17(%struct._adapter.0* %19)
  %21 = load i64, i64* @_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i64, i64* @_FAIL, align 8
  store i64 %24, i64* %2, align 8
  br label %39

25:                                               ; preds = %13
  %26 = load %struct._adapter*, %struct._adapter** %3, align 8
  %27 = call i64 @rtl8712_hal_init(%struct._adapter* %26)
  %28 = load i64, i64* @_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct._adapter*, %struct._adapter** %3, align 8
  %32 = getelementptr inbounds %struct._adapter, %struct._adapter* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load %struct._adapter*, %struct._adapter** %3, align 8
  %35 = getelementptr inbounds %struct._adapter, %struct._adapter* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i64, i64* @_FAIL, align 8
  store i64 %36, i64* %2, align 8
  br label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @_SUCCESS, align 8
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %37, %33, %23, %11
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i64 @rtl8712_hal_init(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
