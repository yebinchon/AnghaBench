; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_idc_req_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_idc_req_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, %struct.mbox_params }
%struct.mbox_params = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Enter!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not read MPI, resetting ASIC!\0A\00", align 1
@INTR_MASK = common dso_local global i32 0, align 4
@INTR_MASK_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_idc_req_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_idc_req_aen(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_params*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %5, i32 0, i32 3
  store %struct.mbox_params* %6, %struct.mbox_params** %4, align 8
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %8 = load i32, i32* @drv, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_err(%struct.ql_adapter* %7, i32 %8, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %14 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %13, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %16 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %17 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %15, %struct.mbox_params* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %22 = load i32, i32* @drv, align 4
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_err(%struct.ql_adapter* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %28 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %27)
  br label %41

29:                                               ; preds = %1
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %31 = load i32, i32* @INTR_MASK, align 4
  %32 = load i32, i32* @INTR_MASK_PI, align 4
  %33 = shl i32 %32, 16
  %34 = call i32 @ql_write32(%struct.ql_adapter* %30, i32 %31, i32 %33)
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 0
  %40 = call i32 @queue_delayed_work(i32 %37, i32* %39, i32 0)
  br label %41

41:                                               ; preds = %29, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_get_mb_sts(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @ql_queue_asic_error(%struct.ql_adapter*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
