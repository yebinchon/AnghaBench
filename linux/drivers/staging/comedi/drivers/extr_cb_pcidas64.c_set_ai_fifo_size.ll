; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_set_ai_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_board* }
%struct.pcidas64_board = type { %struct.hw_fifo_info* }
%struct.hw_fifo_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @set_ai_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ai_fifo_size(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcidas64_board*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw_fifo_info*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.pcidas64_board*, %struct.pcidas64_board** %11, align 8
  store %struct.pcidas64_board* %12, %struct.pcidas64_board** %6, align 8
  %13 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %14 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %13, i32 0, i32 0
  %15 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %14, align 8
  store %struct.hw_fifo_info* %15, %struct.hw_fifo_info** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %9, align 8
  %18 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = udiv i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %9, align 8
  %24 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %22, %25
  %27 = call i32 @set_ai_fifo_segment_length(%struct.comedi_device* %21, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %9, align 8
  %35 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %33, %36
  %38 = load %struct.hw_fifo_info*, %struct.hw_fifo_info** %9, align 8
  %39 = getelementptr inbounds %struct.hw_fifo_info, %struct.hw_fifo_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %37, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @set_ai_fifo_segment_length(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
