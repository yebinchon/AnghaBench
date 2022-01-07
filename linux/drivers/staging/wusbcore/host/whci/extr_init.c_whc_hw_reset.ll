; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_init.c_whc_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_init.c_whc_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WUSBCMD_WHCRESET = common dso_local global i32 0, align 4
@WUSBCMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc*)* @whc_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whc_hw_reset(%struct.whc* %0) #0 {
  %2 = alloca %struct.whc*, align 8
  store %struct.whc* %0, %struct.whc** %2, align 8
  %3 = load i32, i32* @WUSBCMD_WHCRESET, align 4
  %4 = load %struct.whc*, %struct.whc** %2, align 8
  %5 = getelementptr inbounds %struct.whc, %struct.whc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WUSBCMD, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @le_writel(i32 %3, i64 %8)
  %10 = load %struct.whc*, %struct.whc** %2, align 8
  %11 = getelementptr inbounds %struct.whc, %struct.whc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.whc*, %struct.whc** %2, align 8
  %15 = getelementptr inbounds %struct.whc, %struct.whc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WUSBCMD, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @WUSBCMD_WHCRESET, align 4
  %20 = call i32 @whci_wait_for(i32* %13, i64 %18, i32 %19, i32 0, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @whci_wait_for(i32*, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
