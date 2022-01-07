; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_protocol_negotiation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_protocol_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32 }
%struct.pci_version_request = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hv_pci_compl = type { i32, i32 }
%struct.pci_packet = type { i32, %struct.hv_pci_compl*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hv_pci_generic_compl = common dso_local global i32 0, align 4
@PCI_QUERY_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@pci_protocol_versions = common dso_local global i8** null, align 8
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"PCI Pass-through VSP failed to request version: %d\00", align 1
@pci_protocol_version = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"PCI VMBus probing: Using version %#x\0A\00", align 1
@STATUS_REVISION_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"PCI Pass-through VSP failed version request: %#x\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"PCI pass-through VSP failed to find supported version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_pci_protocol_negotiation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_pci_protocol_negotiation(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.pci_version_request*, align 8
  %5 = alloca %struct.hv_pci_compl, align 4
  %6 = alloca %struct.pci_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pci_packet* @kzalloc(i32 40, i32 %9)
  store %struct.pci_packet* %10, %struct.pci_packet** %6, align 8
  %11 = load %struct.pci_packet*, %struct.pci_packet** %6, align 8
  %12 = icmp ne %struct.pci_packet* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %5, i32 0, i32 0
  %18 = call i32 @init_completion(i32* %17)
  %19 = load i32, i32* @hv_pci_generic_compl, align 4
  %20 = load %struct.pci_packet*, %struct.pci_packet** %6, align 8
  %21 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.pci_packet*, %struct.pci_packet** %6, align 8
  %23 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %22, i32 0, i32 1
  store %struct.hv_pci_compl* %5, %struct.hv_pci_compl** %23, align 8
  %24 = load %struct.pci_packet*, %struct.pci_packet** %6, align 8
  %25 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.pci_version_request*
  store %struct.pci_version_request* %26, %struct.pci_version_request** %4, align 8
  %27 = load i32, i32* @PCI_QUERY_PROTOCOL_VERSION, align 4
  %28 = load %struct.pci_version_request*, %struct.pci_version_request** %4, align 8
  %29 = getelementptr inbounds %struct.pci_version_request, %struct.pci_version_request* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %97, %16
  %32 = load i32, i32* %8, align 4
  %33 = load i8**, i8*** @pci_protocol_versions, align 8
  %34 = call i32 @ARRAY_SIZE(i8** %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %31
  %37 = load i8**, i8*** @pci_protocol_versions, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.pci_version_request*, %struct.pci_version_request** %4, align 8
  %43 = getelementptr inbounds %struct.pci_version_request, %struct.pci_version_request* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %45 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pci_version_request*, %struct.pci_version_request** %4, align 8
  %48 = load %struct.pci_packet*, %struct.pci_packet** %6, align 8
  %49 = ptrtoint %struct.pci_packet* %48 to i64
  %50 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %51 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %52 = call i32 @vmbus_sendpacket(i32 %46, %struct.pci_version_request* %47, i32 16, i64 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %36
  %56 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %57 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %5, i32 0, i32 0
  %58 = call i32 @wait_for_response(%struct.hv_device* %56, i32* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %36
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %64 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %106

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i8**, i8*** @pci_protocol_versions, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** @pci_protocol_version, align 8
  %77 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %78 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %77, i32 0, i32 0
  %79 = load i8*, i8** @pci_protocol_version, align 8
  %80 = call i32 @dev_info(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %106

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @STATUS_REVISION_MISMATCH, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %88 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EPROTO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %106

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %5, i32 0, i32 0
  %96 = call i32 @reinit_completion(i32* %95)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %31

100:                                              ; preds = %31
  %101 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %102 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @EPROTO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %100, %86, %71, %62
  %107 = load %struct.pci_packet*, %struct.pci_packet** %6, align 8
  %108 = call i32 @kfree(%struct.pci_packet* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.pci_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.pci_version_request*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_response(%struct.hv_device*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @kfree(%struct.pci_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
