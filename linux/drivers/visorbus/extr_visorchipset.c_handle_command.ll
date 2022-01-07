; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.controlvm_message = type { %struct.TYPE_13__, %struct.controlvm_message_packet }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.controlvm_message_packet = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.parser_context = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CONTROLVM_RESP_SUCCESS = common dso_local global i32 0, align 4
@chipset_dev = common dso_local global %struct.TYPE_14__* null, align 8
@CONTROLVM_QUEUE_ACK = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@CONTROLVM_RESP_ID_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*, i64)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_command(%struct.controlvm_message* byval(%struct.controlvm_message) align 8 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.controlvm_message_packet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.parser_context*, align 8
  %9 = alloca %struct.controlvm_message, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %1, i64* %4, align 8
  %12 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 1
  store %struct.controlvm_message_packet* %12, %struct.controlvm_message_packet** %5, align 8
  store %struct.parser_context* null, %struct.parser_context** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.parser_context* @parser_init_stream(i64 %24, i64 %25, i32* %11)
  store %struct.parser_context* %26, %struct.parser_context** %8, align 8
  %27 = load %struct.parser_context*, %struct.parser_context** %8, align 8
  %28 = icmp ne %struct.parser_context* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %120

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %2
  %37 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %38 = load i32, i32* @CONTROLVM_RESP_SUCCESS, align 4
  %39 = call i32 @controlvm_init_response(%struct.controlvm_message* %9, %struct.TYPE_13__* %37, i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @chipset_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CONTROLVM_QUEUE_ACK, align 4
  %44 = call i32 @visorchannel_signalinsert(i32 %42, i32 %43, %struct.controlvm_message* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %98 [
    i32 135, label %53
    i32 137, label %55
    i32 136, label %57
    i32 138, label %59
    i32 129, label %62
    i32 131, label %64
    i32 128, label %76
    i32 130, label %78
    i32 134, label %89
    i32 133, label %92
    i32 132, label %95
  ]

53:                                               ; preds = %49
  %54 = call i32 @chipset_init(%struct.controlvm_message* %0)
  store i32 %54, i32* %10, align 4
  br label %112

55:                                               ; preds = %49
  %56 = call i32 @visorbus_create(%struct.controlvm_message* %0)
  store i32 %56, i32* %10, align 4
  br label %112

57:                                               ; preds = %49
  %58 = call i32 @visorbus_destroy(%struct.controlvm_message* %0)
  store i32 %58, i32* %10, align 4
  br label %112

59:                                               ; preds = %49
  %60 = load %struct.parser_context*, %struct.parser_context** %8, align 8
  %61 = call i32 @visorbus_configure(%struct.controlvm_message* %0, %struct.parser_context* %60)
  store i32 %61, i32* %10, align 4
  br label %112

62:                                               ; preds = %49
  %63 = call i32 @visorbus_device_create(%struct.controlvm_message* %0)
  store i32 %63, i32* %10, align 4
  br label %112

64:                                               ; preds = %49
  %65 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %5, align 8
  %66 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 @parahotplug_process_message(%struct.controlvm_message* %0)
  store i32 %72, i32* %10, align 4
  br label %75

73:                                               ; preds = %64
  %74 = call i32 @visorbus_device_changestate(%struct.controlvm_message* %0)
  store i32 %74, i32* %10, align 4
  br label %112

75:                                               ; preds = %71
  br label %112

76:                                               ; preds = %49
  %77 = call i32 @visorbus_device_destroy(%struct.controlvm_message* %0)
  store i32 %77, i32* %10, align 4
  br label %112

78:                                               ; preds = %49
  %79 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %86 = load i32, i32* @CONTROLVM_RESP_SUCCESS, align 4
  %87 = call i32 @controlvm_respond(%struct.TYPE_13__* %85, i32 %86, i32* null)
  br label %88

88:                                               ; preds = %84, %78
  br label %112

89:                                               ; preds = %49
  %90 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %91 = call i32 @chipset_ready_uevent(%struct.TYPE_13__* %90)
  store i32 %91, i32* %10, align 4
  br label %112

92:                                               ; preds = %49
  %93 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %94 = call i32 @chipset_selftest_uevent(%struct.TYPE_13__* %93)
  store i32 %94, i32* %10, align 4
  br label %112

95:                                               ; preds = %49
  %96 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %97 = call i32 @chipset_notready_uevent(%struct.TYPE_13__* %96)
  store i32 %97, i32* %10, align 4
  br label %112

98:                                               ; preds = %49
  %99 = load i32, i32* @ENOMSG, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  %101 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %0, i32 0, i32 0
  %108 = load i32, i32* @CONTROLVM_RESP_ID_UNKNOWN, align 4
  %109 = sub nsw i32 0, %108
  %110 = call i32 @controlvm_respond(%struct.TYPE_13__* %107, i32 %109, i32* null)
  br label %111

111:                                              ; preds = %106, %98
  br label %112

112:                                              ; preds = %111, %95, %92, %89, %88, %76, %75, %73, %62, %59, %57, %55, %53
  %113 = load %struct.parser_context*, %struct.parser_context** %8, align 8
  %114 = icmp ne %struct.parser_context* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.parser_context*, %struct.parser_context** %8, align 8
  %117 = call i32 @parser_done(%struct.parser_context* %116)
  store %struct.parser_context* null, %struct.parser_context** %8, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %47, %32
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.parser_context* @parser_init_stream(i64, i64, i32*) #1

declare dso_local i32 @controlvm_init_response(%struct.controlvm_message*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @visorchannel_signalinsert(i32, i32, %struct.controlvm_message*) #1

declare dso_local i32 @chipset_init(%struct.controlvm_message*) #1

declare dso_local i32 @visorbus_create(%struct.controlvm_message*) #1

declare dso_local i32 @visorbus_destroy(%struct.controlvm_message*) #1

declare dso_local i32 @visorbus_configure(%struct.controlvm_message*, %struct.parser_context*) #1

declare dso_local i32 @visorbus_device_create(%struct.controlvm_message*) #1

declare dso_local i32 @parahotplug_process_message(%struct.controlvm_message*) #1

declare dso_local i32 @visorbus_device_changestate(%struct.controlvm_message*) #1

declare dso_local i32 @visorbus_device_destroy(%struct.controlvm_message*) #1

declare dso_local i32 @controlvm_respond(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @chipset_ready_uevent(%struct.TYPE_13__*) #1

declare dso_local i32 @chipset_selftest_uevent(%struct.TYPE_13__*) #1

declare dso_local i32 @chipset_notready_uevent(%struct.TYPE_13__*) #1

declare dso_local i32 @parser_done(%struct.parser_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
