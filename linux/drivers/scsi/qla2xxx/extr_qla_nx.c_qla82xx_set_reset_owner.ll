; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_reset_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_reset_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8044_CRB_DEV_STATE_INDEX = common dso_local global i32 0, align 4
@QLA8XXX_DEV_READY = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"HW State: NEED RESET\0A\00", align 1
@QLA8XXX_DEV_NEED_RESET = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"reset_owner is 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Device state is 0x%x = %s.\0A\00", align 1
@MAX_STATES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_set_reset_owner(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %9 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %13 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %14 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %12, i32 %13)
  store i64 %14, i64* %4, align 8
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = call i64 @IS_QLA8044(%struct.qla_hw_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %22 = call i64 @qla8044_rd_direct(%struct.TYPE_9__* %20, i32 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @QLA8XXX_DEV_READY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load i32, i32* @ql_log_info, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %29, %struct.TYPE_9__* %30, i32 45103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %33 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %37 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %38 = load i32, i32* @QLA8XXX_DEV_NEED_RESET, align 4
  %39 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %36, i32 %37, i32 %38)
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @ql_dbg_p3p, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ql_dbg(i32 %43, %struct.TYPE_9__* %44, i32 45104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %59

49:                                               ; preds = %28
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %51 = call i64 @IS_QLA8044(%struct.qla_hw_data* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = load i32, i32* @QLA8044_CRB_DEV_STATE_INDEX, align 4
  %56 = load i32, i32* @QLA8XXX_DEV_NEED_RESET, align 4
  %57 = call i32 @qla8044_wr_direct(%struct.TYPE_9__* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %49
  br label %59

59:                                               ; preds = %58, %35
  br label %74

60:                                               ; preds = %24
  %61 = load i32, i32* @ql_log_info, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @MAX_STATES, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i64, i64* %4, align 8
  %69 = call i8* @qdev_state(i64 %68)
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i8* [ %69, %67 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %70 ]
  %73 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %61, %struct.TYPE_9__* %62, i32 45105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %63, i8* %72)
  br label %74

74:                                               ; preds = %71, %59
  ret void
}

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i64 @qla8044_rd_direct(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @qla8044_wr_direct(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @qdev_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
