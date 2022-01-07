; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_ready_for_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_ready_for_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.viosrp_crq* }
%struct.viosrp_crq = type { i64, i64 }

@.str = private unnamed_addr constant [53 x i8] c"ready_suspend: flags 0x%x, state 0x%hx crq_valid:%x\0A\00", align 1
@PREP_FOR_SUSPEND_ABORTED = common dso_local global i32 0, align 4
@H_READY_FOR_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Ready for Suspend Vioctl failed: %ld\0A\00", align 1
@PREP_FOR_SUSPEND_OVERWRITE = common dso_local global i32 0, align 4
@VALID_TRANS_EVENT = common dso_local global i64 0, align 8
@RESUME_FROM_SUSP = common dso_local global i64 0, align 8
@ERR_DISCONNECT_RECONNECT = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Invalid element in CRQ after Prepare for Suspend\00", align 1
@PREP_FOR_SUSPEND_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, i32)* @ibmvscsis_ready_for_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_ready_for_suspend(%struct.scsi_info* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.viosrp_crq*, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.viosrp_crq*, %struct.viosrp_crq** %9, align 8
  %11 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %10, i64 %15
  store %struct.viosrp_crq* %16, %struct.viosrp_crq** %6, align 8
  %17 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 2
  %19 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %26 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %24, i32 %28)
  %30 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PREP_FOR_SUSPEND_ABORTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %2
  %37 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %38 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @H_READY_FOR_SUSPEND, align 4
  %47 = call i64 @h_vioctl(i32 %45, i32 %46, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 2
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %50, %41
  br label %136

56:                                               ; preds = %36, %2
  %57 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PREP_FOR_SUSPEND_OVERWRITE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PREP_FOR_SUSPEND_ABORTED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %72 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %70
  %76 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %77 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VALID_TRANS_EVENT, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %83 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RESUME_FROM_SUSP, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %81, %75, %63
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* @ERR_DISCONNECT_RECONNECT, align 8
  %92 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %93 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %95 = call i32 @ibmvscsis_reset_queue(%struct.scsi_info* %94)
  store i64 -1, i64* %5, align 8
  br label %107

96:                                               ; preds = %87
  %97 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %98 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CONNECTED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %104 = load i64, i64* @ERR_DISCONNECT_RECONNECT, align 8
  %105 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %103, i64 %104, i32 0)
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* @PREP_FOR_SUSPEND_OVERWRITE, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %111 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %115 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %107
  %119 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %120 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VALID_TRANS_EVENT, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %126 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RESUME_FROM_SUSP, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124, %118
  %131 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %132 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %131, i32 0, i32 2
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %124, %107
  br label %135

135:                                              ; preds = %134, %81, %70
  br label %136

136:                                              ; preds = %135, %55
  %137 = load i32, i32* @PREP_FOR_SUSPEND_PENDING, align 4
  %138 = load i32, i32* @PREP_FOR_SUSPEND_ABORTED, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %142 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32) #1

declare dso_local i64 @h_vioctl(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ibmvscsis_reset_queue(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
