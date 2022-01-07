; ModuleID = '/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.plat_vlynq_ops* }
%struct.plat_vlynq_ops = type { {}* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlynq_enable_device(%struct.vlynq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vlynq_device*, align 8
  %4 = alloca %struct.plat_vlynq_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.vlynq_device* %0, %struct.vlynq_device** %3, align 8
  %6 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %7 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.plat_vlynq_ops*, %struct.plat_vlynq_ops** %8, align 8
  store %struct.plat_vlynq_ops* %9, %struct.plat_vlynq_ops** %4, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %13 = call i32 @__vlynq_enable_device(%struct.vlynq_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %20 = call i32 @vlynq_setup_irq(%struct.vlynq_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.plat_vlynq_ops*, %struct.plat_vlynq_ops** %4, align 8
  %25 = getelementptr inbounds %struct.plat_vlynq_ops, %struct.plat_vlynq_ops* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.vlynq_device*)**
  %27 = load i32 (%struct.vlynq_device*)*, i32 (%struct.vlynq_device*)** %26, align 8
  %28 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %29 = call i32 %27(%struct.vlynq_device* %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %36 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @__vlynq_enable_device(%struct.vlynq_device*) #1

declare dso_local i32 @vlynq_setup_irq(%struct.vlynq_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
