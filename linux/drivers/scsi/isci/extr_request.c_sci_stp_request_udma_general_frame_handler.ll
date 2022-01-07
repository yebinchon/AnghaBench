; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_stp_request_udma_general_frame_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_stp_request_udma_general_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_2__, %struct.isci_host* }
%struct.TYPE_2__ = type { i32 }
%struct.isci_host = type { i32 }
%struct.dev_to_host_fis = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@FIS_REGD2H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_request*, i32)* @sci_stp_request_udma_general_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_stp_request_udma_general_frame_handler(%struct.isci_request* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.dev_to_host_fis*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %10 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %9, i32 0, i32 1
  %11 = load %struct.isci_host*, %struct.isci_host** %10, align 8
  store %struct.isci_host* %11, %struct.isci_host** %5, align 8
  %12 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = bitcast %struct.dev_to_host_fis** %6 to i8**
  %16 = call i32 @sci_unsolicited_frame_control_get_header(i32* %13, i32 %14, i8** %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SCI_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %6, align 8
  %22 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FIS_REGD2H, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %28 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = bitcast i32** %8 to i8**
  %31 = call i32 @sci_unsolicited_frame_control_get_buffer(i32* %28, i32 %29, i8** %30)
  %32 = load %struct.isci_request*, %struct.isci_request** %3, align 8
  %33 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @sci_controller_copy_sata_response(i32* %34, %struct.dev_to_host_fis* %35, i32* %36)
  br label %38

38:                                               ; preds = %26, %20, %2
  %39 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @sci_controller_release_frame(%struct.isci_host* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @sci_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local i32 @sci_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i32 @sci_controller_copy_sata_response(i32*, %struct.dev_to_host_fis*, i32*) #1

declare dso_local i32 @sci_controller_release_frame(%struct.isci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
