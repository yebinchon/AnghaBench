; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_reset_host_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_reset_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.qla_hw_data* }
%struct.TYPE_8__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.link_statistics = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for stats.\0A\00", align 1
@BIT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @qla2x00_reset_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_reset_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.link_statistics*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = call %struct.TYPE_6__* @shost_priv(%struct.Scsi_Host* %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %4, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call %struct.scsi_qla_host* @pci_get_drvdata(%struct.TYPE_7__* %15)
  store %struct.scsi_qla_host* %16, %struct.scsi_qla_host** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @memset(%struct.TYPE_8__* %18, i32 0, i32 4)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i32 @memset(%struct.TYPE_8__* %21, i32 0, i32 4)
  %23 = call i32 (...) @get_jiffies_64()
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %28 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %1
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.link_statistics* @dma_alloc_coherent(i32* %34, i32 4, i32* %7, i32 %35)
  store %struct.link_statistics* %36, %struct.link_statistics** %6, align 8
  %37 = load %struct.link_statistics*, %struct.link_statistics** %6, align 8
  %38 = icmp ne %struct.link_statistics* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ql_log_warn, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 @ql_log(i32 %40, %struct.TYPE_6__* %41, i32 28887, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %56

43:                                               ; preds = %30
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %45 = load %struct.link_statistics*, %struct.link_statistics** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BIT_0, align 4
  %48 = call i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host* %44, %struct.link_statistics* %45, i32 %46, i32 %47)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.link_statistics*, %struct.link_statistics** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dma_free_coherent(i32* %52, i32 4, %struct.link_statistics* %53, i32 %54)
  br label %56

56:                                               ; preds = %39, %43, %1
  ret void
}

declare dso_local %struct.TYPE_6__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local %struct.link_statistics* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host*, %struct.link_statistics*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.link_statistics*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
