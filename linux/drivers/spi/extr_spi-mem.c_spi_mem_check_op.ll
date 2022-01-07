; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_check_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_check_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_op = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem_op*)* @spi_mem_check_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_mem_check_op(%struct.spi_mem_op* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_mem_op*, align 8
  store %struct.spi_mem_op* %0, %struct.spi_mem_op** %3, align 8
  %4 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %5 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %83

12:                                               ; preds = %1
  %13 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %14 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %20 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %18, %12
  %25 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %26 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %32 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30, %24
  %37 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %38 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %44 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42, %30, %18
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %83

51:                                               ; preds = %42, %36
  %52 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %53 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @spi_mem_buswidth_is_valid(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %51
  %59 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %60 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @spi_mem_buswidth_is_valid(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %67 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @spi_mem_buswidth_is_valid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.spi_mem_op*, %struct.spi_mem_op** %3, align 8
  %74 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @spi_mem_buswidth_is_valid(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72, %65, %58, %51
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %79, %48, %9
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @spi_mem_buswidth_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
