; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_write_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_write_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i32 }
%struct.esas2r_request = type { i64, i32 }
%struct.esas2r_sas_nvram = type { i32 }

@complete_nvr_req = common dso_local global i32 0, align 4
@RS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_write_params(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, %struct.esas2r_sas_nvram* %2) #0 {
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_request*, align 8
  %6 = alloca %struct.esas2r_sas_nvram*, align 8
  %7 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %5, align 8
  store %struct.esas2r_sas_nvram* %2, %struct.esas2r_sas_nvram** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @complete_nvr_req, align 4
  %11 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %12 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %14 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %15 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %6, align 8
  %16 = call i64 @esas2r_nvram_write(%struct.esas2r_adapter* %13, %struct.esas2r_request* %14, %struct.esas2r_sas_nvram* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %25, %18
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @wait_event_interruptible(i32 %28, i64 %31)
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.esas2r_request*, %struct.esas2r_request** %5, align 8
  %35 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RS_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i64 @esas2r_nvram_write(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sas_nvram*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
