; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i64, %struct.qla_hw_data* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.qla_hw_data = type { i32*, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 (%struct.qla_hw_data*)* }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @qla2x00_free_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_free_device(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = load i32, i32* @DID_NO_CONNECT, align 4
  %9 = shl i32 %8, 16
  %10 = call i32 @qla2x00_abort_all_cmds(%struct.TYPE_13__* %7, i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = call i32 @qla2x00_stop_timer(%struct.TYPE_13__* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = call i32 @qla25xx_delete_queues(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32 (%struct.qla_hw_data*)*, i32 (%struct.qla_hw_data*)** %35, align 8
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %38 = call i32 %36(%struct.qla_hw_data* %37)
  br label %39

39:                                               ; preds = %28, %18
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = call i32 @qla2x00_free_fcports(%struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @qla2x00_free_irqs(%struct.TYPE_13__* %42)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @flush_workqueue(i32* %51)
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @destroy_workqueue(i32* %55)
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %48, %39
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %61 = call i32 @qla2x00_mem_free(%struct.qla_hw_data* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = call i32 @qla82xx_md_free(%struct.TYPE_13__* %62)
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %65 = call i32 @qla2x00_free_queues(%struct.qla_hw_data* %64)
  ret void
}

declare dso_local i32 @qla2x00_abort_all_cmds(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @qla2x00_stop_timer(%struct.TYPE_13__*) #1

declare dso_local i32 @qla25xx_delete_queues(%struct.TYPE_13__*) #1

declare dso_local i32 @qla2x00_free_fcports(%struct.TYPE_13__*) #1

declare dso_local i32 @qla2x00_free_irqs(%struct.TYPE_13__*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @qla2x00_mem_free(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_md_free(%struct.TYPE_13__*) #1

declare dso_local i32 @qla2x00_free_queues(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
