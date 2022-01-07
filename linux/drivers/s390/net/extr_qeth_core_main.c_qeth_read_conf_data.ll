; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_read_conf_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_read_conf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.qeth_channel }
%struct.qeth_channel = type { i32 }
%struct.qeth_cmd_buffer = type { i32, i32, i32 }
%struct.ciw = type { i64, i32 }

@CIW_TYPE_RCD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QETH_RCD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_read_conf_data_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_read_conf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_read_conf_data(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_channel*, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.ciw*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 0
  store %struct.qeth_channel* %8, %struct.qeth_channel** %4, align 8
  %9 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CIW_TYPE_RCD, align 4
  %13 = call %struct.ciw* @ccw_device_get_ciw(i32 %11, i32 %12)
  store %struct.ciw* %13, %struct.ciw** %6, align 8
  %14 = load %struct.ciw*, %struct.ciw** %6, align 8
  %15 = icmp ne %struct.ciw* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ciw*, %struct.ciw** %6, align 8
  %18 = getelementptr inbounds %struct.ciw, %struct.ciw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %16
  %25 = load %struct.ciw*, %struct.ciw** %6, align 8
  %26 = getelementptr inbounds %struct.ciw, %struct.ciw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %24
  %34 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %35 = load %struct.ciw*, %struct.ciw** %6, align 8
  %36 = getelementptr inbounds %struct.ciw, %struct.ciw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QETH_RCD_TIMEOUT, align 4
  %39 = call %struct.qeth_cmd_buffer* @qeth_alloc_cmd(%struct.qeth_channel* %34, i32 %37, i32 1, i32 %38)
  store %struct.qeth_cmd_buffer* %39, %struct.qeth_cmd_buffer** %5, align 8
  %40 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %41 = icmp ne %struct.qeth_cmd_buffer* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %33
  %46 = load i32, i32* @qeth_read_conf_data_cb, align 4
  %47 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %50 = call i32 @__ccw_from_cmd(%struct.qeth_cmd_buffer* %49)
  %51 = load %struct.ciw*, %struct.ciw** %6, align 8
  %52 = getelementptr inbounds %struct.ciw, %struct.ciw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @qeth_setup_ccw(i32 %50, i64 %53, i32 0, i32 %56, i32 %59)
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %63 = call i32 @qeth_send_control_data(%struct.qeth_card* %61, %struct.qeth_cmd_buffer* %62, i32* null, i32* null)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %45, %42, %30, %21
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ciw* @ccw_device_get_ciw(i32, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_alloc_cmd(%struct.qeth_channel*, i32, i32, i32) #1

declare dso_local i32 @qeth_setup_ccw(i32, i64, i32, i32, i32) #1

declare dso_local i32 @__ccw_from_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
