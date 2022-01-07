; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_rpmsg.c_cros_ec_pkt_xfer_rpmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_rpmsg.c_cros_ec_pkt_xfer_rpmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i64*, i32, %struct.cros_ec_rpmsg* }
%struct.cros_ec_rpmsg = type { i32, i32 }
%struct.cros_ec_command = type { i32, i64, i32, i32 }
%struct.ec_host_response = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"prepared, len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"rpmsg send failed\0A\00", align 1
@EC_MSG_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rpmsg send timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"packet too long (%d bytes, expected %d)\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"bad packet checksum, calculated %x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@EC_CMD_REBOOT_EC = common dso_local global i64 0, align 8
@EC_REBOOT_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*)* @cros_ec_pkt_xfer_rpmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_pkt_xfer_rpmsg(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca %struct.cros_ec_rpmsg*, align 8
  %7 = alloca %struct.ec_host_response*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %13 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %14 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %13, i32 0, i32 3
  %15 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %14, align 8
  store %struct.cros_ec_rpmsg* %15, %struct.cros_ec_rpmsg** %6, align 8
  %16 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %17 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %16, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %19 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %20 = call i32 @cros_ec_prepare_tx(%struct.cros_ec_device* %18, %struct.cros_ec_command* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %6, align 8
  %27 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %26, i32 0, i32 0
  %28 = call i32 @reinit_completion(i32* %27)
  %29 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %6, align 8
  %30 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %33 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @rpmsg_send(i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %41 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %158

45:                                               ; preds = %2
  %46 = load i32, i32* @EC_MSG_TIMEOUT_MS, align 4
  %47 = call i64 @msecs_to_jiffies(i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %6, align 8
  %49 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @wait_for_completion_timeout(i32* %49, i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %45
  %55 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %56 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %158

61:                                               ; preds = %45
  %62 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %63 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = bitcast i64* %64 to %struct.ec_host_response*
  store %struct.ec_host_response* %65, %struct.ec_host_response** %7, align 8
  %66 = load %struct.ec_host_response*, %struct.ec_host_response** %7, align 8
  %67 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %70 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %72 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %73 = call i32 @cros_ec_check_result(%struct.cros_ec_device* %71, %struct.cros_ec_command* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %147

77:                                               ; preds = %61
  %78 = load %struct.ec_host_response*, %struct.ec_host_response** %7, align 8
  %79 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %82 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %87 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ec_host_response*, %struct.ec_host_response** %7, align 8
  %90 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %93 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @EMSGSIZE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %147

98:                                               ; preds = %77
  %99 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %100 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %103 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 8
  %106 = load %struct.ec_host_response*, %struct.ec_host_response** %7, align 8
  %107 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %101, i64* %105, i32 %108)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %129, %98
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.ec_host_response*, %struct.ec_host_response** %7, align 8
  %114 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 8, %116
  %118 = icmp ult i64 %112, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %110
  %120 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %121 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %110

132:                                              ; preds = %110
  %133 = load i64, i64* %11, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %137 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* @EBADMSG, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %10, align 4
  br label %147

143:                                              ; preds = %132
  %144 = load %struct.ec_host_response*, %struct.ec_host_response** %7, align 8
  %145 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %143, %135, %85, %76
  %148 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %149 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @EC_CMD_REBOOT_EC, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @EC_REBOOT_DELAY_MS, align 4
  %155 = call i32 @msleep(i32 %154)
  br label %156

156:                                              ; preds = %153, %147
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %54, %39
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @cros_ec_prepare_tx(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @rpmsg_send(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @cros_ec_check_result(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
