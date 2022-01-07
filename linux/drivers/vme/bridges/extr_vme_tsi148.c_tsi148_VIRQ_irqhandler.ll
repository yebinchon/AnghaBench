; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_VIRQ_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_VIRQ_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_VIACK = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, i32)* @tsi148_VIRQ_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_VIRQ_irqhandler(%struct.vme_bridge* %0, i32 %1) #0 {
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %9, i32 0, i32 0
  %11 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  store %struct.tsi148_driver* %11, %struct.tsi148_driver** %8, align 8
  store i32 7, i32* %6, align 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %23 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** @TSI148_LCSR_VIACK, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = add nsw i64 %30, 3
  %32 = call i32 @ioread8(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @vme_irq_handler(%struct.vme_bridge* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %21, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @vme_irq_handler(%struct.vme_bridge*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
