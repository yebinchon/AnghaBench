; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.lpfc_vport*, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"2851 Attempt link reset\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"2852 Failed to allocate mbox memory\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HC_LAINT_ENA = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"2853 Failed to issue INIT_LINK mbox command, rc:x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_link_reset(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 0
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %4, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = load i32, i32* @KERN_ERR, align 4
  %13 = load i32, i32* @LOG_ELS, align 4
  %14 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_8__* @mempool_alloc(i32 %17, i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load i32, i32* @LOG_MBOX, align 4
  %26 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %101

27:                                               ; preds = %1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LPFC_SLI_REV3, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 4
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @readl(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @HC_LAINT_ENA, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @writel(i32 %50, i32 %53)
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @readl(i32 %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 4
  %61 = call i32 @spin_unlock_irq(i32* %60)
  br label %62

62:                                               ; preds = %33, %27
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lpfc_init_link(%struct.lpfc_hba* %63, %struct.TYPE_8__* %64, i32 %67, i32 %70)
  %72 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store %struct.lpfc_vport* %75, %struct.lpfc_vport** %77, align 8
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = load i32, i32* @MBX_NOWAIT, align 4
  %81 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %78, %struct.TYPE_8__* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @MBX_BUSY, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %62
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @MBX_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* @LOG_MBOX, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @mempool_free(%struct.TYPE_8__* %95, i32 %98)
  store i32 1, i32* %2, align 4
  br label %101

100:                                              ; preds = %85, %62
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %89, %22
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
