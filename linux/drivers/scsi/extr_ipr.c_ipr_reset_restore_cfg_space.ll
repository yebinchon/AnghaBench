; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_restore_cfg_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_restore_cfg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.ipr_ioa_cfg* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ipr_ioa_cfg = type { i64, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@IPR_IOASC_PCI_ACCESS_ERROR = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@IPR_ENDIAN_SWAP_KEY = common dso_local global i32 0, align 4
@ipr_reset_get_unit_check_job = common dso_local global i32 0, align 4
@IPR_DUMP_DELAY_TIMEOUT = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@ipr_reset_alert = common dso_local global i32 0, align 4
@ipr_ioa_bringdown_done = common dso_local global i32 0, align 4
@GET_DUMP = common dso_local global i64 0, align 8
@ipr_dump_mailbox_wait = common dso_local global i32 0, align 4
@IPR_WAIT_FOR_MAILBOX = common dso_local global i32 0, align 4
@ipr_reset_enable_ioa = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_restore_cfg_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_restore_cfg_space(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 3
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  store %struct.ipr_ioa_cfg* %8, %struct.ipr_ioa_cfg** %4, align 8
  %9 = load i32, i32* @ENTER, align 4
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %10, i32 0, i32 5
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %14, i32 0, i32 5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = call i32 @pci_restore_state(%struct.TYPE_12__* %16)
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %19 = call i64 @ipr_set_pcix_cmd_reg(%struct.ipr_ioa_cfg* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @IPR_IOASC_PCI_ACCESS_ERROR, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %29, i32* %2, align 4
  br label %109

30:                                               ; preds = %1
  %31 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %32 = call i32 @ipr_fail_all_ops(%struct.ipr_ioa_cfg* %31)
  %33 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i32, i32* @IPR_ENDIAN_SWAP_KEY, align 4
  %39 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @writel(i32 %38, i32 %42)
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @readl(i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %37, %30
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* @ipr_reset_get_unit_check_job, align 4
  %61 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %62 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %64 = load i32, i32* @IPR_DUMP_DELAY_TIMEOUT, align 4
  %65 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %63, i32 %64)
  %66 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %66, i32* %2, align 4
  br label %109

67:                                               ; preds = %54
  %68 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %69 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %71 = call i32 @ipr_get_unit_check_buffer(%struct.ipr_ioa_cfg* %70)
  %72 = load i32, i32* @ipr_reset_alert, align 4
  %73 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %74 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %76 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %75, i32 0)
  %77 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %77, i32* %2, align 4
  br label %109

78:                                               ; preds = %49
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @ipr_ioa_bringdown_done, align 4
  %85 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %86 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %106

87:                                               ; preds = %78
  %88 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %89 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GET_DUMP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32, i32* @ipr_dump_mailbox_wait, align 4
  %95 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %96 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @IPR_WAIT_FOR_MAILBOX, align 4
  %98 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %99 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  br label %105

101:                                              ; preds = %87
  %102 = load i32, i32* @ipr_reset_enable_ioa, align 4
  %103 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %104 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %93
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* @LEAVE, align 4
  %108 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %67, %59, %21
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @pci_restore_state(%struct.TYPE_12__*) #1

declare dso_local i64 @ipr_set_pcix_cmd_reg(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_fail_all_ops(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i32) #1

declare dso_local i32 @ipr_get_unit_check_buffer(%struct.ipr_ioa_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
