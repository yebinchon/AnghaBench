; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64, i32, %struct.TYPE_4__, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.viosrp_crq = type { i64 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"init_msg: state 0x%hx\0A\00", align 1
@H_GET_PARTNER_INFO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"init_msg, part num %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"init_msg h_vioctl rc %ld\0A\00", align 1
@INIT_MSG = common dso_local global i64 0, align 8
@INIT_COMPLETE_MSG = common dso_local global i64 0, align 8
@ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"init_msg: invalid format %d\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.viosrp_crq*)* @ibmvscsis_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_init_msg(%struct.scsi_info* %0, %struct.viosrp_crq* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.viosrp_crq*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.viosrp_crq* %1, %struct.viosrp_crq** %4, align 8
  %6 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 1
  %9 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @H_GET_PARTNER_INFO, align 4
  %18 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 32
  %25 = or i32 %21, %24
  %26 = call i64 @h_vioctl(i32 %16, i32 %17, i32 %25, i32 0, i32 0, i32 0, i32 0)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @H_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be64_to_cpu(i32 %35)
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %40, i32 0, i32 1
  %42 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %48, i32 0, i32 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %47, %30
  %54 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %55 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @INIT_MSG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %61 = call i64 @ibmvscsis_handle_init_msg(%struct.scsi_info* %60)
  store i64 %61, i64* %5, align 8
  br label %84

62:                                               ; preds = %53
  %63 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %64 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @INIT_COMPLETE_MSG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %70 = call i64 @ibmvscsis_handle_init_compl_msg(%struct.scsi_info* %69)
  store i64 %70, i64* %5, align 8
  br label %83

71:                                               ; preds = %62
  %72 = load i64, i64* @ERROR, align 8
  store i64 %72, i64* %5, align 8
  %73 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %73, i32 0, i32 1
  %75 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %76 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %81 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %82 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %71, %68
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i64 @h_vioctl(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @ibmvscsis_handle_init_msg(%struct.scsi_info*) #1

declare dso_local i64 @ibmvscsis_handle_init_compl_msg(%struct.scsi_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
