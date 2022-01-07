; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_iv = type { i32, %struct.airq_iv*, i32, i32, i32, %struct.airq_iv*, %struct.airq_iv*, %struct.airq_iv* }

@AIRQ_IV_CACHELINE = common dso_local global i32 0, align 4
@airq_iv_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @airq_iv_release(%struct.airq_iv* %0) #0 {
  %2 = alloca %struct.airq_iv*, align 8
  store %struct.airq_iv* %0, %struct.airq_iv** %2, align 8
  %3 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %4 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %3, i32 0, i32 7
  %5 = load %struct.airq_iv*, %struct.airq_iv** %4, align 8
  %6 = call i32 @kfree(%struct.airq_iv* %5)
  %7 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %8 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %7, i32 0, i32 6
  %9 = load %struct.airq_iv*, %struct.airq_iv** %8, align 8
  %10 = call i32 @kfree(%struct.airq_iv* %9)
  %11 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %12 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %11, i32 0, i32 5
  %13 = load %struct.airq_iv*, %struct.airq_iv** %12, align 8
  %14 = call i32 @kfree(%struct.airq_iv* %13)
  %15 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %16 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AIRQ_IV_CACHELINE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @airq_iv_cache, align 4
  %23 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %24 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %27 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_pool_free(i32 %22, i32 %25, i32 %28)
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %32 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %35 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iv_size(i32 %36)
  %38 = call i32 @cio_dma_free(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %41 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %40, i32 0, i32 1
  %42 = load %struct.airq_iv*, %struct.airq_iv** %41, align 8
  %43 = call i32 @kfree(%struct.airq_iv* %42)
  %44 = load %struct.airq_iv*, %struct.airq_iv** %2, align 8
  %45 = call i32 @kfree(%struct.airq_iv* %44)
  ret void
}

declare dso_local i32 @kfree(%struct.airq_iv*) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @cio_dma_free(i32, i32) #1

declare dso_local i32 @iv_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
