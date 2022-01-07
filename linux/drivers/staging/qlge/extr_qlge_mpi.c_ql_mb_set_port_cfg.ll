; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_mb_set_port_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_mb_set_port_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }
%struct.mbox_params = type { i32, i32, i64*, i32* }

@MB_CMD_SET_PORT_CFG = common dso_local global i32 0, align 4
@MB_CMD_STS_INTRMDT = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Port Config sent, wait for IDC.\0A\00", align 1
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed Set Port Configuration.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_mb_set_port_cfg(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.mbox_params, align 8
  %5 = alloca %struct.mbox_params*, align 8
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.mbox_params* %4, %struct.mbox_params** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %8 = call i32 @memset(%struct.mbox_params* %7, i32 0, i32 24)
  %9 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %10 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %9, i32 0, i32 0
  store i32 3, i32* %10, align 8
  %11 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %12 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @MB_CMD_SET_PORT_CFG, align 4
  %14 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %15 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %22 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %29 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %34 = call i32 @ql_mailbox_command(%struct.ql_adapter* %32, %struct.mbox_params* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %74

39:                                               ; preds = %1
  %40 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %41 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MB_CMD_STS_INTRMDT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @drv, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netif_err(%struct.ql_adapter* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %72

54:                                               ; preds = %39
  %55 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %56 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %64 = load i32, i32* @drv, align 4
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_err(%struct.ql_adapter* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %62, %54
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %37
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.mbox_params*, i32, i32) #1

declare dso_local i32 @ql_mailbox_command(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
