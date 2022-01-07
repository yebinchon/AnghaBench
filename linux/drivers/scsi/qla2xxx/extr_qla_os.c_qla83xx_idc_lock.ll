; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA83XX_DRIVER_LOCK = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA83XX_DRIVER_LOCKID = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to acquire IDC lock, acquired by %d, retrying...\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"IDC Lock recovery FAILED.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_idc_lock(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @QLA83XX_DRIVER_LOCK, align 4
  %14 = call i64 @qla83xx_rd_reg(%struct.TYPE_8__* %12, i32 %13, i64* %5)
  %15 = load i64, i64* @QLA_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qla83xx_wr_reg(%struct.TYPE_8__* %21, i32 %22, i32 %25)
  br label %46

27:                                               ; preds = %17
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %30 = call i64 @qla83xx_rd_reg(%struct.TYPE_8__* %28, i32 %29, i64* %6)
  %31 = load i32, i32* @ql_dbg_p3p, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ql_dbg(i32 %31, %struct.TYPE_8__* %32, i32 45155, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i64 @qla83xx_idc_lock_recovery(%struct.TYPE_8__* %35)
  %37 = load i64, i64* @QLA_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 (...) @qla83xx_wait_logic()
  br label %11

41:                                               ; preds = %27
  %42 = load i32, i32* @ql_log_warn, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = call i32 @ql_log(i32 %42, %struct.TYPE_8__* %43, i32 45173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %20
  br label %47

47:                                               ; preds = %46, %11
  ret void
}

declare dso_local i64 @qla83xx_rd_reg(%struct.TYPE_8__*, i32, i64*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*, i64) #1

declare dso_local i64 @qla83xx_idc_lock_recovery(%struct.TYPE_8__*) #1

declare dso_local i32 @qla83xx_wait_logic(...) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
