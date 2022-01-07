; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_ctrl_smd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_ctrl_smd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.wcnss_ctrl = type { i32, i32, i32, i32 }
%struct.wcnss_download_nv_resp = type { i32 }
%struct.wcnss_version_resp = type { i32, i32, i32, i32 }
%struct.wcnss_msg_hdr = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"invalid size of version response\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"WCNSS Version %d.%d %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid size of download response\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cold boot complete\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown message type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @wcnss_ctrl_smd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_ctrl_smd_callback(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.rpmsg_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wcnss_ctrl*, align 8
  %12 = alloca %struct.wcnss_download_nv_resp*, align 8
  %13 = alloca %struct.wcnss_version_resp*, align 8
  %14 = alloca %struct.wcnss_msg_hdr*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %16 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %15, i32 0, i32 0
  %17 = call %struct.wcnss_ctrl* @dev_get_drvdata(i32* %16)
  store %struct.wcnss_ctrl* %17, %struct.wcnss_ctrl** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.wcnss_msg_hdr*
  store %struct.wcnss_msg_hdr* %19, %struct.wcnss_msg_hdr** %14, align 8
  %20 = load %struct.wcnss_msg_hdr*, %struct.wcnss_msg_hdr** %14, align 8
  %21 = getelementptr inbounds %struct.wcnss_msg_hdr, %struct.wcnss_msg_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %82 [
    i32 128, label %23
    i32 129, label %54
    i32 130, label %74
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 16
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %29 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %90

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.wcnss_version_resp*
  store %struct.wcnss_version_resp* %34, %struct.wcnss_version_resp** %13, align 8
  %35 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %36 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wcnss_version_resp*, %struct.wcnss_version_resp** %13, align 8
  %39 = getelementptr inbounds %struct.wcnss_version_resp, %struct.wcnss_version_resp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wcnss_version_resp*, %struct.wcnss_version_resp** %13, align 8
  %42 = getelementptr inbounds %struct.wcnss_version_resp, %struct.wcnss_version_resp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wcnss_version_resp*, %struct.wcnss_version_resp** %13, align 8
  %45 = getelementptr inbounds %struct.wcnss_version_resp, %struct.wcnss_version_resp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wcnss_version_resp*, %struct.wcnss_version_resp** %13, align 8
  %48 = getelementptr inbounds %struct.wcnss_version_resp, %struct.wcnss_version_resp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %52 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %51, i32 0, i32 2
  %53 = call i32 @complete(i32* %52)
  br label %90

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 4
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %60 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %90

63:                                               ; preds = %54
  %64 = load i8*, i8** %7, align 8
  %65 = bitcast i8* %64 to %struct.wcnss_download_nv_resp*
  store %struct.wcnss_download_nv_resp* %65, %struct.wcnss_download_nv_resp** %12, align 8
  %66 = load %struct.wcnss_download_nv_resp*, %struct.wcnss_download_nv_resp** %12, align 8
  %67 = getelementptr inbounds %struct.wcnss_download_nv_resp, %struct.wcnss_download_nv_resp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %70 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %72 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %71, i32 0, i32 2
  %73 = call i32 @complete(i32* %72)
  br label %90

74:                                               ; preds = %5
  %75 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %76 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %80 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %79, i32 0, i32 1
  %81 = call i32 @complete(i32* %80)
  br label %90

82:                                               ; preds = %5
  %83 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %11, align 8
  %84 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wcnss_msg_hdr*, %struct.wcnss_msg_hdr** %14, align 8
  %87 = getelementptr inbounds %struct.wcnss_msg_hdr, %struct.wcnss_msg_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82, %74, %63, %58, %32, %27
  ret i32 0
}

declare dso_local %struct.wcnss_ctrl* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
