; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { {}*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*)* @wusbhc_mmc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_mmc_start(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  %3 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %4 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %5 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %8 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.wusbhc*)**
  %10 = load i32 (%struct.wusbhc*)*, i32 (%struct.wusbhc*)** %9, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %12 = call i32 %10(%struct.wusbhc* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %17 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %20 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %19, i32 0, i32 2
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
