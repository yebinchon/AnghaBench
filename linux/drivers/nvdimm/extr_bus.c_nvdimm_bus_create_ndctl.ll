; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_create_ndctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_create_ndctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i32, i32 }
%struct.device = type { i32 }

@nvdimm_bus_major = common dso_local global i32 0, align 4
@nd_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ndctl%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register ndctl%d: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_bus_create_ndctl(%struct.nvdimm_bus* %0) #0 {
  %2 = alloca %struct.nvdimm_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %2, align 8
  %5 = load i32, i32* @nvdimm_bus_major, align 4
  %6 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %7 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MKDEV(i32 %5, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @nd_class, align 4
  %11 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %12 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %15 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %16 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device* @device_create(i32 %10, i32* %12, i32 %13, %struct.nvdimm_bus* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @IS_ERR(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %24 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %23, i32 0, i32 1
  %25 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  %26 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @PTR_ERR(%struct.device* %28)
  %30 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %32)
  ret i32 %33
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, %struct.nvdimm_bus*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
