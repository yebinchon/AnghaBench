; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_context.c_sci_rnc_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_context.c_sci_rnc_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.scu_remote_node_context = type { i32 }
%struct.isci_host = type { i64, %union.scu_remote_node_context*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.scu_remote_node_context* (%struct.isci_host*, i64)* @sci_rnc_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.scu_remote_node_context* @sci_rnc_by_id(%struct.isci_host* %0, i64 %1) #0 {
  %3 = alloca %union.scu_remote_node_context*, align 8
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %8 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %21 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %20, i32 0, i32 1
  %22 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %union.scu_remote_node_context, %union.scu_remote_node_context* %22, i64 %23
  store %union.scu_remote_node_context* %24, %union.scu_remote_node_context** %3, align 8
  br label %26

25:                                               ; preds = %11, %2
  store %union.scu_remote_node_context* null, %union.scu_remote_node_context** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %3, align 8
  ret %union.scu_remote_node_context* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
