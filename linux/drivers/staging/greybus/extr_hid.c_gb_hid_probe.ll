; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type opaque
%struct.hid_device = type { i32 }
%struct.gb_hid = type { %struct.gb_bundle*, %struct.hid_device*, %struct.hid_device* }

@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_HID = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_hid_request_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't add hid device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_hid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.gb_hid*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %12 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %121

18:                                               ; preds = %2
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %20 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %19, i32 0, i32 1
  %21 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %20, align 8
  %22 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %21, i64 0
  store %struct.greybus_descriptor_cport* %22, %struct.greybus_descriptor_cport** %6, align 8
  %23 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %24 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GREYBUS_PROTOCOL_HID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %18
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.gb_hid* @kzalloc(i32 24, i32 %32)
  store %struct.gb_hid* %33, %struct.gb_hid** %9, align 8
  %34 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %35 = icmp ne %struct.gb_hid* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %121

39:                                               ; preds = %31
  %40 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %41 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %42 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load i32, i32* @gb_hid_request_handler, align 4
  %46 = call %struct.hid_device* @gb_connection_create(%struct.gb_bundle* %40, i32 %44, i32 %45)
  %47 = bitcast %struct.hid_device* %46 to %struct.gb_connection*
  store %struct.gb_connection* %47, %struct.gb_connection** %7, align 8
  %48 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %49 = bitcast %struct.gb_connection* %48 to %struct.hid_device*
  %50 = call i64 @IS_ERR(%struct.hid_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %54 = bitcast %struct.gb_connection* %53 to %struct.hid_device*
  %55 = call i32 @PTR_ERR(%struct.hid_device* %54)
  store i32 %55, i32* %10, align 4
  br label %117

56:                                               ; preds = %39
  %57 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %58 = bitcast %struct.gb_connection* %57 to %struct.hid_device*
  %59 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %60 = call i32 @gb_connection_set_data(%struct.hid_device* %58, %struct.gb_hid* %59)
  %61 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %62 = bitcast %struct.gb_connection* %61 to %struct.hid_device*
  %63 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %64 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %63, i32 0, i32 2
  store %struct.hid_device* %62, %struct.hid_device** %64, align 8
  %65 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %65, %struct.hid_device** %8, align 8
  %66 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %67 = call i64 @IS_ERR(%struct.hid_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %71 = call i32 @PTR_ERR(%struct.hid_device* %70)
  store i32 %71, i32* %10, align 4
  br label %113

72:                                               ; preds = %56
  %73 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %74 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %75 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %74, i32 0, i32 1
  store %struct.hid_device* %73, %struct.hid_device** %75, align 8
  %76 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %77 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %78 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %77, i32 0, i32 0
  store %struct.gb_bundle* %76, %struct.gb_bundle** %78, align 8
  %79 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %80 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %81 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %79, %struct.gb_hid* %80)
  %82 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %83 = bitcast %struct.gb_connection* %82 to %struct.hid_device*
  %84 = call i32 @gb_connection_enable(%struct.hid_device* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %110

88:                                               ; preds = %72
  %89 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %90 = call i32 @gb_hid_init(%struct.gb_hid* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %106

94:                                               ; preds = %88
  %95 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %96 = call i32 @hid_add_device(%struct.hid_device* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @hid_err(%struct.hid_device* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %106

103:                                              ; preds = %94
  %104 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %105 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %104)
  store i32 0, i32* %3, align 4
  br label %121

106:                                              ; preds = %99, %93
  %107 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %108 = bitcast %struct.gb_connection* %107 to %struct.hid_device*
  %109 = call i32 @gb_connection_disable(%struct.hid_device* %108)
  br label %110

110:                                              ; preds = %106, %87
  %111 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %112 = call i32 @hid_destroy_device(%struct.hid_device* %111)
  br label %113

113:                                              ; preds = %110, %69
  %114 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %115 = bitcast %struct.gb_connection* %114 to %struct.hid_device*
  %116 = call i32 @gb_connection_destroy(%struct.hid_device* %115)
  br label %117

117:                                              ; preds = %113, %52
  %118 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  %119 = call i32 @kfree(%struct.gb_hid* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %103, %36, %28, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.gb_hid* @kzalloc(i32, i32) #1

declare dso_local %struct.hid_device* @gb_connection_create(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i32 @gb_connection_set_data(%struct.hid_device*, %struct.gb_hid*) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_hid*) #1

declare dso_local i32 @gb_connection_enable(%struct.hid_device*) #1

declare dso_local i32 @gb_hid_init(%struct.gb_hid*) #1

declare dso_local i32 @hid_add_device(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @gb_connection_disable(%struct.hid_device*) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @gb_connection_destroy(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.gb_hid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
