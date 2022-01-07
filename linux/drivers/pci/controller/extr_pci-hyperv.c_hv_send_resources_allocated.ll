; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_send_resources_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_send_resources_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32 }
%struct.hv_pcibus_device = type { i32 }
%struct.pci_resources_assigned = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pci_resources_assigned2 = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.hv_pci_compl = type { i64, i32 }
%struct.hv_pci_dev = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.pci_packet = type { i32, %struct.hv_pci_compl*, i32 }

@pci_protocol_version = common dso_local global i64 0, align 8
@PCI_PROTOCOL_VERSION_1_2 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hv_pci_generic_compl = common dso_local global i32 0, align 4
@PCI_RESOURCES_ASSIGNED = common dso_local global i32 0, align 4
@PCI_RESOURCES_ASSIGNED2 = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"resource allocated returned 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_send_resources_allocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_send_resources_allocated(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_pcibus_device*, align 8
  %5 = alloca %struct.pci_resources_assigned*, align 8
  %6 = alloca %struct.pci_resources_assigned2*, align 8
  %7 = alloca %struct.hv_pci_compl, align 8
  %8 = alloca %struct.hv_pci_dev*, align 8
  %9 = alloca %struct.pci_packet*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %13 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %14 = call %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device* %13)
  store %struct.hv_pcibus_device* %14, %struct.hv_pcibus_device** %4, align 8
  %15 = load i64, i64* @pci_protocol_version, align 8
  %16 = load i64, i64* @PCI_PROTOCOL_VERSION_1_2, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 8, i64 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add i64 24, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.pci_packet* @kmalloc(i32 %22, i32 %23)
  store %struct.pci_packet* %24, %struct.pci_packet** %9, align 8
  %25 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %26 = icmp ne %struct.pci_packet* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %133

30:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %126, %30
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %129

34:                                               ; preds = %31
  %35 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %4, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.hv_pci_dev* @get_pcichild_wslot(%struct.hv_pcibus_device* %35, i32 %36)
  store %struct.hv_pci_dev* %37, %struct.hv_pci_dev** %8, align 8
  %38 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %39 = icmp ne %struct.hv_pci_dev* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %126

41:                                               ; preds = %34
  %42 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 24, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(%struct.pci_packet* %42, i32 0, i32 %45)
  %47 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %7, i32 0, i32 1
  %48 = call i32 @init_completion(i32* %47)
  %49 = load i32, i32* @hv_pci_generic_compl, align 4
  %50 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %51 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %53 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %52, i32 0, i32 1
  store %struct.hv_pci_compl* %7, %struct.hv_pci_compl** %53, align 8
  %54 = load i64, i64* @pci_protocol_version, align 8
  %55 = load i64, i64* @PCI_PROTOCOL_VERSION_1_2, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %41
  %58 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %59 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to %struct.pci_resources_assigned*
  store %struct.pci_resources_assigned* %60, %struct.pci_resources_assigned** %5, align 8
  %61 = load i32, i32* @PCI_RESOURCES_ASSIGNED, align 4
  %62 = load %struct.pci_resources_assigned*, %struct.pci_resources_assigned** %5, align 8
  %63 = getelementptr inbounds %struct.pci_resources_assigned, %struct.pci_resources_assigned* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %66 = getelementptr inbounds %struct.hv_pci_dev, %struct.hv_pci_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pci_resources_assigned*, %struct.pci_resources_assigned** %5, align 8
  %71 = getelementptr inbounds %struct.pci_resources_assigned, %struct.pci_resources_assigned* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %89

73:                                               ; preds = %41
  %74 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %75 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %74, i32 0, i32 0
  %76 = bitcast i32* %75 to %struct.pci_resources_assigned2*
  store %struct.pci_resources_assigned2* %76, %struct.pci_resources_assigned2** %6, align 8
  %77 = load i32, i32* @PCI_RESOURCES_ASSIGNED2, align 4
  %78 = load %struct.pci_resources_assigned2*, %struct.pci_resources_assigned2** %6, align 8
  %79 = getelementptr inbounds %struct.pci_resources_assigned2, %struct.pci_resources_assigned2* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %82 = getelementptr inbounds %struct.hv_pci_dev, %struct.hv_pci_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pci_resources_assigned2*, %struct.pci_resources_assigned2** %6, align 8
  %87 = getelementptr inbounds %struct.pci_resources_assigned2, %struct.pci_resources_assigned2* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %73, %57
  %90 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %8, align 8
  %91 = call i32 @put_pcichild(%struct.hv_pci_dev* %90)
  %92 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %93 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %96 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %95, i32 0, i32 0
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %99 = ptrtoint %struct.pci_packet* %98 to i64
  %100 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %101 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %102 = call i32 @vmbus_sendpacket(i32 %94, i32* %96, i64 %97, i64 %99, i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %89
  %106 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %107 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %7, i32 0, i32 1
  %108 = call i32 @wait_for_response(%struct.hv_device* %106, i32* %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %89
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %129

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %7, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, i32* @EPROTO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  %120 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %121 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %7, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %123)
  br label %129

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %40
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %31

129:                                              ; preds = %117, %112, %31
  %130 = load %struct.pci_packet*, %struct.pci_packet** %9, align 8
  %131 = call i32 @kfree(%struct.pci_packet* %130)
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %27
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.pci_packet* @kmalloc(i32, i32) #1

declare dso_local %struct.hv_pci_dev* @get_pcichild_wslot(%struct.hv_pcibus_device*, i32) #1

declare dso_local i32 @memset(%struct.pci_packet*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @put_pcichild(%struct.hv_pci_dev*) #1

declare dso_local i32 @vmbus_sendpacket(i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @wait_for_response(%struct.hv_device*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.pci_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
