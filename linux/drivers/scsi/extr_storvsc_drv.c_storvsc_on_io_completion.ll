; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_on_io_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_storvsc_drv.c_storvsc_on_io_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_device = type { i32, i64, i32, %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.vstor_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i32, i32, i32, i32, i32 }
%struct.storvsc_cmd_request = type { %struct.TYPE_3__*, %struct.vstor_packet }
%struct.TYPE_3__ = type { i32 }

@INQUIRY = common dso_local global i64 0, align 8
@MODE_SENSE = common dso_local global i64 0, align 8
@SRB_STATUS_SUCCESS = common dso_local global i32 0, align 4
@STORVSC_LOGGING_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cmd 0x%x scsi status 0x%x srb status 0x%x\0A\00", align 1
@SRB_STATUS_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"stor pkt %p autosense data valid - len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_device*, %struct.vstor_packet*, %struct.storvsc_cmd_request*)* @storvsc_on_io_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_on_io_completion(%struct.storvsc_device* %0, %struct.vstor_packet* %1, %struct.storvsc_cmd_request* %2) #0 {
  %4 = alloca %struct.storvsc_device*, align 8
  %5 = alloca %struct.vstor_packet*, align 8
  %6 = alloca %struct.storvsc_cmd_request*, align 8
  %7 = alloca %struct.vstor_packet*, align 8
  %8 = alloca %struct.hv_device*, align 8
  store %struct.storvsc_device* %0, %struct.storvsc_device** %4, align 8
  store %struct.vstor_packet* %1, %struct.vstor_packet** %5, align 8
  store %struct.storvsc_cmd_request* %2, %struct.storvsc_cmd_request** %6, align 8
  %9 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %10 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %9, i32 0, i32 3
  %11 = load %struct.hv_device*, %struct.hv_device** %10, align 8
  store %struct.hv_device* %11, %struct.hv_device** %8, align 8
  %12 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %13 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %12, i32 0, i32 1
  store %struct.vstor_packet* %13, %struct.vstor_packet** %7, align 8
  %14 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %15 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INQUIRY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %24 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MODE_SENSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %22, %3
  %32 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %33 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @SRB_STATUS_SUCCESS, align 4
  %36 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %37 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %31, %22
  %40 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %41 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %45 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %48 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %52 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %55 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %59 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %62 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %39
  %67 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %68 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SRB_STATUS_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %66, %39
  %74 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %75 = load i32, i32* @STORVSC_LOGGING_WARN, align 4
  %76 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %77 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.storvsc_cmd_request*
  %83 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %84 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %88 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.hv_device*, i32, i8*, %struct.storvsc_cmd_request*, i32, ...) @storvsc_log(%struct.hv_device* %74, i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.storvsc_cmd_request* %82, i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %73, %66
  %93 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %94 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %131

99:                                               ; preds = %92
  %100 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %101 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SRB_STATUS_AUTOSENSE_VALID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %99
  %108 = load %struct.hv_device*, %struct.hv_device** %8, align 8
  %109 = load i32, i32* @STORVSC_LOGGING_WARN, align 4
  %110 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %111 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %112 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.hv_device*, i32, i8*, %struct.storvsc_cmd_request*, i32, ...) @storvsc_log(%struct.hv_device* %108, i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.storvsc_cmd_request* %110, i32 %114)
  %116 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %117 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %122 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %126 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %120, i32 %124, i32 %128)
  br label %130

130:                                              ; preds = %107, %99
  br label %131

131:                                              ; preds = %130, %92
  %132 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %133 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vstor_packet*, %struct.vstor_packet** %7, align 8
  %137 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  %139 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %140 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %141 = call i32 @storvsc_command_completion(%struct.storvsc_cmd_request* %139, %struct.storvsc_device* %140)
  %142 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %143 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %142, i32 0, i32 2
  %144 = call i64 @atomic_dec_and_test(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %131
  %147 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %148 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.storvsc_device*, %struct.storvsc_device** %4, align 8
  %153 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %152, i32 0, i32 0
  %154 = call i32 @wake_up(i32* %153)
  br label %155

155:                                              ; preds = %151, %146, %131
  ret void
}

declare dso_local i32 @storvsc_log(%struct.hv_device*, i32, i8*, %struct.storvsc_cmd_request*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @storvsc_command_completion(%struct.storvsc_cmd_request*, %struct.storvsc_device*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
