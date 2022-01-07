; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_send_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_send_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ntb_queue_entry = type { i32, i64, i32*, i32* }

@.str = private unnamed_addr constant [23 x i8] c"qp %d: Send Link Down\0A\00", align 1
@NTB_LINK_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@LINK_DOWN_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ntb: QP%d unable to send linkdown msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*)* @ntb_send_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_send_link_down(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ntb_queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %7 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %21 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %39, %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NTB_LINK_DOWN_TIMEOUT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %29, i32 0, i32 2
  %31 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %31, i32 0, i32 1
  %33 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %30, i32* %32)
  store %struct.ntb_queue_entry* %33, %struct.ntb_queue_entry** %4, align 8
  %34 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %35 = icmp ne %struct.ntb_queue_entry* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  %38 = call i32 @msleep(i32 100)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %24

42:                                               ; preds = %36, %24
  %43 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %44 = icmp ne %struct.ntb_queue_entry* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %71

46:                                               ; preds = %42
  %47 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %48 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %50 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %52 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @LINK_DOWN_FLAG, align 4
  %54 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %55 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %57 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %58 = call i32 @ntb_process_tx(%struct.ntb_transport_qp* %56, %struct.ntb_queue_entry* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %65 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %46
  %69 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %70 = call i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %69)
  br label %71

71:                                               ; preds = %68, %45, %16
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ntb_process_tx(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
