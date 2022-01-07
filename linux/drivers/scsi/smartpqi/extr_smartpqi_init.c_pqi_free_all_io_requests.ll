; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_free_all_io_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_free_all_io_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i64, i32, %struct.pqi_io_request*, %struct.TYPE_2__* }
%struct.pqi_io_request = type { i32, i32, %struct.pqi_io_request* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_free_all_io_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_free_all_io_requests(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pqi_io_request*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %8 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %7, i32 0, i32 2
  %9 = load %struct.pqi_io_request*, %struct.pqi_io_request** %8, align 8
  %10 = icmp ne %struct.pqi_io_request* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %14 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %18 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %21 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %20, i32 0, i32 2
  %22 = load %struct.pqi_io_request*, %struct.pqi_io_request** %21, align 8
  store %struct.pqi_io_request* %22, %struct.pqi_io_request** %6, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %51, %12
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %26 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %31 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %30, i32 0, i32 2
  %32 = load %struct.pqi_io_request*, %struct.pqi_io_request** %31, align 8
  %33 = call i32 @kfree(%struct.pqi_io_request* %32)
  %34 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %35 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %54

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %43 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %46 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(%struct.device* %40, i64 %41, i32 %44, i32 %47)
  %49 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %50 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %49, i32 1
  store %struct.pqi_io_request* %50, %struct.pqi_io_request** %6, align 8
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %23

54:                                               ; preds = %38, %23
  %55 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %56 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %55, i32 0, i32 2
  %57 = load %struct.pqi_io_request*, %struct.pqi_io_request** %56, align 8
  %58 = call i32 @kfree(%struct.pqi_io_request* %57)
  %59 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %60 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %59, i32 0, i32 2
  store %struct.pqi_io_request* null, %struct.pqi_io_request** %60, align 8
  br label %61

61:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @kfree(%struct.pqi_io_request*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
