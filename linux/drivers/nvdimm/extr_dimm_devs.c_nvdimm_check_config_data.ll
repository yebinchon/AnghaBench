; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_check_config_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_check_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvdimm = type { i32, i32 }

@ND_CMD_GET_CONFIG_DATA = common dso_local global i32 0, align 4
@NDD_ALIASING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_check_config_data(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nvdimm*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.nvdimm* @to_nvdimm(%struct.device* %5)
  store %struct.nvdimm* %6, %struct.nvdimm** %4, align 8
  %7 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %8 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @ND_CMD_GET_CONFIG_DATA, align 4
  %13 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %14 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @NDD_ALIASING, align 4
  %19 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %20 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOTTY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.nvdimm* @to_nvdimm(%struct.device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
