; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gbphy_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gbphy_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.gbphy_device = type { i32, %struct.gb_bundle*, %struct.greybus_descriptor_cport* }
%struct.gb_bundle = type { i32, i32, %struct.gb_interface* }
%struct.gb_interface = type { i32, i32, i32, %struct.gb_host_device*, %struct.gb_module* }
%struct.gb_host_device = type { i32 }
%struct.gb_module = type { i32 }
%struct.greybus_descriptor_cport = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"BUS=%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MODULE=%u\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"INTERFACE=%u\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"GREYBUS_ID=%08x/%08x\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"BUNDLE=%u\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"BUNDLE_CLASS=%02x\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"GBPHY=%u\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"PROTOCOL_ID=%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @gbphy_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbphy_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.gbphy_device*, align 8
  %7 = alloca %struct.greybus_descriptor_cport*, align 8
  %8 = alloca %struct.gb_bundle*, align 8
  %9 = alloca %struct.gb_interface*, align 8
  %10 = alloca %struct.gb_module*, align 8
  %11 = alloca %struct.gb_host_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.gbphy_device* @to_gbphy_dev(%struct.device* %12)
  store %struct.gbphy_device* %13, %struct.gbphy_device** %6, align 8
  %14 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %15 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %14, i32 0, i32 2
  %16 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %15, align 8
  store %struct.greybus_descriptor_cport* %16, %struct.greybus_descriptor_cport** %7, align 8
  %17 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %18 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %17, i32 0, i32 1
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %18, align 8
  store %struct.gb_bundle* %19, %struct.gb_bundle** %8, align 8
  %20 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %21 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %20, i32 0, i32 2
  %22 = load %struct.gb_interface*, %struct.gb_interface** %21, align 8
  store %struct.gb_interface* %22, %struct.gb_interface** %9, align 8
  %23 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %24 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %23, i32 0, i32 4
  %25 = load %struct.gb_module*, %struct.gb_module** %24, align 8
  store %struct.gb_module* %25, %struct.gb_module** %10, align 8
  %26 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %27 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %26, i32 0, i32 3
  %28 = load %struct.gb_host_device*, %struct.gb_host_device** %27, align 8
  store %struct.gb_host_device* %28, %struct.gb_host_device** %11, align 8
  %29 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %30 = load %struct.gb_host_device*, %struct.gb_host_device** %11, align 8
  %31 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %114

38:                                               ; preds = %2
  %39 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %40 = load %struct.gb_module*, %struct.gb_module** %10, align 8
  %41 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %114

48:                                               ; preds = %38
  %49 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %50 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %51 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %114

58:                                               ; preds = %48
  %59 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %60 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %61 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gb_interface*, %struct.gb_interface** %9, align 8
  %64 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %114

71:                                               ; preds = %58
  %72 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %73 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %74 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %73, i32 0, i32 1
  %75 = load %struct.gb_bundle*, %struct.gb_bundle** %74, align 8
  %76 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %71
  %84 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %85 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  %86 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %114

93:                                               ; preds = %83
  %94 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %95 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %96 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %114

103:                                              ; preds = %93
  %104 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %105 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %7, align 8
  %106 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %110, %100, %90, %80, %68, %55, %45, %35
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.gbphy_device* @to_gbphy_dev(%struct.device*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
