; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32 }
%struct.pcidas64_board = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ai_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_fifo_size(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_board*, align 8
  %4 = alloca %struct.pcidas64_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  store %struct.pcidas64_board* %7, %struct.pcidas64_board** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.pcidas64_private*, %struct.pcidas64_private** %9, align 8
  store %struct.pcidas64_private* %10, %struct.pcidas64_private** %4, align 8
  %11 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %12 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %15 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul i32 %13, %18
  %20 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %21 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %19, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
