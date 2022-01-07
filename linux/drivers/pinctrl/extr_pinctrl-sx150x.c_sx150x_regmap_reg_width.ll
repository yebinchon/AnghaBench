; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_regmap_reg_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_regmap_reg_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx150x_pinctrl = type { %struct.sx150x_device_data* }
%struct.sx150x_device_data = type { i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SX150X_789 = common dso_local global i64 0, align 8
@SX150X_123 = common dso_local global i64 0, align 8
@SX150X_456 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sx150x_pinctrl*, i32)* @sx150x_regmap_reg_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_regmap_reg_width(%struct.sx150x_pinctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sx150x_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sx150x_device_data*, align 8
  store %struct.sx150x_pinctrl* %0, %struct.sx150x_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %4, align 8
  %8 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %7, i32 0, i32 0
  %9 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %8, align 8
  store %struct.sx150x_device_data* %9, %struct.sx150x_device_data** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %12 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %17 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %22 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SX150X_789, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %29 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %85, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %37 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %85, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %45 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %85, label %50

50:                                               ; preds = %42, %20
  %51 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %52 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SX150X_123, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %59 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %85, label %64

64:                                               ; preds = %56, %50
  %65 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %66 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SX150X_456, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %72 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %80 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %56, %42, %34, %26
  store i32 8, i32* %3, align 4
  br label %90

86:                                               ; preds = %77, %70, %64
  %87 = load %struct.sx150x_device_data*, %struct.sx150x_device_data** %6, align 8
  %88 = getelementptr inbounds %struct.sx150x_device_data, %struct.sx150x_device_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %85, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
