; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_make_ua.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_make_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_NUM_UAS = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i32 0, align 4
@UA_RESET_ASC = common dso_local global i32 0, align 4
@POWER_ON_RESET_ASCQ = common dso_local global i32 0, align 4
@sdebug_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"power on reset\00", align 1
@BUS_RESET_ASCQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bus reset\00", align 1
@UA_CHANGED_ASC = common dso_local global i32 0, align 4
@MODE_CHANGED_ASCQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mode parameters changed\00", align 1
@CAPACITY_CHANGED_ASCQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"capacity data changed\00", align 1
@TARGET_CHANGED_ASC = common dso_local global i32 0, align 4
@MICROCODE_CHANGED_ASCQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"microcode has been changed\00", align 1
@MICROCODE_CHANGED_WO_RESET_ASCQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"microcode has been changed without reset\00", align 1
@sdebug_scsi_level = common dso_local global i32 0, align 4
@LUNS_CHANGED_ASCQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"reported luns data has changed\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"unexpected unit attention code=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"%s reports: Unit attention: %s\0A\00", align 1
@my_name = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @make_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ua(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %8 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %9 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SDEBUG_NUM_UAS, align 4
  %12 = call i32 @find_first_bit(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SDEBUG_NUM_UAS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %119

16:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %94 [
    i32 128, label %18
    i32 134, label %28
    i32 129, label %38
    i32 133, label %48
    i32 131, label %58
    i32 130, label %68
    i32 132, label %78
  ]

18:                                               ; preds = %16
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = load i32, i32* @UNIT_ATTENTION, align 4
  %21 = load i32, i32* @UA_RESET_ASC, align 4
  %22 = load i32, i32* @POWER_ON_RESET_ASCQ, align 4
  %23 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i64, i64* @sdebug_verbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %26, %18
  br label %101

28:                                               ; preds = %16
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = load i32, i32* @UNIT_ATTENTION, align 4
  %31 = load i32, i32* @UA_RESET_ASC, align 4
  %32 = load i32, i32* @BUS_RESET_ASCQ, align 4
  %33 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i64, i64* @sdebug_verbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %37

37:                                               ; preds = %36, %28
  br label %101

38:                                               ; preds = %16
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = load i32, i32* @UNIT_ATTENTION, align 4
  %41 = load i32, i32* @UA_CHANGED_ASC, align 4
  %42 = load i32, i32* @MODE_CHANGED_ASCQ, align 4
  %43 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %39, i32 %40, i32 %41, i32 %42)
  %44 = load i64, i64* @sdebug_verbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %47

47:                                               ; preds = %46, %38
  br label %101

48:                                               ; preds = %16
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = load i32, i32* @UNIT_ATTENTION, align 4
  %51 = load i32, i32* @UA_CHANGED_ASC, align 4
  %52 = load i32, i32* @CAPACITY_CHANGED_ASCQ, align 4
  %53 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %49, i32 %50, i32 %51, i32 %52)
  %54 = load i64, i64* @sdebug_verbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %57

57:                                               ; preds = %56, %48
  br label %101

58:                                               ; preds = %16
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = load i32, i32* @UNIT_ATTENTION, align 4
  %61 = load i32, i32* @TARGET_CHANGED_ASC, align 4
  %62 = load i32, i32* @MICROCODE_CHANGED_ASCQ, align 4
  %63 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %59, i32 %60, i32 %61, i32 %62)
  %64 = load i64, i64* @sdebug_verbose, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %67

67:                                               ; preds = %66, %58
  br label %101

68:                                               ; preds = %16
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = load i32, i32* @UNIT_ATTENTION, align 4
  %71 = load i32, i32* @TARGET_CHANGED_ASC, align 4
  %72 = load i32, i32* @MICROCODE_CHANGED_WO_RESET_ASCQ, align 4
  %73 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %69, i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* @sdebug_verbose, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %77

77:                                               ; preds = %76, %68
  br label %101

78:                                               ; preds = %16
  %79 = load i32, i32* @sdebug_scsi_level, align 4
  %80 = icmp sge i32 %79, 6
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %83 = call i32 @clear_luns_changed_on_target(%struct.sdebug_dev_info* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = load i32, i32* @UNIT_ATTENTION, align 4
  %87 = load i32, i32* @TARGET_CHANGED_ASC, align 4
  %88 = load i32, i32* @LUNS_CHANGED_ASCQ, align 4
  %89 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %85, i32 %86, i32 %87, i32 %88)
  %90 = load i64, i64* @sdebug_verbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %93

93:                                               ; preds = %92, %84
  br label %101

94:                                               ; preds = %16
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* @sdebug_verbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %100

100:                                              ; preds = %99, %94
  br label %101

101:                                              ; preds = %100, %93, %77, %67, %57, %47, %37, %27
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %104 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @clear_bit(i32 %102, i32 %105)
  %107 = load i64, i64* @sdebug_verbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load i32, i32* @KERN_INFO, align 4
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @my_name, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @sdev_printk(i32 %110, i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %109, %101
  %118 = load i32, i32* @check_condition_result, align 4
  store i32 %118, i32* %3, align 4
  br label %120

119:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %117
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @clear_luns_changed_on_target(%struct.sdebug_dev_info*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
