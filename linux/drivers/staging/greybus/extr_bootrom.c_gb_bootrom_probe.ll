; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_bootrom.c_gb_bootrom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_bootrom.c_gb_bootrom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_bootrom = type { i32, i32, %struct.gb_connection* }

@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_BOOTROM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_bootrom_request_handler = common dso_local global i32 0, align 4
@gb_bootrom_timedout = common dso_local global i32 0, align 4
@NEXT_REQ_FIRMWARE_SIZE = common dso_local global i32 0, align 4
@NEXT_REQ_TIMEOUT_MS = common dso_local global i32 0, align 4
@GB_BOOTROM_TYPE_AP_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to send AP READY: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"AP_READY sent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_bootrom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_bootrom_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_bootrom*, align 8
  %9 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %11 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %122

17:                                               ; preds = %2
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %19 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 2
  %20 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %19, align 8
  %21 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %20, i64 0
  store %struct.greybus_descriptor_cport* %21, %struct.greybus_descriptor_cport** %6, align 8
  %22 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %23 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GREYBUS_PROTOCOL_BOOTROM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %122

30:                                               ; preds = %17
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.gb_bootrom* @kzalloc(i32 16, i32 %31)
  store %struct.gb_bootrom* %32, %struct.gb_bootrom** %8, align 8
  %33 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %34 = icmp ne %struct.gb_bootrom* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %122

38:                                               ; preds = %30
  %39 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %40 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %41 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i32, i32* @gb_bootrom_request_handler, align 4
  %45 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %39, i32 %43, i32 %44)
  store %struct.gb_connection* %45, %struct.gb_connection** %7, align 8
  %46 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %47 = call i64 @IS_ERR(%struct.gb_connection* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.gb_connection* %50)
  store i32 %51, i32* %9, align 4
  br label %118

52:                                               ; preds = %38
  %53 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %54 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %55 = call i32 @gb_connection_set_data(%struct.gb_connection* %53, %struct.gb_bootrom* %54)
  %56 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %57 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %58 = getelementptr inbounds %struct.gb_bootrom, %struct.gb_bootrom* %57, i32 0, i32 2
  store %struct.gb_connection* %56, %struct.gb_connection** %58, align 8
  %59 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %60 = getelementptr inbounds %struct.gb_bootrom, %struct.gb_bootrom* %59, i32 0, i32 1
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %63 = getelementptr inbounds %struct.gb_bootrom, %struct.gb_bootrom* %62, i32 0, i32 0
  %64 = load i32, i32* @gb_bootrom_timedout, align 4
  %65 = call i32 @INIT_DELAYED_WORK(i32* %63, i32 %64)
  %66 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %67 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %68 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %66, %struct.gb_bootrom* %67)
  %69 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %70 = call i32 @gb_connection_enable_tx(%struct.gb_connection* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %115

74:                                               ; preds = %52
  %75 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %76 = call i32 @gb_bootrom_get_version(%struct.gb_bootrom* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %112

80:                                               ; preds = %74
  %81 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %82 = call i32 @bootrom_es2_fixup_vid_pid(%struct.gb_bootrom* %81)
  %83 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %84 = call i32 @gb_connection_enable(%struct.gb_connection* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %112

88:                                               ; preds = %80
  %89 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %90 = load i32, i32* @NEXT_REQ_FIRMWARE_SIZE, align 4
  %91 = load i32, i32* @NEXT_REQ_TIMEOUT_MS, align 4
  %92 = call i32 @gb_bootrom_set_timeout(%struct.gb_bootrom* %89, i32 %90, i32 %91)
  %93 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %94 = load i32, i32* @GB_BOOTROM_TYPE_AP_READY, align 4
  %95 = call i32 @gb_operation_sync(%struct.gb_connection* %93, i32 %94, i32* null, i32 0, i32* null, i32 0)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %100 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %109

105:                                              ; preds = %88
  %106 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %107 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %106, i32 0, i32 1
  %108 = call i32 @dev_dbg(i32* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %122

109:                                              ; preds = %98
  %110 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %111 = call i32 @gb_bootrom_cancel_timeout(%struct.gb_bootrom* %110)
  br label %112

112:                                              ; preds = %109, %87, %79
  %113 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %114 = call i32 @gb_connection_disable(%struct.gb_connection* %113)
  br label %115

115:                                              ; preds = %112, %73
  %116 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %117 = call i32 @gb_connection_destroy(%struct.gb_connection* %116)
  br label %118

118:                                              ; preds = %115, %49
  %119 = load %struct.gb_bootrom*, %struct.gb_bootrom** %8, align 8
  %120 = call i32 @kfree(%struct.gb_bootrom* %119)
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %105, %35, %27, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.gb_bootrom* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_bootrom*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_bootrom*) #1

declare dso_local i32 @gb_connection_enable_tx(%struct.gb_connection*) #1

declare dso_local i32 @gb_bootrom_get_version(%struct.gb_bootrom*) #1

declare dso_local i32 @bootrom_es2_fixup_vid_pid(%struct.gb_bootrom*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_bootrom_set_timeout(%struct.gb_bootrom*, i32, i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @gb_bootrom_cancel_timeout(%struct.gb_bootrom*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_bootrom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
