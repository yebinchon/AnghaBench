; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nvdimm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nvdimm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i64 (%struct.nd_region*, %struct.bio*)* }
%struct.bio = type opaque
%struct.bio.0 = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_flush(%struct.nd_region* %0, %struct.bio.0* %1) #0 {
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.bio.0*, align 8
  %5 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store %struct.bio.0* %1, %struct.bio.0** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %7 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %6, i32 0, i32 0
  %8 = load i64 (%struct.nd_region*, %struct.bio*)*, i64 (%struct.nd_region*, %struct.bio*)** %7, align 8
  %9 = icmp ne i64 (%struct.nd_region*, %struct.bio*)* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %12 = call i32 @generic_nvdimm_flush(%struct.nd_region* %11)
  store i32 %12, i32* %5, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %15 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %14, i32 0, i32 0
  %16 = load i64 (%struct.nd_region*, %struct.bio*)*, i64 (%struct.nd_region*, %struct.bio*)** %15, align 8
  %17 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %18 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %19 = bitcast %struct.bio.0* %18 to %struct.bio*
  %20 = call i64 %16(%struct.nd_region* %17, %struct.bio* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %13
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @generic_nvdimm_flush(%struct.nd_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
