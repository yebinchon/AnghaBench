; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_dma_disarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_dma_disarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32, %struct.mite* }
%struct.mite = type { i64 }

@CHOR_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_dma_disarm(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca %struct.mite*, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %4 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %5 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %4, i32 0, i32 1
  %6 = load %struct.mite*, %struct.mite** %5, align 8
  store %struct.mite* %6, %struct.mite** %3, align 8
  %7 = load i32, i32* @CHOR_ABORT, align 4
  %8 = load %struct.mite*, %struct.mite** %3, align 8
  %9 = getelementptr inbounds %struct.mite, %struct.mite* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %12 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @MITE_CHOR(i32 %13)
  %15 = add nsw i64 %10, %14
  %16 = call i32 @writel(i32 %7, i64 %15)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
