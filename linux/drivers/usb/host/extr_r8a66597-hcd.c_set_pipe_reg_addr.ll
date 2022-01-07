; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_set_pipe_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_set_pipe_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597_pipe = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@D0FIFO = common dso_local global i64 0, align 8
@D1FIFO = common dso_local global i64 0, align 8
@CFIFO = common dso_local global i64 0, align 8
@D0FIFOSEL = common dso_local global i64 0, align 8
@D1FIFOSEL = common dso_local global i64 0, align 8
@CFIFOSEL = common dso_local global i64 0, align 8
@D0FIFOCTR = common dso_local global i64 0, align 8
@D1FIFOCTR = common dso_local global i64 0, align 8
@CFIFOCTR = common dso_local global i64 0, align 8
@R8A66597_PIPE_NO_DMA = common dso_local global i64 0, align 8
@DCPCTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597_pipe*, i64)* @set_pipe_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pipe_reg_addr(%struct.r8a66597_pipe* %0, i64 %1) #0 {
  %3 = alloca %struct.r8a66597_pipe*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca [3 x i64], align 16
  %8 = alloca [3 x i64], align 16
  store %struct.r8a66597_pipe* %0, %struct.r8a66597_pipe** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %10 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %14 = load i64, i64* @D0FIFO, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i64, i64* @D1FIFO, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 1
  %18 = load i64, i64* @CFIFO, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %20 = load i64, i64* @D0FIFOSEL, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 1
  %22 = load i64, i64* @D1FIFOSEL, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 1
  %24 = load i64, i64* @CFIFOSEL, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %26 = load i64, i64* @D0FIFOCTR, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 1
  %28 = load i64, i64* @D1FIFOCTR, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 1
  %30 = load i64, i64* @CFIFOCTR, align 8
  store i64 %30, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @R8A66597_PIPE_NO_DMA, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i64, i64* @R8A66597_PIPE_NO_DMA, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %2
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %41 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %46 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %51 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load i32, i32* @DCPCTR, align 4
  %56 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %57 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  br label %63

58:                                               ; preds = %36
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @get_pipectr_addr(i64 %59)
  %61 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %62 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @check_bulk_or_isoc(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @get_pipetre_addr(i64 %68)
  %70 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %71 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @get_pipetrn_addr(i64 %72)
  %74 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %75 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  br label %81

76:                                               ; preds = %63
  %77 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %78 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %77, i32 0, i32 4
  store i32 0, i32* %78, align 4
  %79 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %3, align 8
  %80 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %79, i32 0, i32 3
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %67
  ret void
}

declare dso_local i32 @get_pipectr_addr(i64) #1

declare dso_local i64 @check_bulk_or_isoc(i64) #1

declare dso_local i32 @get_pipetre_addr(i64) #1

declare dso_local i32 @get_pipetrn_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
