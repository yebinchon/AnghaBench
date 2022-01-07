; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_error_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_error_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_alloc_error_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_alloc_error_buffer(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %4 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %5 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %12 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %11, i32 0, i32 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @dma_alloc_coherent(i32* %7, i32 %10, i32* %12, i32 %13)
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
