; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_log.c_gb_log_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_log.c_gb_log_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_log = type { %struct.gb_connection* }

@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_LOG = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_log_request_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_log_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_log_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_log*, align 8
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
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %19 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 1
  %20 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %19, align 8
  %21 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %20, i64 0
  store %struct.greybus_descriptor_cport* %21, %struct.greybus_descriptor_cport** %6, align 8
  %22 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %23 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GREYBUS_PROTOCOL_LOG, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %17
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.gb_log* @kzalloc(i32 8, i32 %31)
  store %struct.gb_log* %32, %struct.gb_log** %8, align 8
  %33 = load %struct.gb_log*, %struct.gb_log** %8, align 8
  %34 = icmp ne %struct.gb_log* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %30
  %39 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %40 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %41 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i32, i32* @gb_log_request_handler, align 4
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
  br label %68

52:                                               ; preds = %38
  %53 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %54 = load %struct.gb_log*, %struct.gb_log** %8, align 8
  %55 = getelementptr inbounds %struct.gb_log, %struct.gb_log* %54, i32 0, i32 0
  store %struct.gb_connection* %53, %struct.gb_connection** %55, align 8
  %56 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %57 = load %struct.gb_log*, %struct.gb_log** %8, align 8
  %58 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %56, %struct.gb_log* %57)
  %59 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %60 = call i32 @gb_connection_enable(%struct.gb_connection* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %72

65:                                               ; preds = %63
  %66 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %67 = call i32 @gb_connection_destroy(%struct.gb_connection* %66)
  br label %68

68:                                               ; preds = %65, %49
  %69 = load %struct.gb_log*, %struct.gb_log** %8, align 8
  %70 = call i32 @kfree(%struct.gb_log* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %64, %35, %27, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.gb_log* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_log*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
