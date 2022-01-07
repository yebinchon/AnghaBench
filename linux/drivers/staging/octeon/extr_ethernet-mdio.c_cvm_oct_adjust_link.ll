; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.octeon_ethernet = type { i64, i32, i32 (%struct.net_device.0*)*, i64 }
%struct.net_device.0 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %5)
  store %struct.octeon_ethernet* %6, %struct.octeon_ethernet** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %38 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %40 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %39, i32 0, i32 2
  %41 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %40, align 8
  %42 = icmp ne i32 (%struct.net_device.0*)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %45 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %44, i32 0, i32 2
  %46 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %45, align 8
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = bitcast %struct.net_device* %47 to %struct.net_device.0*
  %49 = call i32 %46(%struct.net_device.0* %48)
  br label %50

50:                                               ; preds = %43, %1
  %51 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %52 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %50
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %67 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %69 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cvmx_helper_link_set(i32 %70, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %4)
  %72 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %73 = call i32 @cvm_oct_note_carrier(%struct.octeon_ethernet* %72, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %4)
  br label %74

74:                                               ; preds = %60, %50
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvmx_helper_link_set(i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @cvm_oct_note_carrier(%struct.octeon_ethernet*, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
