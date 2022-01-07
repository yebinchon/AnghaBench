; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ish_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ish_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }
%struct.ishtp_device = type { i32 }
%struct.ishtp_fw_client = type { i32 }
%struct.ishtp_cl_data = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ishtp_cl_link failed\0A\00", align 1
@CROS_ISH_CL_TX_RING_SIZE = common dso_local global i32 0, align 4
@CROS_ISH_CL_RX_RING_SIZE = common dso_local global i32 0, align 4
@cros_ish_guid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ish client uuid not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ISHTP_CL_CONNECTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"client connect fail\0A\00", align 1
@ish_event_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl*)* @cros_ish_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ish_init(%struct.ishtp_cl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ishtp_device*, align 8
  %6 = alloca %struct.ishtp_fw_client*, align 8
  %7 = alloca %struct.ishtp_cl_data*, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %3, align 8
  %8 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %9 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %8)
  store %struct.ishtp_cl_data* %9, %struct.ishtp_cl_data** %7, align 8
  %10 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %11 = call i32 @ishtp_cl_link(%struct.ishtp_cl* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %16 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %15)
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %21 = call %struct.ishtp_device* @ishtp_get_ishtp_device(%struct.ishtp_cl* %20)
  store %struct.ishtp_device* %21, %struct.ishtp_device** %5, align 8
  %22 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %23 = load i32, i32* @CROS_ISH_CL_TX_RING_SIZE, align 4
  %24 = call i32 @ishtp_set_tx_ring_size(%struct.ishtp_cl* %22, i32 %23)
  %25 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %26 = load i32, i32* @CROS_ISH_CL_RX_RING_SIZE, align 4
  %27 = call i32 @ishtp_set_rx_ring_size(%struct.ishtp_cl* %25, i32 %26)
  %28 = load %struct.ishtp_device*, %struct.ishtp_device** %5, align 8
  %29 = call %struct.ishtp_fw_client* @ishtp_fw_cl_get_client(%struct.ishtp_device* %28, i32* @cros_ish_guid)
  store %struct.ishtp_fw_client* %29, %struct.ishtp_fw_client** %6, align 8
  %30 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %6, align 8
  %31 = icmp ne %struct.ishtp_fw_client* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %34 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %33)
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %19
  %39 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %40 = load %struct.ishtp_fw_client*, %struct.ishtp_fw_client** %6, align 8
  %41 = call i32 @ishtp_get_fw_client_id(%struct.ishtp_fw_client* %40)
  %42 = call i32 @ishtp_cl_set_fw_client_id(%struct.ishtp_cl* %39, i32 %41)
  %43 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %44 = load i32, i32* @ISHTP_CL_CONNECTING, align 4
  %45 = call i32 @ishtp_set_connection_state(%struct.ishtp_cl* %43, i32 %44)
  %46 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %47 = call i32 @ishtp_cl_connect(%struct.ishtp_cl* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %52 = call i32 @cl_data_to_dev(%struct.ishtp_cl_data* %51)
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %60

54:                                               ; preds = %38
  %55 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %7, align 8
  %56 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ish_event_cb, align 4
  %59 = call i32 @ishtp_register_event_cb(i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %50, %32
  %61 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %62 = call i32 @ishtp_cl_unlink(%struct.ishtp_cl* %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %54, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_link(%struct.ishtp_cl*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local %struct.ishtp_device* @ishtp_get_ishtp_device(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_set_tx_ring_size(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_set_rx_ring_size(%struct.ishtp_cl*, i32) #1

declare dso_local %struct.ishtp_fw_client* @ishtp_fw_cl_get_client(%struct.ishtp_device*, i32*) #1

declare dso_local i32 @ishtp_cl_set_fw_client_id(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_get_fw_client_id(%struct.ishtp_fw_client*) #1

declare dso_local i32 @ishtp_set_connection_state(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_cl_connect(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_register_event_cb(i32, i32) #1

declare dso_local i32 @ishtp_cl_unlink(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
