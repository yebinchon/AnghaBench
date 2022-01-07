; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_release_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_release_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32*, i32, %struct.mite* }
%struct.mite = type { i32, i64 }

@CHCR_CLR_DMA_IE = common dso_local global i32 0, align 4
@CHCR_CLR_LINKP_IE = common dso_local global i32 0, align 4
@CHCR_CLR_SAR_IE = common dso_local global i32 0, align 4
@CHCR_CLR_DONE_IE = common dso_local global i32 0, align 4
@CHCR_CLR_MRDY_IE = common dso_local global i32 0, align 4
@CHCR_CLR_DRDY_IE = common dso_local global i32 0, align 4
@CHCR_CLR_LC_IE = common dso_local global i32 0, align 4
@CHCR_CLR_CONT_RB_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_release_channel(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca %struct.mite*, align 8
  %4 = alloca i64, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %5 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %6 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %5, i32 0, i32 2
  %7 = load %struct.mite*, %struct.mite** %6, align 8
  store %struct.mite* %7, %struct.mite** %3, align 8
  %8 = load %struct.mite*, %struct.mite** %3, align 8
  %9 = getelementptr inbounds %struct.mite, %struct.mite* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %13 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %1
  %17 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %18 = call i32 @mite_dma_disarm(%struct.mite_channel* %17)
  %19 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %20 = call i32 @mite_dma_reset(%struct.mite_channel* %19)
  %21 = load i32, i32* @CHCR_CLR_DMA_IE, align 4
  %22 = load i32, i32* @CHCR_CLR_LINKP_IE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CHCR_CLR_SAR_IE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CHCR_CLR_DONE_IE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CHCR_CLR_MRDY_IE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CHCR_CLR_DRDY_IE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CHCR_CLR_LC_IE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CHCR_CLR_CONT_RB_IE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mite*, %struct.mite** %3, align 8
  %37 = getelementptr inbounds %struct.mite, %struct.mite* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %40 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @MITE_CHCR(i32 %41)
  %43 = add nsw i64 %38, %42
  %44 = call i32 @writel(i32 %35, i64 %43)
  %45 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %46 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %16, %1
  %48 = load %struct.mite*, %struct.mite** %3, align 8
  %49 = getelementptr inbounds %struct.mite, %struct.mite* %48, i32 0, i32 0
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_dma_disarm(%struct.mite_channel*) #1

declare dso_local i32 @mite_dma_reset(%struct.mite_channel*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHCR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
