; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.knav_queue_inst = type { i32, i32, i32 }

@ACC_DESCS_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RANGE_MULTI_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)* @knav_acc_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_acc_init_queue(%struct.knav_range_info* %0, %struct.knav_queue_inst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knav_range_info*, align 8
  %5 = alloca %struct.knav_queue_inst*, align 8
  %6 = alloca i32, align 4
  store %struct.knav_range_info* %0, %struct.knav_range_info** %4, align 8
  store %struct.knav_queue_inst* %1, %struct.knav_queue_inst** %5, align 8
  %7 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %8 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %11 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %15 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ACC_DESCS_MAX, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @devm_kcalloc(i32 %18, i32 %19, i32 4, i32 %20)
  %22 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %23 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %25 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %2
  %32 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %33 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %36 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %38 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RANGE_MULTI_QUEUE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %46 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %31
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
