; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_resource_entry = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ipr_cmnd = type { %struct.TYPE_19__, %struct.TYPE_27__*, %struct.TYPE_26__*, i32, %struct.TYPE_21__, %struct.ipr_ioarcb }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_25__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.ipr_ioarcb_ata_regs }
%struct.ipr_ioarcb_ata_regs = type { i32 }
%struct.ipr_ioarcb = type { i8*, i32, %struct.TYPE_24__, i8*, %struct.ipr_cmd_pkt }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.ipr_ioarcb_ata_regs }
%struct.ipr_cmd_pkt = type { i32*, i32 }

@ENTER = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_RESET_DEVICE = common dso_local global i32 0, align 4
@IPR_ATA_PHY_RESET = common dso_local global i32 0, align 4
@IPR_ATA_FLAG_STATUS_ON_GOOD_COMPLETION = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_DEVICE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@IPR_IOASC_IOA_WAS_RESET = common dso_local global i64 0, align 8
@LEAVE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*)* @ipr_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_device_reset(%struct.ipr_ioa_cfg* %0, %struct.ipr_resource_entry* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_resource_entry*, align 8
  %5 = alloca %struct.ipr_cmnd*, align 8
  %6 = alloca %struct.ipr_ioarcb*, align 8
  %7 = alloca %struct.ipr_cmd_pkt*, align 8
  %8 = alloca %struct.ipr_ioarcb_ata_regs*, align 8
  %9 = alloca i64, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_resource_entry* %1, %struct.ipr_resource_entry** %4, align 8
  %10 = load i32, i32* @ENTER, align 4
  %11 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %12 = call %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg* %11)
  store %struct.ipr_cmnd* %12, %struct.ipr_cmnd** %5, align 8
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 5
  store %struct.ipr_ioarcb* %14, %struct.ipr_ioarcb** %6, align 8
  %15 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %6, align 8
  %16 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %15, i32 0, i32 4
  store %struct.ipr_cmd_pkt* %16, %struct.ipr_cmd_pkt** %7, align 8
  %17 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %18 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %25 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store %struct.ipr_ioarcb_ata_regs* %27, %struct.ipr_ioarcb_ata_regs** %8, align 8
  %28 = call i8* @cpu_to_be16(i32 40)
  %29 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %6, align 8
  %30 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %6, align 8
  %33 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  store %struct.ipr_ioarcb_ata_regs* %36, %struct.ipr_ioarcb_ata_regs** %8, align 8
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %39 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %6, align 8
  %42 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %44 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %7, align 8
  %45 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @IPR_RESET_DEVICE, align 4
  %47 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %7, align 8
  %48 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %52 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %37
  %55 = load i32, i32* @IPR_ATA_PHY_RESET, align 4
  %56 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %7, align 8
  %57 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %55, i32* %59, align 4
  %60 = call i8* @cpu_to_be16(i32 4)
  %61 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %6, align 8
  %62 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @IPR_ATA_FLAG_STATUS_ON_GOOD_COMPLETION, align 4
  %64 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %8, align 8
  %65 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %54, %37
  %69 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %70 = load i32, i32* @ipr_timeout, align 4
  %71 = load i32, i32* @IPR_DEVICE_RESET_TIMEOUT, align 4
  %72 = call i32 @ipr_send_blocking_cmd(%struct.ipr_cmnd* %69, i32 %70, i32 %71)
  %73 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %74 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @be32_to_cpu(i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %81 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %80, i32 0, i32 3
  %82 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %83 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %82, i32 0, i32 2
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %81, i32* %85)
  %87 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %88 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %68
  %91 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %92 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = icmp ne %struct.TYPE_16__* %93, null
  br i1 %94, label %95, label %129

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @IPR_IOASC_IOA_WAS_RESET, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %101 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %100, i32 0, i32 1
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %108 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %112 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = call i32 @memcpy(i32* %110, i32* %115, i32 4)
  br label %128

117:                                              ; preds = %99
  %118 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %4, align 8
  %119 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %123 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = call i32 @memcpy(i32* %121, i32* %126, i32 4)
  br label %128

128:                                              ; preds = %117, %106
  br label %129

129:                                              ; preds = %128, %95, %90, %68
  %130 = load i32, i32* @LEAVE, align 4
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @IPR_IOASC_SENSE_KEY(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  br label %138

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i32 [ %136, %134 ], [ 0, %137 ]
  ret i32 %139
}

declare dso_local %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_send_blocking_cmd(%struct.ipr_cmnd*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @IPR_IOASC_SENSE_KEY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
