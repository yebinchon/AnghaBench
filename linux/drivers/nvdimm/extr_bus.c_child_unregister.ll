; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_child_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_child_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.nvdimm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVDIMM_SECURITY_FROZEN = common dso_local global i32 0, align 4
@NDD_WORK_PENDING = common dso_local global i32 0, align 4
@ND_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @child_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_unregister(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvdimm*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i64 @is_nvdimm(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.nvdimm* @to_nvdimm(%struct.device* %18)
  store %struct.nvdimm* %19, %struct.nvdimm** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @nvdimm_bus_lock(%struct.device* %20)
  %22 = load i32, i32* @NVDIMM_SECURITY_FROZEN, align 4
  %23 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %24 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %22, i32* %25)
  %27 = load i32, i32* @NDD_WORK_PENDING, align 4
  %28 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %29 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %28, i32 0, i32 1
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @nvdimm_bus_unlock(%struct.device* %34)
  %36 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %37 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %36, i32 0, i32 0
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @put_device(%struct.device* %42)
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44, %13
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* @ND_SYNC, align 4
  %48 = call i32 @nd_device_unregister(%struct.device* %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @is_nvdimm(%struct.device*) #1

declare dso_local %struct.nvdimm* @to_nvdimm(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @nd_device_unregister(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
