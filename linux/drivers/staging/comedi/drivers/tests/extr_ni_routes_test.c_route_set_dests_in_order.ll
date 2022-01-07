; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_route_set_dests_in_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_route_set_dests_in_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_device_routes = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NI_NAMES_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_device_routes*)* @route_set_dests_in_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_set_dests_in_order(%struct.ni_device_routes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ni_device_routes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ni_device_routes* %0, %struct.ni_device_routes** %3, align 8
  %6 = load i32, i32* @NI_NAMES_BASE, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %11 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %17 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %39

26:                                               ; preds = %14
  %27 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %28 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %8

38:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
