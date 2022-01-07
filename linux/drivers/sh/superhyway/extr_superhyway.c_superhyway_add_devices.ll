; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/superhyway/extr_superhyway.c_superhyway_add_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/superhyway/extr_superhyway.c_superhyway_add_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superhyway_bus = type { i32 }
%struct.superhyway_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @superhyway_add_devices(%struct.superhyway_bus* %0, %struct.superhyway_device** %1, i32 %2) #0 {
  %4 = alloca %struct.superhyway_bus*, align 8
  %5 = alloca %struct.superhyway_device**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.superhyway_device*, align 8
  store %struct.superhyway_bus* %0, %struct.superhyway_bus** %4, align 8
  store %struct.superhyway_device** %1, %struct.superhyway_device*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.superhyway_device**, %struct.superhyway_device*** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.superhyway_device*, %struct.superhyway_device** %15, i64 %17
  %19 = load %struct.superhyway_device*, %struct.superhyway_device** %18, align 8
  store %struct.superhyway_device* %19, %struct.superhyway_device** %9, align 8
  %20 = load %struct.superhyway_device*, %struct.superhyway_device** %9, align 8
  %21 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.superhyway_device*, %struct.superhyway_device** %9, align 8
  %27 = load %struct.superhyway_bus*, %struct.superhyway_bus** %4, align 8
  %28 = call i32 @superhyway_add_device(i32 %25, %struct.superhyway_device* %26, %struct.superhyway_bus* %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @superhyway_add_device(i32, %struct.superhyway_device*, %struct.superhyway_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
