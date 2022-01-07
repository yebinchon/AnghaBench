; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_fifo_segment_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_fifo_segment_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32, i32, i64 }
%struct.pcidas64_board = type { %struct.hw_fifo_info* }
%struct.hw_fifo_info = type { i32, i32 }

@set_ai_fifo_segment_length.increment_size = internal constant i32 256, align 4
@FIFO_SIZE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @set_ai_fifo_segment_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ai_fifo_segment_length(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcidas64_board*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca %struct.hw_fifo_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.pcidas64_board*, %struct.pcidas64_board** %11, align 8
  store %struct.pcidas64_board* %12, %struct.pcidas64_board** %5, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %14, align 8
  store %struct.pcidas64_private* %15, %struct.pcidas64_private** %6, align 8
  %16 = load %struct.pcidas64_board*, %struct.pcidas64_board** %5, align 8
  %17 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %16, i32 0, i32 0
  %18 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %17, align 8
  store %struct.hw_fifo_info* %18, %struct.hw_fifo_info** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ult i32 %19, 256
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 256, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %7, align 8
  %25 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %7, align 8
  %30 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @DIV_ROUND_CLOSEST(i32 %33, i32 256)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %35, 1
  %37 = xor i32 %36, -1
  %38 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %7, align 8
  %39 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %7, align 8
  %43 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %47 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %56 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %59 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FIFO_SIZE_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writew(i32 %57, i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = mul i32 %64, 256
  %66 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %67 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %69 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
