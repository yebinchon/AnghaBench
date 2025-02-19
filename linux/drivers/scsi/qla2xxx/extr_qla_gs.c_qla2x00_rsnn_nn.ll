; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rsnn_nn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_rsnn_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RSNN_ID call unsupported on ISP2100/ISP2200.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_rsnn_nn(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %4, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %9 = call i64 @IS_QLA2100(%struct.qla_hw_data* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %13 = call i64 @IS_QLA2200(%struct.qla_hw_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @ql_dbg_disc, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @ql_dbg(i32 %16, %struct.TYPE_5__* %17, i32 8272, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @qla_async_rsnn_nn(%struct.TYPE_5__* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @qla_async_rsnn_nn(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
