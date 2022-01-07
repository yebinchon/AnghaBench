; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_route_set_sources_in_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_route_set_sources_in_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_device_routes = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@NI_NAMES_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_set_sources_in_order(%struct.ni_device_routes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ni_device_routes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ni_device_routes* %0, %struct.ni_device_routes** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %10 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %7
  %14 = load i32, i32* @NI_NAMES_BASE, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %56, %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %19 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %17, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %30 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %28, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %64

43:                                               ; preds = %27
  %44 = load %struct.ni_device_routes*, %struct.ni_device_routes** %3, align 8
  %45 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %16

59:                                               ; preds = %16
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %7

63:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
