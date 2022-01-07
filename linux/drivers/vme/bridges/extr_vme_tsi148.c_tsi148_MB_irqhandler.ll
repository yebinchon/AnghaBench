; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_MB_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_MB_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_INTS_MBS = common dso_local global i32* null, align 8
@TSI148_GCSR_MBOX = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"VME Mailbox %d received: 0x%x\0A\00", align 1
@TSI148_LCSR_INTC_MBC = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, i32)* @tsi148_MB_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_MB_irqhandler(%struct.vme_bridge* %0, i32 %1) #0 {
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
  %10 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %9, i32 0, i32 1
  %11 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  store %struct.tsi148_driver* %11, %struct.tsi148_driver** %8, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** @TSI148_LCSR_INTS_MBS, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %15
  %25 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %26 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** @TSI148_GCSR_MBOX, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %27, %32
  %34 = call i32 @ioread32be(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %36 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32*, i32** @TSI148_LCSR_INTC_MBC, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %24, %15
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
