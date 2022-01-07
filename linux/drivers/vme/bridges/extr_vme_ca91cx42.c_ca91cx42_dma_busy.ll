; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_dma_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_dma_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@DGCS = common dso_local global i64 0, align 8
@CA91CX42_DGCS_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*)* @ca91cx42_dma_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_dma_busy(%struct.vme_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  %6 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %6, i32 0, i32 0
  %8 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  store %struct.ca91cx42_driver* %8, %struct.ca91cx42_driver** %5, align 8
  %9 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %5, align 8
  %10 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DGCS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread32(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CA91CX42_DGCS_ACT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
