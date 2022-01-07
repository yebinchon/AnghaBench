; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.parport = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%d, %lu)\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MACEPAR_CTLSTAT_RESET = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_10__* null, align 8
@parport_ip32_dma = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MACEISA_PAR_CTXA_IRQ = common dso_local global i32 0, align 4
@MACEISA_PAR_CTXB_IRQ = common dso_local global i32 0, align 4
@MACEPAR_CTLSTAT_DIRECTION = common dso_local global i32 0, align 4
@MACEPAR_CONTEXT_DATA_BOUND = common dso_local global i32 0, align 4
@MACEPAR_CTLSTAT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*, i32, i8*, i64)* @parport_ip32_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ip32_dma_start(%struct.parport* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @pr_trace(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DMA_TO_DEVICE, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @MACEPAR_CTLSTAT_RESET, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @writeq(i32 %20, i32* %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 0), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = call i32 @WARN_ON(i32 1)
  %31 = load i32, i32* @MACEISA_PAR_CTXA_IRQ, align 4
  %32 = call i32 @enable_irq(i32 %31)
  %33 = load i32, i32* @MACEISA_PAR_CTXB_IRQ, align 4
  %34 = call i32 @enable_irq(i32 %33)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 0), align 8
  br label %35

35:                                               ; preds = %29, %4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 1), align 4
  %37 = load %struct.parport*, %struct.parport** %5, align 8
  %38 = getelementptr inbounds %struct.parport, %struct.parport* %37, i32 0, i32 0
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dma_map_single(i32* %38, i8* %39, i64 %40, i32 %41)
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 2), align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 3), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 2), align 8
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 4), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 3), align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 6), align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @MACEPAR_CTLSTAT_DIRECTION, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ]
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @writeq(i32 %54, i32* %59)
  %61 = load i32, i32* @MACEPAR_CONTEXT_DATA_BOUND, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 4), align 8
  %63 = load i32, i32* @MACEPAR_CONTEXT_DATA_BOUND, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @parport_ip32_dma_setup_context(i32 %67)
  %69 = load i32, i32* @MACEPAR_CONTEXT_DATA_BOUND, align 4
  %70 = call i32 @parport_ip32_dma_setup_context(i32 %69)
  %71 = load i32, i32* @MACEPAR_CTLSTAT_ENABLE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @writeq(i32 %74, i32* %79)
  ret i32 0
}

declare dso_local i32 @pr_trace(i32*, i8*, i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i64, i32) #1

declare dso_local i32 @parport_ip32_dma_setup_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
