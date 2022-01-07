; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }
%struct.mvs_wq = type { i32, i32, i32, i8*, %struct.mvs_info* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@mvs_work_queue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, i8*, i32)* @mvs_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_handle_event(%struct.mvs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvs_wq*, align 8
  %8 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.mvs_wq* @kmalloc(i32 32, i32 %9)
  store %struct.mvs_wq* %10, %struct.mvs_wq** %7, align 8
  %11 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %12 = icmp ne %struct.mvs_wq* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %15 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %16 = getelementptr inbounds %struct.mvs_wq, %struct.mvs_wq* %15, i32 0, i32 4
  store %struct.mvs_info* %14, %struct.mvs_info** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %19 = getelementptr inbounds %struct.mvs_wq, %struct.mvs_wq* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %22 = getelementptr inbounds %struct.mvs_wq, %struct.mvs_wq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %24 = getelementptr inbounds %struct.mvs_wq, %struct.mvs_wq* %23, i32 0, i32 1
  %25 = load i32, i32* @mvs_work_queue, align 4
  %26 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %27 = call i32 @MV_INIT_DELAYED_WORK(i32* %24, i32 %25, %struct.mvs_wq* %26)
  %28 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %29 = getelementptr inbounds %struct.mvs_wq, %struct.mvs_wq* %28, i32 0, i32 2
  %30 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %31 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.mvs_wq*, %struct.mvs_wq** %7, align 8
  %34 = getelementptr inbounds %struct.mvs_wq, %struct.mvs_wq* %33, i32 0, i32 1
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @schedule_delayed_work(i32* %34, i32 %36)
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %13
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.mvs_wq* @kmalloc(i32, i32) #1

declare dso_local i32 @MV_INIT_DELAYED_WORK(i32*, i32, %struct.mvs_wq*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
