; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_disable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt282x_private* }
%struct.dt282x_private = type { %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @dt282x_disable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt282x_disable_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.dt282x_private*, align 8
  %4 = alloca %struct.comedi_isadma*, align 8
  %5 = alloca %struct.comedi_isadma_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.dt282x_private*, %struct.dt282x_private** %8, align 8
  store %struct.dt282x_private* %9, %struct.dt282x_private** %3, align 8
  %10 = load %struct.dt282x_private*, %struct.dt282x_private** %3, align 8
  %11 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %10, i32 0, i32 0
  %12 = load %struct.comedi_isadma*, %struct.comedi_isadma** %11, align 8
  store %struct.comedi_isadma* %12, %struct.comedi_isadma** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %17, i32 0, i32 0
  %19 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %19, i64 %21
  store %struct.comedi_isadma_desc* %22, %struct.comedi_isadma_desc** %5, align 8
  %23 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @comedi_isadma_disable(i32 %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %13

30:                                               ; preds = %13
  ret void
}

declare dso_local i32 @comedi_isadma_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
