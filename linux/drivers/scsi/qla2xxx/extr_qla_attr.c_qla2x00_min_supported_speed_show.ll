; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_min_supported_speed_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_min_supported_speed_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"64Gps\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"32Gps\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"16Gps\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"8Gps\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"4Gps\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qla2x00_min_supported_speed_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_min_supported_speed_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @class_to_shost(%struct.device* %10)
  %12 = call %struct.TYPE_3__* @shost_priv(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %9, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %17 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %21 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %19, %3
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %74

35:                                               ; preds = %27
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %72

41:                                               ; preds = %35
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %70

47:                                               ; preds = %41
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %68

53:                                               ; preds = %47
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %66

59:                                               ; preds = %53
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  br label %66

66:                                               ; preds = %59, %58
  %67 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %58 ], [ %65, %59 ]
  br label %68

68:                                               ; preds = %66, %52
  %69 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %52 ], [ %67, %66 ]
  br label %70

70:                                               ; preds = %68, %46
  %71 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %46 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %40
  %73 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %40 ], [ %71, %70 ]
  br label %74

74:                                               ; preds = %72, %34
  %75 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %34 ], [ %73, %72 ]
  %76 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_3__* @shost_priv(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
