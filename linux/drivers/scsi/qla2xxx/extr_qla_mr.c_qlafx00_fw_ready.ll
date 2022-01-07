; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_fw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Waiting for init to complete...\0A\00", align 1
@FSTATE_FX00_INITIALIZED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"fw_state=%x\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"fw_state=%x curr time=%lx.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Firmware ready **** FAILED ****.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Firmware ready **** SUCCESS ****.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlafx00_fw_ready(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [5 x i64], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  store i64 10, i64* %5, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @HZ, align 8
  %11 = mul i64 %9, %10
  %12 = add i64 %8, %11
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ql_dbg_init, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_dbg(i32 %19, %struct.TYPE_7__* %20, i32 314, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %1
  br label %23

23:                                               ; preds = %58, %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %26 = call i32 @qlafx00_get_firmware_state(%struct.TYPE_7__* %24, i64* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @QLA_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = load i64, i64* @FSTATE_FX00_INITIALIZED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @ql_dbg_init, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %39 = load i64, i64* %38, align 16
  %40 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_dbg(i32 %36, %struct.TYPE_7__* %37, i32 315, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %44, i32* %3, align 4
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @time_after_eq(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %59

50:                                               ; preds = %43
  %51 = call i32 @msleep(i32 500)
  %52 = load i32, i32* @ql_dbg_init, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = load i64, i64* @jiffies, align 8
  %57 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_dbg(i32 %52, %struct.TYPE_7__* %53, i32 316, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %50
  br i1 true, label %23, label %59

59:                                               ; preds = %58, %49, %35
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @ql_dbg_init, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_dbg(i32 %63, %struct.TYPE_7__* %64, i32 317, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @ql_dbg_init, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_dbg(i32 %67, %struct.TYPE_7__* %68, i32 318, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @qlafx00_get_firmware_state(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
