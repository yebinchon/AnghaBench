; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32 }
%struct.PVSCSIRingCmpDesc = type { i32, i32, i64, i32 }
%struct.pvscsi_ctx = type { %struct.completion*, %struct.scsi_cmnd* }
%struct.completion = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@SAM_STAT_COMMAND_TERMINATED = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DRIVER_INVALID = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown completion status: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cmd=%p %x ctx=%p result=0x%x status=0x%x,%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*, %struct.PVSCSIRingCmpDesc*)* @pvscsi_complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_complete_request(%struct.pvscsi_adapter* %0, %struct.PVSCSIRingCmpDesc* %1) #0 {
  %3 = alloca %struct.pvscsi_adapter*, align 8
  %4 = alloca %struct.PVSCSIRingCmpDesc*, align 8
  %5 = alloca %struct.pvscsi_ctx*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.completion*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %3, align 8
  store %struct.PVSCSIRingCmpDesc* %1, %struct.PVSCSIRingCmpDesc** %4, align 8
  %10 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %4, align 8
  %11 = getelementptr inbounds %struct.PVSCSIRingCmpDesc, %struct.PVSCSIRingCmpDesc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %4, align 8
  %14 = getelementptr inbounds %struct.PVSCSIRingCmpDesc, %struct.PVSCSIRingCmpDesc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %17 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %4, align 8
  %18 = getelementptr inbounds %struct.PVSCSIRingCmpDesc, %struct.PVSCSIRingCmpDesc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.pvscsi_ctx* @pvscsi_get_context(%struct.pvscsi_adapter* %16, i32 %19)
  store %struct.pvscsi_ctx* %20, %struct.pvscsi_ctx** %5, align 8
  %21 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %21, i32 0, i32 1
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %22, align 8
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %6, align 8
  %24 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %24, i32 0, i32 0
  %26 = load %struct.completion*, %struct.completion** %25, align 8
  store %struct.completion* %26, %struct.completion** %7, align 8
  %27 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %28 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %5, align 8
  %29 = call i32 @pvscsi_unmap_buffers(%struct.pvscsi_adapter* %27, %struct.pvscsi_ctx* %28)
  %30 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %31 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %5, align 8
  %32 = call i32 @pvscsi_release_context(%struct.pvscsi_adapter* %30, %struct.pvscsi_ctx* %31)
  %33 = load %struct.completion*, %struct.completion** %7, align 8
  %34 = icmp ne %struct.completion* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.completion*, %struct.completion** %7, align 8
  %37 = call i32 @complete(%struct.completion* %36)
  br label %171

38:                                               ; preds = %2
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SAM_STAT_GOOD, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 138
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 137
  br i1 %52, label %53, label %86

53:                                               ; preds = %50, %47, %44
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SAM_STAT_COMMAND_TERMINATED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @DID_RESET, align 4
  %59 = shl i32 %58, 16
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %85

62:                                               ; preds = %53
  %63 = load i32, i32* @DID_OK, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %62
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @DRIVER_SENSE, align 4
  %79 = shl i32 %78, 24
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %77, %72, %62
  br label %85

85:                                               ; preds = %84, %57
  br label %148

86:                                               ; preds = %50, %38
  %87 = load i32, i32* %8, align 4
  switch i32 %87, label %138 [
    i32 129, label %88
    i32 138, label %88
    i32 137, label %88
    i32 145, label %93
    i32 144, label %93
    i32 132, label %106
    i32 136, label %111
    i32 128, label %111
    i32 148, label %111
    i32 142, label %116
    i32 139, label %116
    i32 140, label %116
    i32 135, label %116
    i32 143, label %116
    i32 141, label %116
    i32 147, label %116
    i32 131, label %116
    i32 130, label %123
    i32 134, label %123
    i32 146, label %123
    i32 149, label %128
    i32 133, label %133
  ]

88:                                               ; preds = %86, %86, %86
  %89 = load i32, i32* @DID_OK, align 4
  %90 = shl i32 %89, 16
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %147

93:                                               ; preds = %86, %86
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %96 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %95)
  %97 = load %struct.PVSCSIRingCmpDesc*, %struct.PVSCSIRingCmpDesc** %4, align 8
  %98 = getelementptr inbounds %struct.PVSCSIRingCmpDesc, %struct.PVSCSIRingCmpDesc* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %94, i64 %100)
  %102 = load i32, i32* @DID_ERROR, align 4
  %103 = shl i32 %102, 16
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %147

106:                                              ; preds = %86
  %107 = load i32, i32* @DID_BAD_TARGET, align 4
  %108 = shl i32 %107, 16
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %147

111:                                              ; preds = %86, %86, %86
  %112 = load i32, i32* @DRIVER_INVALID, align 4
  %113 = shl i32 %112, 24
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %86, %86, %86, %86, %86, %86, %86, %86, %111
  %117 = load i32, i32* @DID_ERROR, align 4
  %118 = shl i32 %117, 16
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %147

123:                                              ; preds = %86, %86, %86
  %124 = load i32, i32* @DID_RESET, align 4
  %125 = shl i32 %124, 16
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %147

128:                                              ; preds = %86
  %129 = load i32, i32* @DID_BUS_BUSY, align 4
  %130 = shl i32 %129, 16
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %147

133:                                              ; preds = %86
  %134 = load i32, i32* @DID_PARITY, align 4
  %135 = shl i32 %134, 16
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %147

138:                                              ; preds = %86
  %139 = load i32, i32* @DID_ERROR, align 4
  %140 = shl i32 %139, 16
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @KERN_DEBUG, align 4
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @scmd_printk(i32 %143, %struct.scsi_cmnd* %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %138, %133, %128, %123, %116, %106, %93, %88
  br label %148

148:                                              ; preds = %147, %85
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 3
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %5, align 8
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @dev_dbg(i32* %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %153, i32 %158, %struct.pvscsi_ctx* %159, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 1
  %168 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %167, align 8
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %170 = call i32 %168(%struct.scsi_cmnd* %169)
  br label %171

171:                                              ; preds = %148, %35
  ret void
}

declare dso_local %struct.pvscsi_ctx* @pvscsi_get_context(%struct.pvscsi_adapter*, i32) #1

declare dso_local i32 @pvscsi_unmap_buffers(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*) #1

declare dso_local i32 @pvscsi_release_context(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*) #1

declare dso_local i32 @complete(%struct.completion*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.scsi_cmnd*, i32, %struct.pvscsi_ctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
