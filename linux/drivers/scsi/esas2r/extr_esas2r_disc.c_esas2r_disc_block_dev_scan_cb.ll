; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_block_dev_scan_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_block_dev_scan_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.esas2r_disc_context = type { i32, i64, i32, i32 }

@RS_SUCCESS = common dso_local global i64 0, align 8
@DCS_RAID_GRP_INFO = common dso_local global i32 0, align 4
@DCF_POLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_disc_block_dev_scan_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_disc_block_dev_scan_cb(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %7 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %8 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.esas2r_disc_context*
  store %struct.esas2r_disc_context* %10, %struct.esas2r_disc_context** %5, align 8
  %11 = call i32 (...) @esas2r_trace_enter()
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %17 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RS_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %23 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %28 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* @DCS_RAID_GRP_INFO, align 4
  %31 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %32 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %34 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %37 = call i32 @esas2r_rq_destroy_request(%struct.esas2r_request* %35, %struct.esas2r_adapter* %36)
  %38 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %39 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DCF_POLLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  %45 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %46 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %47 = call i32 @esas2r_disc_continue(%struct.esas2r_adapter* %45, %struct.esas2r_request* %46)
  br label %48

48:                                               ; preds = %44, %29
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @esas2r_rq_destroy_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_continue(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
