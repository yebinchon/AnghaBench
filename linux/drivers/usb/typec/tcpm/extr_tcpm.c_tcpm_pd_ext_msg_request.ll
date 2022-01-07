; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_ext_msg_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_ext_msg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32 }
%struct.pd_message = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@PD_EXT_HDR_CHUNKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unchunked extended messages unsupported\00", align 1
@PD_EXT_MAX_CHUNK_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Chunk handling not yet supported\00", align 1
@USB_PD_EXT_SDB_EVENT_FLAGS = common dso_local global i64 0, align 8
@USB_PD_EXT_SDB_PPS_EVENTS = common dso_local global i32 0, align 4
@GET_PPS_STATUS_SEND = common dso_local global i32 0, align 4
@PD_MSG_CTRL_NOT_SUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unhandled extended message type %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, %struct.pd_message*)* @tcpm_pd_ext_msg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_pd_ext_msg_request(%struct.tcpm_port* %0, %struct.pd_message* %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %struct.pd_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store %struct.pd_message* %1, %struct.pd_message** %4, align 8
  %7 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %8 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pd_header_type_le(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %12 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pd_ext_header_data_size_le(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %17 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PD_EXT_HDR_CHUNKED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %25 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %69

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PD_EXT_MAX_CHUNK_DATA, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %32 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %69

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %65 [
    i32 128, label %35
    i32 132, label %56
    i32 129, label %61
    i32 136, label %61
    i32 135, label %61
    i32 141, label %61
    i32 134, label %61
    i32 133, label %61
    i32 131, label %61
    i32 130, label %61
    i32 138, label %61
    i32 137, label %61
    i32 139, label %61
    i32 140, label %61
  ]

35:                                               ; preds = %33
  %36 = load %struct.pd_message*, %struct.pd_message** %4, align 8
  %37 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @USB_PD_EXT_SDB_EVENT_FLAGS, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_PD_EXT_SDB_PPS_EVENTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %48 = load i32, i32* @GET_PPS_STATUS_SEND, align 4
  %49 = call i32 @tcpm_set_state(%struct.tcpm_port* %47, i32 %48, i32 0)
  br label %55

50:                                               ; preds = %35
  %51 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %52 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %53 = call i32 @ready_state(%struct.tcpm_port* %52)
  %54 = call i32 @tcpm_set_state(%struct.tcpm_port* %51, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %46
  br label %69

56:                                               ; preds = %33
  %57 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %58 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %59 = call i32 @ready_state(%struct.tcpm_port* %58)
  %60 = call i32 @tcpm_set_state(%struct.tcpm_port* %57, i32 %59, i32 0)
  br label %69

61:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  %62 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %63 = load i32, i32* @PD_MSG_CTRL_NOT_SUPP, align 4
  %64 = call i32 @tcpm_queue_message(%struct.tcpm_port* %62, i32 %63)
  br label %69

65:                                               ; preds = %33
  %66 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %23, %30, %65, %61, %56, %55
  ret void
}

declare dso_local i32 @pd_header_type_le(i32) #1

declare dso_local i32 @pd_ext_header_data_size_le(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, ...) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @ready_state(%struct.tcpm_port*) #1

declare dso_local i32 @tcpm_queue_message(%struct.tcpm_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
