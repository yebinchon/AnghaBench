; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.qla_hw_data*)* }
%struct.TYPE_6__ = type { i64 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlafx00_soft_reset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @pci_channel_offline(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ false, %1 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %21
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32 (%struct.qla_hw_data*)*, i32 (%struct.qla_hw_data*)** %32, align 8
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %35 = call i32 %33(%struct.qla_hw_data* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = call i32 @qlafx00_soc_cpu_reset(%struct.TYPE_8__* %36)
  %38 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %28, %26
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @qlafx00_soc_cpu_reset(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
