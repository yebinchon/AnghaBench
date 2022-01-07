; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_lock_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_lock_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32, i32, i32 }
%struct.scsi_request = type { i32, i64*, i32 }

@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@SCSI_REMOVAL_PREVENT = common dso_local global i64 0, align 8
@RQF_QUIET = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@eh_lock_door_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @scsi_eh_lock_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_eh_lock_door(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.scsi_request*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  %9 = call %struct.request* @blk_get_request(i32 %7, i32 %8, i32 0)
  store %struct.request* %9, %struct.request** %3, align 8
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = call i64 @IS_ERR(%struct.request* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = call %struct.scsi_request* @scsi_req(%struct.request* %15)
  store %struct.scsi_request* %16, %struct.scsi_request** %4, align 8
  %17 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %18 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %17, i64* %21, align 8
  %22 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @SCSI_REMOVAL_PREVENT, align 8
  %35 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 4
  store i64 %34, i64* %38, align 8
  %39 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @COMMAND_SIZE(i64 %47)
  %49 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @RQF_QUIET, align 4
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 10, %56
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.scsi_request*, %struct.scsi_request** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %60, i32 0, i32 0
  store i32 5, i32* %61, align 8
  %62 = load %struct.request*, %struct.request** %3, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.request*, %struct.request** %3, align 8
  %66 = load i32, i32* @eh_lock_door_done, align 4
  %67 = call i32 @blk_execute_rq_nowait(i32 %64, i32* null, %struct.request* %65, i32 1, i32 %66)
  br label %68

68:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i32 @COMMAND_SIZE(i64) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
