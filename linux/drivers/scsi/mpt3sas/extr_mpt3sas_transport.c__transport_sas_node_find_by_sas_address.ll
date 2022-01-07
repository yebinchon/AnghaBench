; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_sas_node_find_by_sas_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_sas_node_find_by_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._sas_node = type { i64 }
%struct.MPT3SAS_ADAPTER = type { %struct._sas_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._sas_node* (%struct.MPT3SAS_ADAPTER*, i64)* @_transport_sas_node_find_by_sas_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._sas_node* @_transport_sas_node_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %0, i64 %1) #0 {
  %3 = alloca %struct._sas_node*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %7 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct._sas_node, %struct._sas_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %14 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %13, i32 0, i32 0
  store %struct._sas_node* %14, %struct._sas_node** %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct._sas_node* @mpt3sas_scsih_expander_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %16, i64 %17)
  store %struct._sas_node* %18, %struct._sas_node** %3, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load %struct._sas_node*, %struct._sas_node** %3, align 8
  ret %struct._sas_node* %20
}

declare dso_local %struct._sas_node* @mpt3sas_scsih_expander_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
