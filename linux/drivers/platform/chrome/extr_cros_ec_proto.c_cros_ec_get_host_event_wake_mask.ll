; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_get_host_event_wake_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_get_host_event_wake_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32 }
%struct.cros_ec_command = type { i32, i64, i64, i64, i32 }
%struct.ec_response_host_event_mask = type { i32 }

@EC_CMD_HOST_EVENT_GET_WAKE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ec_command*, i32*)* @cros_ec_get_host_event_wake_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_get_host_event_wake_mask(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1, i32* %2) #0 {
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ec_response_host_event_mask*, align 8
  %8 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @EC_CMD_HOST_EVENT_GET_WAKE_MASK, align 4
  %10 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %11 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %13 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %15 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %17 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %16, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %19 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %20 = call i32 @send_command(%struct.cros_ec_device* %18, %struct.cros_ec_command* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ec_response_host_event_mask*
  store %struct.ec_response_host_event_mask* %27, %struct.ec_response_host_event_mask** %7, align 8
  %28 = load %struct.ec_response_host_event_mask*, %struct.ec_response_host_event_mask** %7, align 8
  %29 = getelementptr inbounds %struct.ec_response_host_event_mask, %struct.ec_response_host_event_mask* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %3
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local i32 @send_command(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
