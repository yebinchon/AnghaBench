; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open_fsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open_fsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ZFCP_ERP_FAILED = common dso_local global i64 0, align 8
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strategy_open_fsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strategy_open_fsf(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %4 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %5 = call i64 @zfcp_erp_adapter_strat_fsf_xconf(%struct.zfcp_erp_action* %4)
  %6 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %13 = call i64 @zfcp_erp_adapter_strategy_open_fsf_xport(%struct.zfcp_erp_action* %12)
  %14 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %11
  %20 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %27 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @mempool_resize(i32 %25, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %19
  %37 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %38 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %44 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @mempool_resize(i32 %42, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %74

53:                                               ; preds = %36
  %54 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %55 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %59 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @atomic_set(i32* %57, i32 %62)
  %64 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %65 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i64 @zfcp_status_read_refill(%struct.TYPE_4__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i64, i64* @ZFCP_ERP_FAILED, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %53
  %73 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %69, %50, %33, %16, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @zfcp_erp_adapter_strat_fsf_xconf(%struct.zfcp_erp_action*) #1

declare dso_local i64 @zfcp_erp_adapter_strategy_open_fsf_xport(%struct.zfcp_erp_action*) #1

declare dso_local i64 @mempool_resize(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @zfcp_status_read_refill(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
