; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_nvdimm_bus_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_nvdimm_bus_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { %struct.TYPE_2__, %struct.nvdimm_bus_descriptor* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.nvdimm_bus_descriptor = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvdimm_bus*)* @nvdimm_bus_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvdimm_bus_provider(%struct.nvdimm_bus* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvdimm_bus*, align 8
  %4 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.nvdimm_bus* %0, %struct.nvdimm_bus** %3, align 8
  %6 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %7 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %6, i32 0, i32 1
  %8 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %7, align 8
  store %struct.nvdimm_bus_descriptor* %8, %struct.nvdimm_bus_descriptor** %4, align 8
  %9 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  %10 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i8* @dev_name(%struct.device* %25)
  store i8* %26, i8** %2, align 8
  br label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %24, %17
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
