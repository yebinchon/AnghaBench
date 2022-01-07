; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irq_generate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irq_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i32, i32, i64 }

@TSI148_LCSR_VICR = common dso_local global i64 0, align 8
@TSI148_LCSR_VICR_STID_M = common dso_local global i32 0, align 4
@TSI148_LCSR_VICR_IRQL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, i32, i32)* @tsi148_irq_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_irq_generate(%struct.vme_bridge* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vme_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vme_bridge*, %struct.vme_bridge** %4, align 8
  %10 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %9, i32 0, i32 0
  %11 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  store %struct.tsi148_driver* %11, %struct.tsi148_driver** %8, align 8
  %12 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %13 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %16 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSI148_LCSR_VICR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32be(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TSI148_LCSR_VICR_STID_M, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TSI148_LCSR_VICR_STID_M, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %31 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TSI148_LCSR_VICR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32be(i32 %29, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** @TSI148_LCSR_VICR_IRQL, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %45 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TSI148_LCSR_VICR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @iowrite32be(i32 %43, i64 %48)
  %50 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %51 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %54 = call i32 @tsi148_iack_received(%struct.tsi148_driver* %53)
  %55 = call i32 @wait_event_interruptible(i32 %52, i32 %54)
  %56 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %57 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @tsi148_iack_received(%struct.tsi148_driver*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
