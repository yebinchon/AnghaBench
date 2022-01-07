; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_passthru_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_passthru_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { %struct.esas2r_disc_context*, i32, %struct.TYPE_6__* }
%struct.esas2r_disc_context = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.atto_vda_devinfo }
%struct.atto_vda_devinfo = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"dev_ix: %d\00", align 1
@VDAMGT_DEV_PT_INFO = common dso_local global i32 0, align 4
@esas2r_disc_passthru_dev_info_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_passthru_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_disc_passthru_dev_info(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atto_vda_devinfo*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 0
  %10 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %9, align 8
  store %struct.esas2r_disc_context* %10, %struct.esas2r_disc_context** %5, align 8
  %11 = call i32 (...) @esas2r_trace_enter()
  %12 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %13 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @esas2r_trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %18 = call i32 @esas2r_rq_init_request(%struct.esas2r_request* %16, %struct.esas2r_adapter* %17)
  %19 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %20 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.atto_vda_devinfo* %24, %struct.atto_vda_devinfo** %7, align 8
  %25 = load %struct.atto_vda_devinfo*, %struct.atto_vda_devinfo** %7, align 8
  %26 = call i32 @memset(%struct.atto_vda_devinfo* %25, i32 0, i32 4)
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %29 = load i32, i32* @VDAMGT_DEV_PT_INFO, align 4
  %30 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %31 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %34 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @esas2r_build_mgt_req(%struct.esas2r_adapter* %27, %struct.esas2r_request* %28, i32 %29, i32 %32, i32 %35, i32 4, i32* null)
  %37 = load i32, i32* @esas2r_disc_passthru_dev_info_cb, align 4
  %38 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %39 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %41 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %42 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %41, i32 0, i32 0
  store %struct.esas2r_disc_context* %40, %struct.esas2r_disc_context** %42, align 8
  %43 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %44 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %45 = call i32 @esas2r_disc_start_request(%struct.esas2r_adapter* %43, %struct.esas2r_request* %44)
  store i32 %45, i32* %6, align 4
  %46 = call i32 (...) @esas2r_trace_exit()
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_rq_init_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i32 @memset(%struct.atto_vda_devinfo*, i32, i32) #1

declare dso_local i32 @esas2r_build_mgt_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @esas2r_disc_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
