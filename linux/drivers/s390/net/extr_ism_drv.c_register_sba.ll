; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_register_sba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_register_sba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i8*, %struct.ism_sba*, %struct.TYPE_6__* }
%struct.ism_sba = type { i32 }
%struct.TYPE_6__ = type { i32 }
%union.ism_reg_sba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISM_REG_SBA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*)* @register_sba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_sba(%struct.ism_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ism_dev*, align 8
  %4 = alloca %union.ism_reg_sba, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ism_sba*, align 8
  store %struct.ism_dev* %0, %struct.ism_dev** %3, align 8
  %7 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ism_sba* @dma_alloc_coherent(i32* %10, i32 %11, i8** %5, i32 %12)
  store %struct.ism_sba* %13, %struct.ism_sba** %6, align 8
  %14 = load %struct.ism_sba*, %struct.ism_sba** %6, align 8
  %15 = icmp ne %struct.ism_sba* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = call i32 @memset(%union.ism_reg_sba* %4, i32 0, i32 16)
  %21 = load i32, i32* @ISM_REG_SBA, align 4
  %22 = bitcast %union.ism_reg_sba* %4 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = bitcast %union.ism_reg_sba* %4 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 16, i32* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast %union.ism_reg_sba* %4 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %32 = call i64 @ism_cmd(%struct.ism_dev* %31, %union.ism_reg_sba* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %19
  %35 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %36 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load %struct.ism_sba*, %struct.ism_sba** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @dma_free_coherent(i32* %38, i32 %39, %struct.ism_sba* %40, i8* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %19
  %46 = load %struct.ism_sba*, %struct.ism_sba** %6, align 8
  %47 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %48 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %47, i32 0, i32 1
  store %struct.ism_sba* %46, %struct.ism_sba** %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %51 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %34, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ism_sba* @dma_alloc_coherent(i32*, i32, i8**, i32) #1

declare dso_local i32 @memset(%union.ism_reg_sba*, i32, i32) #1

declare dso_local i64 @ism_cmd(%struct.ism_dev*, %union.ism_reg_sba*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.ism_sba*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
