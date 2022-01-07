; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_qup = type { i64, i32, i64, i32, i64 }

@QUP_IO_M_MODE_BLOCK = common dso_local global i64 0, align 8
@QUP_OP_IN_SERVICE_FLAG = common dso_local global i32 0, align 4
@QUP_OPERATIONAL = common dso_local global i64 0, align 8
@QUP_OP_IN_FIFO_NOT_EMPTY = common dso_local global i32 0, align 4
@QUP_OP_IN_BLOCK_READ_REQ = common dso_local global i32 0, align 4
@QUP_OP_MAX_INPUT_DONE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_qup*, i32*)* @spi_qup_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_qup_read(%struct.spi_qup* %0, i32* %1) #0 {
  %3 = alloca %struct.spi_qup*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_qup* %0, %struct.spi_qup** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %10 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QUP_IO_M_MODE_BLOCK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %16 = call i64 @spi_qup_len(%struct.spi_qup* %15)
  %17 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %18 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %22 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DIV_ROUND_UP(i64 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %26 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %76, %2
  %30 = load i32, i32* @QUP_OP_IN_SERVICE_FLAG, align 4
  %31 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %32 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QUP_OPERATIONAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %80

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %7, align 4
  br label %60

53:                                               ; preds = %40
  %54 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %55 = load i32, i32* @QUP_OP_IN_FIFO_NOT_EMPTY, align 4
  %56 = call i32 @spi_qup_is_flag_set(%struct.spi_qup* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %79

59:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @spi_qup_read_from_fifo(%struct.spi_qup* %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %71 = load i32, i32* @QUP_OP_IN_BLOCK_READ_REQ, align 4
  %72 = call i32 @spi_qup_is_flag_set(%struct.spi_qup* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %79

75:                                               ; preds = %69, %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %29, label %79

79:                                               ; preds = %76, %74, %58
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  %84 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %85 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @QUP_OPERATIONAL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl_relaxed(i64 %88)
  %90 = load i32*, i32** %4, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %83
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @QUP_OP_MAX_INPUT_DONE_FLAG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i32, i32* @QUP_OP_IN_SERVICE_FLAG, align 4
  %101 = load %struct.spi_qup*, %struct.spi_qup** %3, align 8
  %102 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @QUP_OPERATIONAL, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel_relaxed(i32 %100, i64 %105)
  br label %107

107:                                              ; preds = %99, %93, %83
  br label %108

108:                                              ; preds = %107, %80
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @spi_qup_len(%struct.spi_qup*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spi_qup_is_flag_set(%struct.spi_qup*, i32) #1

declare dso_local i32 @spi_qup_read_from_fifo(%struct.spi_qup*, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
