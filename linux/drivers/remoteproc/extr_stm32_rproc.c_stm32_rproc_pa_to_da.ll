; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_pa_to_da.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_pa_to_da.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.TYPE_2__, %struct.stm32_rproc* }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_rproc = type { i32, %struct.stm32_rproc_mem* }
%struct.stm32_rproc_mem = type { i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"pa %pa to da %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, i64, i64*)* @stm32_rproc_pa_to_da to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_pa_to_da(%struct.rproc* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_rproc*, align 8
  %10 = alloca %struct.stm32_rproc_mem*, align 8
  store %struct.rproc* %0, %struct.rproc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.rproc*, %struct.rproc** %5, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 1
  %13 = load %struct.stm32_rproc*, %struct.stm32_rproc** %12, align 8
  store %struct.stm32_rproc* %13, %struct.stm32_rproc** %9, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %61, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.stm32_rproc*, %struct.stm32_rproc** %9, align 8
  %17 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %14
  %21 = load %struct.stm32_rproc*, %struct.stm32_rproc** %9, align 8
  %22 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %21, i32 0, i32 1
  %23 = load %struct.stm32_rproc_mem*, %struct.stm32_rproc_mem** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.stm32_rproc_mem, %struct.stm32_rproc_mem* %23, i64 %25
  store %struct.stm32_rproc_mem* %26, %struct.stm32_rproc_mem** %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.stm32_rproc_mem*, %struct.stm32_rproc_mem** %10, align 8
  %29 = getelementptr inbounds %struct.stm32_rproc_mem, %struct.stm32_rproc_mem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.stm32_rproc_mem*, %struct.stm32_rproc_mem** %10, align 8
  %35 = getelementptr inbounds %struct.stm32_rproc_mem, %struct.stm32_rproc_mem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.stm32_rproc_mem*, %struct.stm32_rproc_mem** %10, align 8
  %38 = getelementptr inbounds %struct.stm32_rproc_mem, %struct.stm32_rproc_mem* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = icmp sge i64 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32, %20
  br label %61

43:                                               ; preds = %32
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.stm32_rproc_mem*, %struct.stm32_rproc_mem** %10, align 8
  %46 = getelementptr inbounds %struct.stm32_rproc_mem, %struct.stm32_rproc_mem* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.stm32_rproc_mem*, %struct.stm32_rproc_mem** %10, align 8
  %50 = getelementptr inbounds %struct.stm32_rproc_mem, %struct.stm32_rproc_mem* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.rproc*, %struct.rproc** %5, align 8
  %55 = getelementptr inbounds %struct.rproc, %struct.rproc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %6, i64 %59)
  store i32 0, i32* %4, align 4
  br label %67

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %14

64:                                               ; preds = %14
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %43
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @dev_dbg(i32, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
