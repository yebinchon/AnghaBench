; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_get_rdp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_get_rdp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_rdp_context = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.lpfc_rdp_context*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"7105 failed to allocate mailbox memory\00", align 1
@lpfc_mbx_cmpl_rdp_page_a0 = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_rdp_context*)* @lpfc_get_rdp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_get_rdp_info(%struct.lpfc_hba* %0, %struct.lpfc_rdp_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_rdp_context*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_rdp_context* %1, %struct.lpfc_rdp_context** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_8__* @mempool_alloc(i32 %10, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = load i32, i32* @KERN_WARNING, align 4
  %18 = load i32, i32* @LOG_MBOX, align 4
  %19 = load i32, i32* @LOG_ELS, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i64 @lpfc_sli4_dump_page_a0(%struct.lpfc_hba* %23, %struct.TYPE_8__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %51

28:                                               ; preds = %22
  %29 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @lpfc_mbx_cmpl_rdp_page_a0, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store %struct.lpfc_rdp_context* %39, %struct.lpfc_rdp_context** %41, align 8
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* @MBX_NOWAIT, align 4
  %45 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %42, %struct.TYPE_8__* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %52

50:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %58

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mempool_free(%struct.TYPE_8__* %53, i32 %56)
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %50, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_8__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i64 @lpfc_sli4_dump_page_a0(%struct.lpfc_hba*, %struct.TYPE_8__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
