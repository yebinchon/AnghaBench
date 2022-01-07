; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_cmd = type { %struct.TYPE_3__, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { %struct.virtio_scsi_cmd_resp }
%struct.virtio_scsi_cmd_resp = type { i32, i64, i32, i64, i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"cmd %p response %u status %#02x sense_len %u\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@DID_TARGET_FAILURE = common dso_local global i32 0, align 4
@DID_NEXUS_FAILURE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown response %d\00", align 1
@VIRTIO_SCSI_SENSE_SIZE = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi*, i8*)* @virtscsi_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_complete_cmd(%struct.virtio_scsi* %0, i8* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtio_scsi_cmd*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.virtio_scsi_cmd_resp*, align 8
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.virtio_scsi_cmd*
  store %struct.virtio_scsi_cmd* %9, %struct.virtio_scsi_cmd** %5, align 8
  %10 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %10, i32 0, i32 1
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %6, align 8
  %13 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.virtio_scsi_cmd_resp* %15, %struct.virtio_scsi_cmd_resp** %7, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %22 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %25 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %28 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %20, i32 %23, i32 %26, i64 %29)
  %31 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %32 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %37 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %38 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %41 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @virtio32_to_cpu(i32 %39, i64 %42)
  %44 = call i32 @virtscsi_compute_resid(%struct.scsi_cmnd* %36, i64 %43)
  %45 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %46 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %84 [
    i32 132, label %48
    i32 131, label %52
    i32 137, label %56
    i32 136, label %60
    i32 130, label %64
    i32 135, label %68
    i32 128, label %72
    i32 129, label %76
    i32 133, label %80
    i32 134, label %91
  ]

48:                                               ; preds = %2
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %50 = load i32, i32* @DID_OK, align 4
  %51 = call i32 @set_host_byte(%struct.scsi_cmnd* %49, i32 %50)
  br label %95

52:                                               ; preds = %2
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %54 = load i32, i32* @DID_ERROR, align 4
  %55 = call i32 @set_host_byte(%struct.scsi_cmnd* %53, i32 %54)
  br label %95

56:                                               ; preds = %2
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %58 = load i32, i32* @DID_ABORT, align 4
  %59 = call i32 @set_host_byte(%struct.scsi_cmnd* %57, i32 %58)
  br label %95

60:                                               ; preds = %2
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %62 = load i32, i32* @DID_BAD_TARGET, align 4
  %63 = call i32 @set_host_byte(%struct.scsi_cmnd* %61, i32 %62)
  br label %95

64:                                               ; preds = %2
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %66 = load i32, i32* @DID_RESET, align 4
  %67 = call i32 @set_host_byte(%struct.scsi_cmnd* %65, i32 %66)
  br label %95

68:                                               ; preds = %2
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %70 = load i32, i32* @DID_BUS_BUSY, align 4
  %71 = call i32 @set_host_byte(%struct.scsi_cmnd* %69, i32 %70)
  br label %95

72:                                               ; preds = %2
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %75 = call i32 @set_host_byte(%struct.scsi_cmnd* %73, i32 %74)
  br label %95

76:                                               ; preds = %2
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %78 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %79 = call i32 @set_host_byte(%struct.scsi_cmnd* %77, i32 %78)
  br label %95

80:                                               ; preds = %2
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = load i32, i32* @DID_NEXUS_FAILURE, align 4
  %83 = call i32 @set_host_byte(%struct.scsi_cmnd* %81, i32 %82)
  br label %95

84:                                               ; preds = %2
  %85 = load i32, i32* @KERN_WARNING, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %87 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %88 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @scmd_printk(i32 %85, %struct.scsi_cmnd* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %2, %84
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %93 = load i32, i32* @DID_ERROR, align 4
  %94 = call i32 @set_host_byte(%struct.scsi_cmnd* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %80, %76, %72, %68, %64, %60, %56, %52, %48
  %96 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %97 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %100 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @virtio32_to_cpu(i32 %98, i64 %101)
  %103 = load i64, i64* @VIRTIO_SCSI_SENSE_SIZE, align 8
  %104 = icmp sgt i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN_ON(i32 %105)
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %95
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %116 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @u32, align 4
  %119 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %120 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %123 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @virtio32_to_cpu(i32 %121, i64 %124)
  %126 = load i64, i64* @VIRTIO_SCSI_SENSE_SIZE, align 8
  %127 = call i32 @min_t(i32 %118, i64 %125, i64 %126)
  %128 = call i32 @memcpy(i64 %114, i32 %117, i32 %127)
  %129 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %7, align 8
  %130 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %111
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %135 = load i32, i32* @DRIVER_SENSE, align 4
  %136 = call i32 @set_driver_byte(%struct.scsi_cmnd* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %111
  br label %138

138:                                              ; preds = %137, %95
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 0
  %141 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %140, align 8
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %143 = call i32 %141(%struct.scsi_cmnd* %142)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.scsi_cmnd*, i32, i32, i64) #1

declare dso_local i32 @virtscsi_compute_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @virtio32_to_cpu(i32, i64) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @min_t(i32, i64, i64) #1

declare dso_local i32 @set_driver_byte(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
