; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_region_create_btt_seed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nd_region_create_btt_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to create btt namespace\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd_region_create_btt_seed(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.nd_region*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %2, align 8
  %3 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %4 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %3, i32 0, i32 0
  %5 = call i32 @is_nvdimm_bus_locked(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %11 = call i32 @nd_btt_create(%struct.nd_region* %10)
  %12 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %13 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %15 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %20 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_nvdimm_bus_locked(i32*) #1

declare dso_local i32 @nd_btt_create(%struct.nd_region*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
