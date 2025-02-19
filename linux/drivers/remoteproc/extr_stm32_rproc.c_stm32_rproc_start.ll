; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.stm32_rproc* }
%struct.stm32_rproc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"failed to clear pdds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @stm32_rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.stm32_rproc*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load %struct.stm32_rproc*, %struct.stm32_rproc** %7, align 8
  store %struct.stm32_rproc* %8, %struct.stm32_rproc** %4, align 8
  %9 = load %struct.rproc*, %struct.rproc** %3, align 8
  %10 = call i32 @stm32_rproc_add_coredump_trace(%struct.rproc* %9)
  %11 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stm32_rproc*, %struct.stm32_rproc** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @regmap_update_bits(i64 %20, i32 %24, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = load %struct.rproc*, %struct.rproc** %3, align 8
  %34 = getelementptr inbounds %struct.rproc, %struct.rproc* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %48

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.rproc*, %struct.rproc** %3, align 8
  %40 = call i32 @stm32_rproc_set_hold_boot(%struct.rproc* %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.rproc*, %struct.rproc** %3, align 8
  %47 = call i32 @stm32_rproc_set_hold_boot(%struct.rproc* %46, i32 1)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %43, %32
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @stm32_rproc_add_coredump_trace(%struct.rproc*) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stm32_rproc_set_hold_boot(%struct.rproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
