; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fc_fcp_internal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FC_XID_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_fcp_pkt* (%struct.fc_lport*, i32)* @fc_fcp_pkt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_fcp_pkt* @fc_fcp_pkt_alloc(%struct.fc_lport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_fcp_internal*, align 8
  %6 = alloca %struct.fc_fcp_pkt*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport* %7)
  store %struct.fc_fcp_internal* %8, %struct.fc_fcp_internal** %5, align 8
  %9 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %10 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.fc_fcp_pkt* @mempool_alloc(i32 %11, i32 %12)
  store %struct.fc_fcp_pkt* %13, %struct.fc_fcp_pkt** %6, align 8
  %14 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %15 = icmp ne %struct.fc_fcp_pkt* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %18 = call i32 @memset(%struct.fc_fcp_pkt* %17, i32 0, i32 32)
  %19 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %20 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %21 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %20, i32 0, i32 5
  store %struct.fc_lport* %19, %struct.fc_lport** %21, align 8
  %22 = load i32, i32* @FC_XID_UNKNOWN, align 4
  %23 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %24 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %26 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %25, i32 0, i32 3
  %27 = call i32 @refcount_set(i32* %26, i32 1)
  %28 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %29 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %28, i32 0, i32 2
  %30 = call i32 @timer_setup(i32* %29, i32* null, i32 0)
  %31 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %32 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  %35 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_init(i32* %35)
  br label %47

37:                                               ; preds = %2
  %38 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (...) @get_cpu()
  %42 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = call i32 (...) @put_cpu()
  br label %47

47:                                               ; preds = %37, %16
  %48 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %6, align 8
  ret %struct.fc_fcp_pkt* %48
}

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport*) #1

declare dso_local %struct.fc_fcp_pkt* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.fc_fcp_pkt*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
