; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_mailbox.c_wilco_ec_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_mailbox.c_wilco_ec_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilco_ec_device = type { i32, %struct.wilco_ec_response*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.wilco_ec_response = type { i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wilco_ec_message = type { i32, i32, i32, i32, i64* }
%struct.wilco_ec_request = type { i32 }

@MEC_IO_WRITE = common dso_local global i32 0, align 4
@EC_MAILBOX_START_COMMAND = common dso_local global i32 0, align 4
@WILCO_EC_FLAG_NO_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EC does not respond to this command\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"response timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"bad response: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MEC_IO_READ = common dso_local global i32 0, align 4
@EC_MAILBOX_DATA_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"bad packet checksum 0x%02x\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"EC reported failure: 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unexpected packet size (%u != %u)\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"EC didn't return enough data (%u < %zu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilco_ec_device*, %struct.wilco_ec_message*, %struct.wilco_ec_request*)* @wilco_ec_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilco_ec_transfer(%struct.wilco_ec_device* %0, %struct.wilco_ec_message* %1, %struct.wilco_ec_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilco_ec_device*, align 8
  %6 = alloca %struct.wilco_ec_message*, align 8
  %7 = alloca %struct.wilco_ec_request*, align 8
  %8 = alloca %struct.wilco_ec_response*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wilco_ec_device* %0, %struct.wilco_ec_device** %5, align 8
  store %struct.wilco_ec_message* %1, %struct.wilco_ec_message** %6, align 8
  store %struct.wilco_ec_request* %2, %struct.wilco_ec_request** %7, align 8
  %11 = load i32, i32* @MEC_IO_WRITE, align 4
  %12 = load %struct.wilco_ec_request*, %struct.wilco_ec_request** %7, align 8
  %13 = bitcast %struct.wilco_ec_request* %12 to i64*
  %14 = call i64 @cros_ec_lpc_io_bytes_mec(i32 %11, i32 0, i32 4, i64* %13)
  %15 = load i32, i32* @MEC_IO_WRITE, align 4
  %16 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %17 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %20 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = call i64 @cros_ec_lpc_io_bytes_mec(i32 %15, i32 4, i32 %18, i64* %21)
  %23 = load i32, i32* @EC_MAILBOX_START_COMMAND, align 4
  %24 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %25 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @outb(i32 %23, i32 %28)
  %30 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %31 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WILCO_EC_FLAG_NO_RESPONSE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %38 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %160

41:                                               ; preds = %3
  %42 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %43 = call i64 @wilco_ec_response_timed_out(%struct.wilco_ec_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %47 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %160

52:                                               ; preds = %41
  %53 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %54 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @inb(i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %63 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (i32, i8*, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %160

69:                                               ; preds = %52
  %70 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %71 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %70, i32 0, i32 1
  %72 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %71, align 8
  store %struct.wilco_ec_response* %72, %struct.wilco_ec_response** %8, align 8
  %73 = load i32, i32* @MEC_IO_READ, align 4
  %74 = load i32, i32* @EC_MAILBOX_DATA_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 24, %75
  %77 = trunc i64 %76 to i32
  %78 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %79 = bitcast %struct.wilco_ec_response* %78 to i64*
  %80 = call i64 @cros_ec_lpc_io_bytes_mec(i32 %73, i32 0, i32 %77, i64* %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %69
  %84 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %85 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %88 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EBADMSG, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %160

93:                                               ; preds = %69
  %94 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %95 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %100 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %103 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @EBADMSG, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %160

108:                                              ; preds = %93
  %109 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %110 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @EC_MAILBOX_DATA_SIZE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %116 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %119 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @EC_MAILBOX_DATA_SIZE, align 4
  %122 = call i32 (i32, i8*, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* @EMSGSIZE, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %160

125:                                              ; preds = %108
  %126 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %127 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %130 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %125
  %134 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %5, align 8
  %135 = getelementptr inbounds %struct.wilco_ec_device, %struct.wilco_ec_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %138 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %141 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i32, i32* @EMSGSIZE, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %160

146:                                              ; preds = %125
  %147 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %148 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %151 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wilco_ec_message*, %struct.wilco_ec_message** %6, align 8
  %154 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @memcpy(i32 %149, i32 %152, i32 %155)
  %157 = load %struct.wilco_ec_response*, %struct.wilco_ec_response** %8, align 8
  %158 = getelementptr inbounds %struct.wilco_ec_response, %struct.wilco_ec_response* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %146, %133, %114, %98, %83, %61, %45, %36
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @cros_ec_lpc_io_bytes_mec(i32, i32, i32, i64*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @wilco_ec_response_timed_out(%struct.wilco_ec_device*) #1

declare dso_local i64 @inb(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
