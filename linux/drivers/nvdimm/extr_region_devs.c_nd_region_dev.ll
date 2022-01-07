; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { %struct.device }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @nd_region_dev(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %4 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %5 = icmp ne %struct.nd_region* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %9 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
