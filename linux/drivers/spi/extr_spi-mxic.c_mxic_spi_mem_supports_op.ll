; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_mem_supports_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_mem_supports_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @mxic_spi_mem_supports_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_spi_mem_supports_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %7 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %13 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17, %11, %2
  store i32 0, i32* %3, align 4
  br label %61

30:                                               ; preds = %23
  %31 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %32 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %38 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %44 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %48 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %61

53:                                               ; preds = %42, %36, %30
  %54 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %55 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 7
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %52, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
