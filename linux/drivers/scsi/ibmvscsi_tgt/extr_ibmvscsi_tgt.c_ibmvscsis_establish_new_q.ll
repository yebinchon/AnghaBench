; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_establish_new_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_establish_new_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@H_ENABLE_PREPARE_FOR_SUSPEND = common dso_local global i32 0, align 4
@PREP_FOR_SUSPEND_ENABLED = common dso_local global i32 0, align 4
@H_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error from Enable Prepare for Suspend: %ld\0A\00", align 1
@PRESERVE_FLAG_FIELDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"establish_new_q: failed to enable interrupts, rc %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"establish_new_q: check_init_msg failed, rc %ld\0A\00", align 1
@UNUSED_FORMAT = common dso_local global i64 0, align 8
@INIT_MSG = common dso_local global i64 0, align 8
@UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_establish_new_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_establish_new_q(%struct.scsi_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  %6 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @H_ENABLE_PREPARE_FOR_SUSPEND, align 4
  %12 = call i64 @h_vioctl(i32 %10, i32 %11, i32 30000, i32 0, i32 0, i32 0, i32 0)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 128
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @PREP_FOR_SUSPEND_ENABLED, align 4
  %17 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %31

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @H_NOT_FOUND, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* @PRESERVE_FLAG_FIELDS, align 4
  %33 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @vio_enable_interrupts(i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 1
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %94

56:                                               ; preds = %31
  %57 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %58 = call i64 @ibmvscsis_check_init_msg(%struct.scsi_info* %57, i64* %5)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %62, i32 0, i32 1
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %2, align 8
  br label %94

67:                                               ; preds = %56
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @UNUSED_FORMAT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %73 = load i64, i64* @INIT_MSG, align 8
  %74 = call i64 @ibmvscsis_send_init_message(%struct.scsi_info* %72, i64 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  switch i64 %75, label %79 [
    i64 128, label %76
    i64 131, label %76
    i64 132, label %76
    i64 129, label %78
    i64 130, label %78
  ]

76:                                               ; preds = %71, %71, %71
  %77 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %77, i64* %4, align 8
  br label %83

78:                                               ; preds = %71, %71
  br label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @UNDEFINED, align 4
  %81 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i64 130, i64* %4, align 8
  br label %83

83:                                               ; preds = %79, %78, %76
  br label %92

84:                                               ; preds = %67
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @INIT_MSG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %90 = call i64 @ibmvscsis_handle_init_msg(%struct.scsi_info* %89)
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %88, %84
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i64, i64* %4, align 8
  store i64 %93, i64* %2, align 8
  br label %94

94:                                               ; preds = %92, %61, %50
  %95 = load i64, i64* %2, align 8
  ret i64 %95
}

declare dso_local i64 @h_vioctl(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @vio_enable_interrupts(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i64 @ibmvscsis_check_init_msg(%struct.scsi_info*, i64*) #1

declare dso_local i64 @ibmvscsis_send_init_message(%struct.scsi_info*, i64) #1

declare dso_local i64 @ibmvscsis_handle_init_msg(%struct.scsi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
