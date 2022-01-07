; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy_check_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@ZFCP_MAX_ERPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERP failed for remote port 0x%016Lx\0A\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*, i32)* @zfcp_erp_strategy_check_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy_check_port(%struct.zfcp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %47 [
    i32 128, label %6
    i32 130, label %12
    i32 133, label %46
    i32 131, label %46
    i32 132, label %46
    i32 129, label %46
  ]

6:                                                ; preds = %2
  %7 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %7, i32 0, i32 3
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %11 = call i32 @zfcp_erp_port_unblock(%struct.zfcp_port* %10)
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %21 = call i32 @zfcp_erp_port_block(%struct.zfcp_port* %20, i32 0)
  store i32 131, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %24 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %23, i32 0, i32 3
  %25 = call i32 @atomic_inc(i32* %24)
  %26 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %27 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %26, i32 0, i32 3
  %28 = call i32 @atomic_read(i32* %27)
  %29 = load i32, i32* @ZFCP_MAX_ERPS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %39 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %43 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %44 = call i32 @zfcp_erp_set_port_status(%struct.zfcp_port* %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %22
  br label %47

46:                                               ; preds = %2, %2, %2, %2
  br label %47

47:                                               ; preds = %2, %46, %45, %6
  %48 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %49 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %48, i32 0, i32 0
  %50 = call i32 @atomic_read(i32* %49)
  %51 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %56 = call i32 @zfcp_erp_port_block(%struct.zfcp_port* %55, i32 0)
  store i32 131, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @zfcp_erp_port_unblock(%struct.zfcp_port*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_port_block(%struct.zfcp_port*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @zfcp_erp_set_port_status(%struct.zfcp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
