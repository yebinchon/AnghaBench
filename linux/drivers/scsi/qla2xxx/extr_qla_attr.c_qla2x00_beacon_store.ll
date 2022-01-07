; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_beacon_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_beacon_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)* }

@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Abort ISP active -- ignoring beacon request.\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qla2x00_beacon_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qla2x00_beacon_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.qla_hw_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @class_to_shost(%struct.device* %14)
  %16 = call %struct.TYPE_9__* @shost_priv(i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %21 = call i64 @IS_QLA2100(%struct.qla_hw_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %25 = call i64 @IS_QLA2200(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %4
  %28 = load i64, i64* @EPERM, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %88

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %88

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %39, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = call i64 @qla2x00_chip_is_down(%struct.TYPE_9__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %48, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @ql_log_warn, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = call i32 @ql_log(i32 %52, %struct.TYPE_9__* %53, i32 28794, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i64, i64* @EBUSY, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %88

57:                                               ; preds = %37
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = call i32 %65(%struct.TYPE_9__* %66)
  store i32 %67, i32* %13, align 4
  br label %76

68:                                               ; preds = %57
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = call i32 %73(%struct.TYPE_9__* %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %68, %60
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @QLA_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %80, %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %83, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %81, %46, %34, %27
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local %struct.TYPE_9__* @shost_priv(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qla2x00_chip_is_down(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
