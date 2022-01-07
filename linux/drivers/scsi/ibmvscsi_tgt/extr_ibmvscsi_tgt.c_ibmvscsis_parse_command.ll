; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_parse_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_parse_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32 }
%struct.viosrp_crq = type { i32, i32, i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@PROCESSING_MAD = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"parse_command: already processing mad\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@PING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"parse_command: invalid format %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"parse_command: invalid valid field %d\0A\00", align 1
@SCHEDULE_DISCONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.viosrp_crq*)* @ibmvscsis_parse_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_parse_command(%struct.scsi_info* %0, %struct.viosrp_crq* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.viosrp_crq*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.viosrp_crq* %1, %struct.viosrp_crq** %4, align 8
  %6 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %8 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %72 [
    i32 130, label %10
    i32 128, label %64
    i32 129, label %68
  ]

10:                                               ; preds = %2
  %11 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %12 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %53 [
    i32 132, label %14
    i32 136, label %14
    i32 135, label %14
    i32 134, label %14
    i32 131, label %39
    i32 133, label %43
  ]

14:                                               ; preds = %10, %10, %10, %10
  %15 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PROCESSING_MAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i64, i64* @ERROR, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %23, i32 0, i32 1
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %27 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %28 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %26, i32 %27, i32 0)
  br label %38

29:                                               ; preds = %14
  %30 = load i32, i32* @PROCESSING_MAD, align 4
  %31 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %36 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %37 = call i64 @ibmvscsis_mad(%struct.scsi_info* %35, %struct.viosrp_crq* %36)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %29, %21
  br label %63

39:                                               ; preds = %10
  %40 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %41 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %42 = call i32 @ibmvscsis_srp_cmd(%struct.scsi_info* %40, %struct.viosrp_crq* %41)
  br label %63

43:                                               ; preds = %10
  %44 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %45 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PING, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %51 = call i32 @ibmvscsis_ping_response(%struct.scsi_info* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %63

53:                                               ; preds = %10
  %54 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %55 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %54, i32 0, i32 1
  %56 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %57 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %61 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %62 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %53, %52, %39, %38
  br label %82

64:                                               ; preds = %2
  %65 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %66 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %67 = call i64 @ibmvscsis_trans_event(%struct.scsi_info* %65, %struct.viosrp_crq* %66)
  store i64 %67, i64* %5, align 8
  br label %82

68:                                               ; preds = %2
  %69 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %70 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %71 = call i64 @ibmvscsis_init_msg(%struct.scsi_info* %69, %struct.viosrp_crq* %70)
  store i64 %71, i64* %5, align 8
  br label %82

72:                                               ; preds = %2
  %73 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %73, i32 0, i32 1
  %75 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %76 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %80 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %81 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %72, %68, %64, %63
  %83 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @SCHEDULE_DISCONNECT, align 8
  %88 = and i64 %86, %87
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i64 @ibmvscsis_mad(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i32 @ibmvscsis_srp_cmd(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i32 @ibmvscsis_ping_response(%struct.scsi_info*) #1

declare dso_local i64 @ibmvscsis_trans_event(%struct.scsi_info*, %struct.viosrp_crq*) #1

declare dso_local i64 @ibmvscsis_init_msg(%struct.scsi_info*, %struct.viosrp_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
