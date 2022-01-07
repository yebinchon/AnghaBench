; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_dt_free_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_devicetree.c_dt_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinctrl_ops* }
%struct.pinctrl_ops = type { i32 (%struct.pinctrl_dev.0*, %struct.pinctrl_map*, i32)* }
%struct.pinctrl_dev.0 = type opaque
%struct.pinctrl_map = type opaque
%struct.pinctrl_map.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_map.1*, i32)* @dt_free_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_free_map(%struct.pinctrl_dev* %0, %struct.pinctrl_map.1* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_map.1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_ops*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_map.1* %1, %struct.pinctrl_map.1** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %9 = icmp ne %struct.pinctrl_dev* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %14, align 8
  store %struct.pinctrl_ops* %15, %struct.pinctrl_ops** %7, align 8
  %16 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %7, align 8
  %17 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.pinctrl_dev.0*, %struct.pinctrl_map*, i32)*, i32 (%struct.pinctrl_dev.0*, %struct.pinctrl_map*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.pinctrl_dev.0*, %struct.pinctrl_map*, i32)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = load %struct.pinctrl_ops*, %struct.pinctrl_ops** %7, align 8
  %22 = getelementptr inbounds %struct.pinctrl_ops, %struct.pinctrl_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.pinctrl_dev.0*, %struct.pinctrl_map*, i32)*, i32 (%struct.pinctrl_dev.0*, %struct.pinctrl_map*, i32)** %22, align 8
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %25 = bitcast %struct.pinctrl_dev* %24 to %struct.pinctrl_dev.0*
  %26 = load %struct.pinctrl_map.1*, %struct.pinctrl_map.1** %5, align 8
  %27 = bitcast %struct.pinctrl_map.1* %26 to %struct.pinctrl_map*
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %23(%struct.pinctrl_dev.0* %25, %struct.pinctrl_map* %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %10
  br label %34

31:                                               ; preds = %3
  %32 = load %struct.pinctrl_map.1*, %struct.pinctrl_map.1** %5, align 8
  %33 = call i32 @kfree(%struct.pinctrl_map.1* %32)
  br label %34

34:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @kfree(%struct.pinctrl_map.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
