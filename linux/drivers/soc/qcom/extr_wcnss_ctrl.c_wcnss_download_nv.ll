; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_download_nv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_download_nv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcnss_ctrl = type { i64, i32, i32, i32 }
%struct.wcnss_download_nv_req = type { i32, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.firmware = type { i8*, i64 }

@NV_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVBIN_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to load nv file %s: %d\0A\00", align 1
@WCNSS_DOWNLOAD_NV_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to send smd packet\0A\00", align 1
@WCNSS_REQUEST_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"timeout waiting for nv upload ack\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WCNSS_ACK_COLD_BOOTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcnss_ctrl*, i32*)* @wcnss_download_nv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_download_nv(%struct.wcnss_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wcnss_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wcnss_download_nv_req*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wcnss_ctrl* %0, %struct.wcnss_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i64, i64* @NV_FRAGMENT_SIZE, align 8
  %12 = add i64 48, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wcnss_download_nv_req* @kzalloc(i64 %12, i32 %13)
  store %struct.wcnss_download_nv_req* %14, %struct.wcnss_download_nv_req** %6, align 8
  %15 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %16 = icmp ne %struct.wcnss_download_nv_req* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %142

20:                                               ; preds = %2
  %21 = load i32, i32* @NVBIN_FILE, align 4
  %22 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @request_firmware(%struct.firmware** %7, i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %30 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NVBIN_FILE, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %138

35:                                               ; preds = %20
  %36 = load %struct.firmware*, %struct.firmware** %7, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load %struct.firmware*, %struct.firmware** %7, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* @WCNSS_DOWNLOAD_NV_REQ, align 4
  %43 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %44 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* @NV_FRAGMENT_SIZE, align 8
  %47 = add i64 48, %46
  %48 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %49 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %52 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load i64, i64* @NV_FRAGMENT_SIZE, align 8
  %54 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %55 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %57 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %109, %35
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @NV_FRAGMENT_SIZE, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %64 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %67 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 48, %68
  %70 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %71 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %58
  %74 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %75 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %79 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @memcpy(i32 %76, i8* %77, i64 %80)
  %82 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %83 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %86 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %87 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @rpmsg_send(i32 %84, %struct.wcnss_download_nv_req* %85, i64 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %73
  %94 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %95 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %135

98:                                               ; preds = %73
  %99 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %100 = getelementptr inbounds %struct.wcnss_download_nv_req, %struct.wcnss_download_nv_req* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* @NV_FRAGMENT_SIZE, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr i8, i8* %104, i64 %103
  store i8* %105, i8** %8, align 8
  %106 = load i64, i64* @NV_FRAGMENT_SIZE, align 8
  %107 = load i64, i64* %9, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %98
  %110 = load i64, i64* %9, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %58, label %112

112:                                              ; preds = %109
  %113 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %114 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %113, i32 0, i32 2
  %115 = load i32, i32* @WCNSS_REQUEST_TIMEOUT, align 4
  %116 = call i32 @wait_for_completion_timeout(i32* %114, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %121 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @ETIMEDOUT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %134

126:                                              ; preds = %112
  %127 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %128 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @WCNSS_ACK_COLD_BOOTING, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %126, %119
  br label %135

135:                                              ; preds = %134, %93
  %136 = load %struct.firmware*, %struct.firmware** %7, align 8
  %137 = call i32 @release_firmware(%struct.firmware* %136)
  br label %138

138:                                              ; preds = %135, %28
  %139 = load %struct.wcnss_download_nv_req*, %struct.wcnss_download_nv_req** %6, align 8
  %140 = call i32 @kfree(%struct.wcnss_download_nv_req* %139)
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %17
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.wcnss_download_nv_req* @kzalloc(i64, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @rpmsg_send(i32, %struct.wcnss_download_nv_req*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @kfree(%struct.wcnss_download_nv_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
