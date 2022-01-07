; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_maybe_swizzle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_maybe_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx150x_pinctrl = type { %struct.sx150x_device_data* }
%struct.sx150x_device_data = type { i32, i32, i64 }

@SX150X_123 = common dso_local global i64 0, align 8
@SX150X_456 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sx150x_pinctrl*, i32, i32)* @sx150x_maybe_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_maybe_swizzle(%struct.sx150x_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sx150x_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sx150x_device_data*, align 8
  store %struct.sx150x_pinctrl* %0, %struct.sx150x_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %11, align 8
  store %struct.sx150x_device_data* %12, %struct.sx150x_device_data** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %9, align 8
  %15 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %9, align 8
  %20 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %9, align 8
  %25 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SX150X_123, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %9, align 8
  %31 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SX150X_456, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 16711680
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 65280
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -16776961
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = lshr i32 %46, 8
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %35, %29, %18, %3
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
