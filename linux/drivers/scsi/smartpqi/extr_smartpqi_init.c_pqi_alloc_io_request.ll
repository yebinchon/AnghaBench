; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_io_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_io_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { i32 }
%struct.pqi_ctrl_info = type { i64, i64, %struct.pqi_io_request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pqi_io_request* (%struct.pqi_ctrl_info*)* @pqi_alloc_io_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pqi_io_request* @pqi_alloc_io_request(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca %struct.pqi_io_request*, align 8
  %4 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %1, %19
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %10 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %9, i32 0, i32 2
  %11 = load %struct.pqi_io_request*, %struct.pqi_io_request** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %11, i64 %12
  store %struct.pqi_io_request* %13, %struct.pqi_io_request** %3, align 8
  %14 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %15 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc_return(i32* %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %29

19:                                               ; preds = %8
  %20 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %21 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %26 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %24, %27
  store i64 %28, i64* %4, align 8
  br label %8

29:                                               ; preds = %18
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %31, %34
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %37 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %39 = call i32 @pqi_reinit_io_request(%struct.pqi_io_request* %38)
  %40 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  ret %struct.pqi_io_request* %40
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pqi_reinit_io_request(%struct.pqi_io_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
