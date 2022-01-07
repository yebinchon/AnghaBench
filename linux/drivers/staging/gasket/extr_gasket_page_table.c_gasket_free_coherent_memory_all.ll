; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_free_coherent_memory_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_free_coherent_memory_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_free_coherent_memory_all(%struct.gasket_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %6 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %21 = call i32 @gasket_get_device(%struct.gasket_dev* %20)
  %22 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %23 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %27 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dma_free_coherent(i32 %21, i64 %25, i32* %29, i64 %33)
  %35 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %36 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %12, %19, %13
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i64) #1

declare dso_local i32 @gasket_get_device(%struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
