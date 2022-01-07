; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }

@QLA83XX_DRIVER_LOCKID = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA83XX_DRIVER_UNLOCK = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to release IDC lock, retrying=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to read drv-lockid, retrying=%d\0A\00", align 1
@BIT_7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_idc_unlock(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %46, %33, %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %14 = call i64 @qla83xx_rd_reg(%struct.TYPE_7__* %12, i32 %13, i64* %6)
  %15 = load i64, i64* @QLA_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load i32, i32* @QLA83XX_DRIVER_UNLOCK, align 4
  %26 = call i64 @qla83xx_rd_reg(%struct.TYPE_7__* %24, i32 %25, i64* %6)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = load i32, i32* @QLA83XX_DRIVER_LOCKID, align 4
  %29 = call i32 @qla83xx_wr_reg(%struct.TYPE_7__* %27, i32 %28, i32 255)
  br label %42

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = call i32 (...) @qla83xx_wait_logic()
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @ql_dbg_p3p, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ql_dbg(i32 %37, %struct.TYPE_7__* %38, i32 45156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %11

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %23
  br label %55

43:                                               ; preds = %11
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = call i32 (...) @qla83xx_wait_logic()
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @ql_dbg_p3p, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ql_dbg(i32 %50, %struct.TYPE_7__* %51, i32 45157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %11

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %42
  ret void
}

declare dso_local i64 @qla83xx_rd_reg(%struct.TYPE_7__*, i32, i64*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @qla83xx_wait_logic(...) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
