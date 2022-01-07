; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_ishtp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_ishtp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { i32 }
%struct.ishtp_cl = type { i32 }
%struct.ishtp_cl_data = type { i32, i32, %struct.TYPE_2__, %struct.ishtp_cl_device*, %struct.ishtp_cl* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_lock = common dso_local global i32 0, align 4
@reset_handler = common dso_local global i32 0, align 4
@ish_evt_handler = common dso_local global i32 0, align 4
@ISHTP_CL_DISCONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_device*)* @cros_ec_ishtp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_ishtp_probe(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ishtp_cl*, align 8
  %6 = alloca %struct.ishtp_cl_data*, align 8
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %3, align 8
  %7 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %8 = call i32 @ishtp_device(%struct.ishtp_cl_device* %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ishtp_cl_data* @devm_kzalloc(i32 %8, i32 32, i32 %9)
  store %struct.ishtp_cl_data* %10, %struct.ishtp_cl_data** %6, align 8
  %11 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %12 = icmp ne %struct.ishtp_cl_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = call i32 @down_write(i32* @init_lock)
  %18 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %19 = call %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device* %18)
  store %struct.ishtp_cl* %19, %struct.ishtp_cl** %5, align 8
  %20 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %21 = icmp ne %struct.ishtp_cl* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %16
  %26 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %27 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %28 = call i32 @ishtp_set_drvdata(%struct.ishtp_cl_device* %26, %struct.ishtp_cl* %27)
  %29 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %30 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %31 = call i32 @ishtp_set_client_data(%struct.ishtp_cl* %29, %struct.ishtp_cl_data* %30)
  %32 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %33 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %34 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %33, i32 0, i32 4
  store %struct.ishtp_cl* %32, %struct.ishtp_cl** %34, align 8
  %35 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %36 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %37 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %36, i32 0, i32 3
  store %struct.ishtp_cl_device* %35, %struct.ishtp_cl_device** %37, align 8
  %38 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %39 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @init_waitqueue_head(i32* %40)
  %42 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %43 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %42, i32 0, i32 1
  %44 = load i32, i32* @reset_handler, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %47 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %46, i32 0, i32 0
  %48 = load i32, i32* @ish_evt_handler, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %51 = call i32 @cros_ish_init(%struct.ishtp_cl* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %25
  br label %77

55:                                               ; preds = %25
  %56 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %57 = call i32 @ishtp_get_device(%struct.ishtp_cl_device* %56)
  %58 = call i32 @up_write(i32* @init_lock)
  %59 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %6, align 8
  %60 = call i32 @cros_ec_dev_init(%struct.ishtp_cl_data* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %83

65:                                               ; preds = %63
  %66 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %67 = load i32, i32* @ISHTP_CL_DISCONNECTING, align 4
  %68 = call i32 @ishtp_set_connection_state(%struct.ishtp_cl* %66, i32 %67)
  %69 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %70 = call i32 @ishtp_cl_disconnect(%struct.ishtp_cl* %69)
  %71 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %72 = call i32 @ishtp_cl_unlink(%struct.ishtp_cl* %71)
  %73 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %74 = call i32 @ishtp_cl_flush_queues(%struct.ishtp_cl* %73)
  %75 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %3, align 8
  %76 = call i32 @ishtp_put_device(%struct.ishtp_cl_device* %75)
  br label %77

77:                                               ; preds = %65, %54
  %78 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %79 = call i32 @ishtp_cl_free(%struct.ishtp_cl* %78)
  br label %80

80:                                               ; preds = %77, %22
  %81 = call i32 @up_write(i32* @init_lock)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %64, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.ishtp_cl_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ishtp_device(%struct.ishtp_cl_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.ishtp_cl* @ishtp_cl_allocate(%struct.ishtp_cl_device*) #1

declare dso_local i32 @ishtp_set_drvdata(%struct.ishtp_cl_device*, %struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_set_client_data(%struct.ishtp_cl*, %struct.ishtp_cl_data*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @cros_ish_init(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_get_device(%struct.ishtp_cl_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @cros_ec_dev_init(%struct.ishtp_cl_data*) #1

declare dso_local i32 @ishtp_set_connection_state(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_cl_disconnect(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_unlink(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_flush_queues(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_put_device(%struct.ishtp_cl_device*) #1

declare dso_local i32 @ishtp_cl_free(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
