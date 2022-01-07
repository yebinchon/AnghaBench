; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_reset_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_reset_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32, i32, i32, i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@IBMVSCSI_HOST_ACTION_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvscsi_host_data*)* @ibmvscsi_reset_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsi_reset_host(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %2, align 8
  %3 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %4 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @scsi_block_requests(i32 %5)
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %8 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %7, i32 0, i32 2
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %11 = load i32, i32* @DID_ERROR, align 4
  %12 = call i32 @purge_requests(%struct.ibmvscsi_host_data* %10, i32 %11)
  %13 = load i32, i32* @IBMVSCSI_HOST_ACTION_RESET, align 4
  %14 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %16, i32 0, i32 0
  %18 = call i32 @wake_up(i32* %17)
  ret void
}

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @purge_requests(%struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
