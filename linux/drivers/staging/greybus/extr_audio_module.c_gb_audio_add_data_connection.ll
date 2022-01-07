; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gb_audio_add_data_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gb_audio_add_data_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, i32 }
%struct.greybus_descriptor_cport = type { i32 }
%struct.gb_bundle = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gbaudio_data_connection = type { i32, %struct.gb_connection*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_CONNECTION_FLAG_CSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.greybus_descriptor_cport*, %struct.gb_bundle*)* @gb_audio_add_data_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_audio_add_data_connection(%struct.gbaudio_module_info* %0, %struct.greybus_descriptor_cport* %1, %struct.gb_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbaudio_module_info*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_bundle*, align 8
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca %struct.gbaudio_data_connection*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %5, align 8
  store %struct.greybus_descriptor_cport* %1, %struct.greybus_descriptor_cport** %6, align 8
  store %struct.gb_bundle* %2, %struct.gb_bundle** %7, align 8
  %10 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %11 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gbaudio_data_connection* @devm_kzalloc(i32 %12, i32 32, i32 %13)
  store %struct.gbaudio_data_connection* %14, %struct.gbaudio_data_connection** %9, align 8
  %15 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %9, align 8
  %16 = icmp ne %struct.gbaudio_data_connection* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %22 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %23 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = load i32, i32* @GB_CONNECTION_FLAG_CSD, align 4
  %27 = call %struct.gb_connection* @gb_connection_create_offloaded(%struct.gb_bundle* %21, i32 %25, i32 %26)
  store %struct.gb_connection* %27, %struct.gb_connection** %8, align 8
  %28 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %29 = call i64 @IS_ERR(%struct.gb_connection* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %33 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %9, align 8
  %36 = call i32 @devm_kfree(i32 %34, %struct.gbaudio_data_connection* %35)
  %37 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.gb_connection* %37)
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %20
  %40 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %41 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %42 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %40, %struct.gbaudio_module_info* %41)
  %43 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %9, align 8
  %44 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %46 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %9, align 8
  %49 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %51 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %9, align 8
  %52 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %51, i32 0, i32 1
  store %struct.gb_connection* %50, %struct.gb_connection** %52, align 8
  %53 = load %struct.gbaudio_data_connection*, %struct.gbaudio_data_connection** %9, align 8
  %54 = getelementptr inbounds %struct.gbaudio_data_connection, %struct.gbaudio_data_connection* %53, i32 0, i32 0
  %55 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %56 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %55, i32 0, i32 0
  %57 = call i32 @list_add(i32* %54, i32* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %39, %31, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.gbaudio_data_connection* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create_offloaded(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @devm_kfree(i32, %struct.gbaudio_data_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gbaudio_module_info*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
