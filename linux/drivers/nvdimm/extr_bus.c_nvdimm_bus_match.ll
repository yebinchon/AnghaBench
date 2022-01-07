; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_device_driver = type { i32 }
%struct.device = type { i32 }
%struct.device_driver = type { i32 }

@nd_bus_driver = common dso_local global %struct.nd_device_driver zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @nvdimm_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.nd_device_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %7 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %8 = call %struct.nd_device_driver* @to_nd_device_driver(%struct.device_driver* %7)
  store %struct.nd_device_driver* %8, %struct.nd_device_driver** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i64 @is_nvdimm_bus(%struct.device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.nd_device_driver*, %struct.nd_device_driver** %6, align 8
  %14 = icmp eq %struct.nd_device_driver* %13, @nd_bus_driver
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %26

16:                                               ; preds = %12, %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @to_nd_device_type(%struct.device* %17)
  %19 = load %struct.nd_device_driver*, %struct.nd_device_driver** %6, align 8
  %20 = getelementptr inbounds %struct.nd_device_driver, %struct.nd_device_driver* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.nd_device_driver* @to_nd_device_driver(%struct.device_driver*) #1

declare dso_local i64 @is_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @to_nd_device_type(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
