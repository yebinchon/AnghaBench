; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_free_coherent_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_free_coherent_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_6__**, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i64, i32*, i64 }
%struct.gasket_driver_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_free_coherent_memory(%struct.gasket_dev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %12 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %88

21:                                               ; preds = %4
  %22 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %23 = call %struct.gasket_driver_desc* @gasket_get_driver_desc(%struct.gasket_dev* %22)
  store %struct.gasket_driver_desc* %23, %struct.gasket_driver_desc** %10, align 8
  %24 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  %25 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EADDRNOTAVAIL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %88

33:                                               ; preds = %21
  %34 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %35 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %41 = call i32 @gasket_get_device(%struct.gasket_dev* %40)
  %42 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %43 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %47 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %51 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dma_free_coherent(i32 %41, i64 %45, i32* %49, i64 %53)
  %55 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %56 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %59 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %62 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %39, %33
  %65 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %66 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %75 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %82 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %64, %30, %18
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.gasket_driver_desc* @gasket_get_driver_desc(%struct.gasket_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i64) #1

declare dso_local i32 @gasket_get_device(%struct.gasket_dev*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
