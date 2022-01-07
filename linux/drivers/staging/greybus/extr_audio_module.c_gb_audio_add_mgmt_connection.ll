; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gb_audio_add_mgmt_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gb_audio_add_mgmt_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.greybus_descriptor_cport = type { i32 }
%struct.gb_bundle = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Can't have multiple Management connections\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@gbaudio_codec_request_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.greybus_descriptor_cport*, %struct.gb_bundle*)* @gb_audio_add_mgmt_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_audio_add_mgmt_connection(%struct.gbaudio_module_info* %0, %struct.greybus_descriptor_cport* %1, %struct.gb_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbaudio_module_info*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_bundle*, align 8
  %8 = alloca %struct.gb_connection*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %5, align 8
  store %struct.greybus_descriptor_cport* %1, %struct.greybus_descriptor_cport** %6, align 8
  store %struct.gb_bundle* %2, %struct.gb_bundle** %7, align 8
  %9 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %10 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %9, i32 0, i32 0
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  %12 = icmp ne %struct.gb_connection* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %15 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %21 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %22 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load i32, i32* @gbaudio_codec_request_handler, align 4
  %26 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %20, i32 %24, i32 %25)
  store %struct.gb_connection* %26, %struct.gb_connection** %8, align 8
  %27 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %28 = call i64 @IS_ERR(%struct.gb_connection* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.gb_connection* %31)
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %35 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %36 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %34, %struct.gbaudio_module_info* %35)
  %37 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %38 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %39 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %38, i32 0, i32 0
  store %struct.gb_connection* %37, %struct.gb_connection** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %30, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gbaudio_module_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
