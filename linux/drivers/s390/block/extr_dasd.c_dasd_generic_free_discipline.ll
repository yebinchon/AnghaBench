; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_free_discipline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_free_discipline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.dasd_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_free_discipline(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %11, align 8
  %13 = icmp ne i32 (%struct.dasd_device*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %18, align 8
  %20 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %21 = call i32 %19(%struct.dasd_device* %20)
  br label %22

22:                                               ; preds = %14, %7
  %23 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @module_put(i32 %27)
  %29 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %30, align 8
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @module_put(i32 %41)
  %43 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %44, align 8
  br label %45

45:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
