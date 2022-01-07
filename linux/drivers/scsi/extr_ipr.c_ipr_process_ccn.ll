; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_process_ccn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_process_ccn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.TYPE_12__, %struct.ipr_ioa_cfg* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.ipr_hostrcb* }
%struct.ipr_hostrcb = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@IPR_IOASC_IOA_WAS_RESET = common dso_local global i64 0, align 8
@IPR_IOASC_ABORTED_CMD_TERM_BY_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Host RCB failed with IOASC: 0x%08X\0A\00", align 1
@IPR_HCAM_CDB_OP_CODE_CONFIG_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_process_ccn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_process_ccn(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_hostrcb*, align 8
  %5 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 4
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  store %struct.ipr_ioa_cfg* %8, %struct.ipr_ioa_cfg** %3, align 8
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %11, align 8
  store %struct.ipr_hostrcb* %12, %struct.ipr_hostrcb** %4, align 8
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @be32_to_cpu(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %23, i32 0, i32 1
  %25 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %26 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %24, i32* %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %1
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @IPR_IOASC_IOA_WAS_RESET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @IPR_IOASC_ABORTED_CMD_TERM_BY_HOST, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %42 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %40, %36, %32
  %48 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %49 = load i32, i32* @IPR_HCAM_CDB_OP_CODE_CONFIG_CHANGE, align 4
  %50 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %51 = call i32 @ipr_send_hcam(%struct.ipr_ioa_cfg* %48, i32 %49, %struct.ipr_hostrcb* %50)
  br label %56

52:                                               ; preds = %1
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %54 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %55 = call i32 @ipr_handle_config_change(%struct.ipr_ioa_cfg* %53, %struct.ipr_hostrcb* %54)
  br label %56

56:                                               ; preds = %52, %47
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ipr_send_hcam(%struct.ipr_ioa_cfg*, i32, %struct.ipr_hostrcb*) #1

declare dso_local i32 @ipr_handle_config_change(%struct.ipr_ioa_cfg*, %struct.ipr_hostrcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
