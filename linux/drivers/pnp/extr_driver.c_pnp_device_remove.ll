; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_driver.c_pnp_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_driver.c_pnp_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pnp_dev = type { i64, %struct.pnp_driver* }
%struct.pnp_driver = type { i32, i32 (%struct.pnp_dev.0*)* }
%struct.pnp_dev.0 = type opaque

@PNP_DRIVER_RES_DO_NOT_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pnp_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.pnp_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pnp_dev* @to_pnp_dev(%struct.device* %5)
  store %struct.pnp_dev* %6, %struct.pnp_dev** %3, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 1
  %9 = load %struct.pnp_driver*, %struct.pnp_driver** %8, align 8
  store %struct.pnp_driver* %9, %struct.pnp_driver** %4, align 8
  %10 = load %struct.pnp_driver*, %struct.pnp_driver** %4, align 8
  %11 = icmp ne %struct.pnp_driver* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.pnp_driver*, %struct.pnp_driver** %4, align 8
  %14 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %13, i32 0, i32 1
  %15 = load i32 (%struct.pnp_dev.0*)*, i32 (%struct.pnp_dev.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.pnp_dev.0*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.pnp_driver*, %struct.pnp_driver** %4, align 8
  %19 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %18, i32 0, i32 1
  %20 = load i32 (%struct.pnp_dev.0*)*, i32 (%struct.pnp_dev.0*)** %19, align 8
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %22 = bitcast %struct.pnp_dev* %21 to %struct.pnp_dev.0*
  %23 = call i32 %20(%struct.pnp_dev.0* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 1
  store %struct.pnp_driver* null, %struct.pnp_driver** %26, align 8
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.pnp_driver*, %struct.pnp_driver** %4, align 8
  %34 = icmp ne %struct.pnp_driver* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.pnp_driver*, %struct.pnp_driver** %4, align 8
  %37 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PNP_DRIVER_RES_DO_NOT_CHANGE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35, %32
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %44 = call i32 @pnp_disable_dev(%struct.pnp_dev* %43)
  br label %45

45:                                               ; preds = %42, %35, %27
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %47 = call i32 @pnp_device_detach(%struct.pnp_dev* %46)
  ret i32 0
}

declare dso_local %struct.pnp_dev* @to_pnp_dev(%struct.device*) #1

declare dso_local i32 @pnp_disable_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_device_detach(%struct.pnp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
