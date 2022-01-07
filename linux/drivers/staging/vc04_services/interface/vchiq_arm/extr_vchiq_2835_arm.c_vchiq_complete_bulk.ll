; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_vchiq_complete_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_vchiq_complete_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_bulk = type { i64, i64 }
%struct.vchiq_pagelist_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_complete_bulk(%struct.vchiq_bulk* %0) #0 {
  %2 = alloca %struct.vchiq_bulk*, align 8
  store %struct.vchiq_bulk* %0, %struct.vchiq_bulk** %2, align 8
  %3 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %2, align 8
  %4 = icmp ne %struct.vchiq_bulk* %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %2, align 8
  %7 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %2, align 8
  %12 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %2, align 8
  %17 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.vchiq_pagelist_info*
  %20 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %2, align 8
  %21 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @free_pagelist(%struct.vchiq_pagelist_info* %19, i64 %22)
  br label %24

24:                                               ; preds = %15, %10, %5, %1
  ret void
}

declare dso_local i32 @free_pagelist(%struct.vchiq_pagelist_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
