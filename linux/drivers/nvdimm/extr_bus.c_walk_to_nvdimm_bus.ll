; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_walk_to_nvdimm_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_walk_to_nvdimm_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i32 }
%struct.device = type { %struct.device* }

@.str = private unnamed_addr constant [28 x i8] c"invalid dev, not on nd bus\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %0) #0 {
  %2 = alloca %struct.nvdimm_bus*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  store %struct.device* %5, %struct.device** %4, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i64 @is_nvdimm_bus(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %4, align 8
  br label %6

19:                                               ; preds = %13, %6
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = icmp ne %struct.device* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @dev_WARN_ONCE(%struct.device* %20, i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device* %29)
  store %struct.nvdimm_bus* %30, %struct.nvdimm_bus** %2, align 8
  br label %32

31:                                               ; preds = %19
  store %struct.nvdimm_bus* null, %struct.nvdimm_bus** %2, align 8
  br label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %2, align 8
  ret %struct.nvdimm_bus* %33
}

declare dso_local i64 @is_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @dev_WARN_ONCE(%struct.device*, i32, i8*) #1

declare dso_local %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
