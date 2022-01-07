; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_register_ieq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_register_ieq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32, i8*, %struct.ism_eq*, %struct.TYPE_6__* }
%struct.ism_eq = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.ism_reg_ieq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISM_REG_IEQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*)* @register_ieq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_ieq(%struct.ism_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ism_dev*, align 8
  %4 = alloca %union.ism_reg_ieq, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ism_eq*, align 8
  store %struct.ism_dev* %0, %struct.ism_dev** %3, align 8
  %7 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ism_eq* @dma_alloc_coherent(i32* %10, i32 %11, i8** %5, i32 %12)
  store %struct.ism_eq* %13, %struct.ism_eq** %6, align 8
  %14 = load %struct.ism_eq*, %struct.ism_eq** %6, align 8
  %15 = icmp ne %struct.ism_eq* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = call i32 @memset(%union.ism_reg_ieq* %4, i32 0, i32 24)
  %21 = load i32, i32* @ISM_REG_IEQ, align 4
  %22 = bitcast %union.ism_reg_ieq* %4 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = bitcast %union.ism_reg_ieq* %4 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast %union.ism_reg_ieq* %4 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = bitcast %union.ism_reg_ieq* %4 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %34 = call i64 @ism_cmd(%struct.ism_dev* %33, %union.ism_reg_ieq* %4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %19
  %37 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %38 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load %struct.ism_eq*, %struct.ism_eq** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @dma_free_coherent(i32* %40, i32 %41, %struct.ism_eq* %42, i8* %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %19
  %48 = load %struct.ism_eq*, %struct.ism_eq** %6, align 8
  %49 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %49, i32 0, i32 2
  store %struct.ism_eq* %48, %struct.ism_eq** %50, align 8
  %51 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %52 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %55 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %36, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ism_eq* @dma_alloc_coherent(i32*, i32, i8**, i32) #1

declare dso_local i32 @memset(%union.ism_reg_ieq*, i32, i32) #1

declare dso_local i64 @ism_cmd(%struct.ism_dev*, %union.ism_reg_ieq*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.ism_eq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
