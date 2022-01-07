; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_interpret_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_interpret_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.TYPE_4__*, %struct.ErrorInfo* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ErrorInfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"SCSI status\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"SCSI Status = 02, Sense key = 0x%02x, ASC = 0x%02x, ASCQ = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"SCSI Status = 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [141 x i8] c"SCSI status is abnormally zero.  (probably indicates selection timeout reported incorrectly due to a known firmware bug, circa July, 2001.)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"overrun condition\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"invalid command\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"probably means device no longer present\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"protocol error\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"hardware error\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"connection lost\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"abort failed\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"unsolicited abort\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"unabortable\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"controller lockup detected\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"unknown status\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Unknown command status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_scsi_interpret_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_interpret_error(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %struct.ErrorInfo*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %11 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %12 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %11, i32 0, i32 1
  %13 = load %struct.ErrorInfo*, %struct.ErrorInfo** %12, align 8
  store %struct.ErrorInfo* %13, %struct.ErrorInfo** %5, align 8
  %14 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %15 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %21 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %116 [
    i32 131, label %23
    i32 135, label %69
    i32 136, label %70
    i32 133, label %74
    i32 132, label %80
    i32 134, label %84
    i32 138, label %88
    i32 140, label %92
    i32 139, label %96
    i32 128, label %100
    i32 130, label %104
    i32 129, label %108
    i32 137, label %112
  ]

23:                                               ; preds = %2
  %24 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %25 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 4, i32* %10, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %32 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %36 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @decode_sense_data(i32 %37, i32 %38, i32* %7, i32* %8, i32* %9)
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %41 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %42 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.CommandList* %41)
  %43 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %44 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  br label %60

54:                                               ; preds = %34
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %57 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %62 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  br label %125

69:                                               ; preds = %2
  br label %125

70:                                               ; preds = %2
  %71 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %72 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %73 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.CommandList* %72)
  br label %125

74:                                               ; preds = %2
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %76 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %77 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %struct.CommandList* %76)
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %125

80:                                               ; preds = %2
  %81 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %82 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %83 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct.CommandList* %82)
  br label %125

84:                                               ; preds = %2
  %85 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %86 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %87 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.CommandList* %86)
  br label %125

88:                                               ; preds = %2
  %89 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %90 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %91 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.CommandList* %90)
  br label %125

92:                                               ; preds = %2
  %93 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %94 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %95 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %struct.CommandList* %94)
  br label %125

96:                                               ; preds = %2
  %97 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %98 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %99 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.CommandList* %98)
  br label %125

100:                                              ; preds = %2
  %101 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %102 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %103 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), %struct.CommandList* %102)
  br label %125

104:                                              ; preds = %2
  %105 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %106 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %107 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct.CommandList* %106)
  br label %125

108:                                              ; preds = %2
  %109 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %110 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %111 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), %struct.CommandList* %110)
  br label %125

112:                                              ; preds = %2
  %113 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %114 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %115 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), %struct.CommandList* %114)
  br label %125

116:                                              ; preds = %2
  %117 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %118 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %119 = call i32 @hpsa_print_cmd(%struct.ctlr_info* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), %struct.CommandList* %118)
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = load %struct.ErrorInfo*, %struct.ErrorInfo** %5, align 8
  %122 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %74, %70, %69, %68
  ret void
}

declare dso_local i32 @decode_sense_data(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hpsa_print_cmd(%struct.ctlr_info*, i8*, %struct.CommandList*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
