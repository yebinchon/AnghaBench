; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_qp_link_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_qp_link_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32 (i32, i32)*, i32, i32, %struct.ntb_transport_ctx* }
%struct.ntb_transport_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"qp %d: Link Cleanup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*)* @ntb_qp_link_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_qp_link_cleanup(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %5 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %6 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %5, i32 0, i32 5
  %7 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %6, align 8
  store %struct.ntb_transport_ctx* %7, %struct.ntb_transport_ctx** %3, align 8
  %8 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 3
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %23 = call i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %22)
  %24 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %24, i32 0, i32 2
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = icmp ne i32 (i32, i32)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %29, i32 0, i32 2
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %33 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %36 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %31(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
