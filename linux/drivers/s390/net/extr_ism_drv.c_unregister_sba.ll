; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_unregister_sba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_unregister_sba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISM_UNREG_SBA = common dso_local global i32 0, align 4
@ISM_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*)* @unregister_sba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_sba(%struct.ism_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ism_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ism_dev* %0, %struct.ism_dev** %3, align 8
  %5 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %12 = load i32, i32* @ISM_UNREG_SBA, align 4
  %13 = call i32 @ism_cmd_simple(%struct.ism_dev* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ISM_ERROR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %16, %10
  %24 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %30 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %33 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dma_free_coherent(i32* %27, i32 %28, i32* %31, i64 %34)
  %36 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %37 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %39 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %23, %20, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ism_cmd_simple(%struct.ism_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
