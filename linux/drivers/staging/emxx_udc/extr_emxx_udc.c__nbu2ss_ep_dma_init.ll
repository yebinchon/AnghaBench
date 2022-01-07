; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nbu2ss_ep = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@USB_DIR_OUT = common dso_local global i64 0, align 8
@DCR1_EPN_DIR0 = common dso_local global i32 0, align 4
@EPN_STOP_MODE = common dso_local global i32 0, align 4
@EPN_STOP_SET = common dso_local global i32 0, align 4
@EPN_DMAMODE0 = common dso_local global i32 0, align 4
@EPN_AUTO = common dso_local global i32 0, align 4
@EPN_BURST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*)* @_nbu2ss_ep_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_ep_dma_init(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1) #0 {
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca %struct.nbu2ss_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %3, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %4, align 8
  %7 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %8 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = call i32 @_nbu2ss_readl(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %19 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = and i32 %17, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  br label %105

25:                                               ; preds = %16
  %26 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %27 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %31 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_DIR_OUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %25
  %36 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %37 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %41 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @_nbu2ss_writel(i32* %48, i32 %49)
  %51 = load i32, i32* @DCR1_EPN_DIR0, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %53 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @_nbu2ss_bitset(i32* %60, i32 %61)
  %63 = load i32, i32* @EPN_STOP_MODE, align 4
  %64 = load i32, i32* @EPN_STOP_SET, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @EPN_DMAMODE0, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %69 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @_nbu2ss_writel(i32* %76, i32 %77)
  br label %105

79:                                               ; preds = %25
  %80 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %81 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* @EPN_AUTO, align 4
  %90 = call i32 @_nbu2ss_bitset(i32* %88, i32 %89)
  %91 = load i32, i32* @EPN_BURST_SET, align 4
  %92 = load i32, i32* @EPN_DMAMODE0, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %6, align 4
  %94 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %95 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @_nbu2ss_writel(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %24, %79, %35
  ret void
}

declare dso_local i32 @_nbu2ss_readl(i32*) #1

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
