; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_port_forced_strategy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_port_forced_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_port* }
%struct.zfcp_port = type { i32 }

@ZFCP_STATUS_PORT_PHYS_OPEN = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_port_forced_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_port_forced_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_port*, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 1
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  store %struct.zfcp_port* %8, %struct.zfcp_port** %4, align 8
  %9 = load %struct.zfcp_port*, %struct.zfcp_port** %4, align 8
  %10 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %9, i32 0, i32 0
  %11 = call i32 @atomic_read(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %39 [
    i32 128, label %15
    i32 131, label %30
    i32 130, label %38
    i32 129, label %38
    i32 133, label %38
    i32 132, label %38
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ZFCP_STATUS_PORT_PHYS_OPEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %27 = call i32 @zfcp_erp_port_forced_strategy_close(%struct.zfcp_erp_action* %26)
  store i32 %27, i32* %2, align 4
  br label %41

28:                                               ; preds = %20, %15
  %29 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ZFCP_STATUS_PORT_PHYS_OPEN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %1, %1, %1, %1
  br label %39

39:                                               ; preds = %1, %38, %37
  %40 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %35, %28, %25
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_port_forced_strategy_close(%struct.zfcp_erp_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
