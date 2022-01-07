; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slot_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slot_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }

@geoid = common dso_local global i32 0, align 4
@VCSR_BS = common dso_local global i64 0, align 8
@CA91CX42_VCSR_BS_SLOT_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*)* @ca91cx42_slot_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_slot_get(%struct.vme_bridge* %0) #0 {
  %2 = alloca %struct.vme_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.vme_bridge*, %struct.vme_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %5, i32 0, i32 0
  %7 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  store %struct.ca91cx42_driver* %7, %struct.ca91cx42_driver** %4, align 8
  %8 = load i32, i32* @geoid, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %4, align 8
  %12 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VCSR_BS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CA91CX42_VCSR_BS_SLOT_M, align 4
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 27
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @geoid, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
