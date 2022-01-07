; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_reinit_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_reinit_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i64, i32, i32, i32 }

@IBMVFC_HOST_ACTION_NONE = common dso_local global i64 0, align 8
@IBMVFC_INITIALIZING = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_host*)* @ibmvfc_reinit_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_reinit_host(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  %3 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %4 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IBMVFC_HOST_ACTION_NONE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %10 = load i32, i32* @IBMVFC_INITIALIZING, align 4
  %11 = call i32 @ibmvfc_set_host_state(%struct.ibmvfc_host* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @scsi_block_requests(i32 %16)
  %18 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %19 = load i32, i32* @IBMVFC_HOST_ACTION_QUERY, align 4
  %20 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %21
  %26 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %26, i32 0, i32 2
  %28 = call i32 @wake_up(i32* %27)
  ret void
}

declare dso_local i32 @ibmvfc_set_host_state(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
