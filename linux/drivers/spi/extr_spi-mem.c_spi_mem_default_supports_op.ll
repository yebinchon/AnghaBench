; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_default_supports_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_default_supports_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@SPI_MEM_NO_DATA = common dso_local global i64 0, align 8
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_mem_default_supports_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %6 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %7 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %8 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @spi_check_buswidth_req(%struct.spi_mem* %6, i32 %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @spi_check_buswidth_req(%struct.spi_mem* %21, i32 %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %68

29:                                               ; preds = %20, %14
  %30 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %31 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %37 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %38 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @spi_check_buswidth_req(%struct.spi_mem* %36, i32 %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %68

44:                                               ; preds = %35, %29
  %45 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %46 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPI_MEM_NO_DATA, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %53 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %54 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @spi_check_buswidth_req(%struct.spi_mem* %52, i32 %56, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %51, %44
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66, %43, %28, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @spi_check_buswidth_req(%struct.spi_mem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
