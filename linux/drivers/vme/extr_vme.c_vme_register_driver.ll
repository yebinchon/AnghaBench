; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/extr_vme.c_vme_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/extr_vme.c_vme_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_driver = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@vme_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vme_register_driver(%struct.vme_driver* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vme_driver* %0, %struct.vme_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %8 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %11 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %14 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32* @vme_bus_type, i32** %15, align 8
  %16 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %17 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %20 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %19, i32 0, i32 0
  %21 = call i32 @driver_register(%struct.TYPE_3__* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @__vme_register_driver(%struct.vme_driver* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.vme_driver*, %struct.vme_driver** %4, align 8
  %34 = getelementptr inbounds %struct.vme_driver, %struct.vme_driver* %33, i32 0, i32 0
  %35 = call i32 @driver_unregister(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @driver_register(%struct.TYPE_3__*) #1

declare dso_local i32 @__vme_register_driver(%struct.vme_driver*, i32) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
