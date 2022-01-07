; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_validate_device_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_validate_device_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i64, i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@PQI_OPERATIONAL_IQ_ELEMENT_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"max. inbound queue element length of %d is less than the required length of %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PQI_OPERATIONAL_OQ_ELEMENT_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"max. outbound queue element length of %d is less than the required length of %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"max. inbound IU length of %u is less than the min. required length of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"the controller does not support inbound spanning\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"the controller supports outbound spanning but this driver does not\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_validate_device_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_validate_device_capability(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %4 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %5 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 8
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %13, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %84

21:                                               ; preds = %1
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %23 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PQI_OPERATIONAL_OQ_ELEMENT_LENGTH, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %29 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %33 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PQI_OPERATIONAL_OQ_ELEMENT_LENGTH, align 8
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %84

39:                                               ; preds = %21
  %40 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %41 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %51 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 8
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %84

57:                                               ; preds = %39
  %58 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %59 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %64 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %84

70:                                               ; preds = %57
  %71 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %72 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %77 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %75, %62, %45, %27, %9
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
