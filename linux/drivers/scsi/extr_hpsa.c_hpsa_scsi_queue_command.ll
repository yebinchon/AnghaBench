; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i64, %struct.TYPE_4__*, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i64, i64 }
%struct.ctlr_info = type { i64 }
%struct.CommandList = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @hpsa_scsi_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_queue_command(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %8 = alloca %struct.CommandList*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = call %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_3__* %12)
  store %struct.ctlr_info* %13, %struct.ctlr_info** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %25, align 8
  store %struct.hpsa_scsi_dev_t* %26, %struct.hpsa_scsi_dev_t** %7, align 8
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %28 = icmp ne %struct.hpsa_scsi_dev_t* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @DID_NO_CONNECT, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 3
  %36 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %35, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = call i32 %36(%struct.scsi_cmnd* %37)
  store i32 0, i32* %3, align 4
  br label %131

39:                                               ; preds = %2
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* @DID_NO_CONNECT, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 3
  %51 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %50, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %53 = call i32 %51(%struct.scsi_cmnd* %52)
  store i32 0, i32* %3, align 4
  br label %131

54:                                               ; preds = %39
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %56 = call i32 @lockup_detected(%struct.ctlr_info* %55)
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* @DID_NO_CONNECT, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 3
  %66 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %65, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = call i32 %66(%struct.scsi_cmnd* %67)
  store i32 0, i32* %3, align 4
  br label %131

69:                                               ; preds = %54
  %70 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %71 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %75, i32* %3, align 4
  br label %131

76:                                               ; preds = %69
  %77 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %79 = call %struct.CommandList* @cmd_tagged_alloc(%struct.ctlr_info* %77, %struct.scsi_cmnd* %78)
  store %struct.CommandList* %79, %struct.CommandList** %8, align 8
  %80 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %81 = icmp eq %struct.CommandList* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %83, i32* %3, align 4
  br label %131

84:                                               ; preds = %76
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @blk_rq_is_passthrough(%struct.TYPE_4__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %99 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %97, %91, %84
  %103 = phi i1 [ false, %91 ], [ false, %84 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  %105 = call i64 @likely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %109 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %111 = call i32 @hpsa_ioaccel_submit(%struct.ctlr_info* %108, %struct.CommandList* %109, %struct.scsi_cmnd* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %131

115:                                              ; preds = %107
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %121 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %122 = call i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info* %120, %struct.CommandList* %121)
  %123 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %102
  %126 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %127 = load %struct.CommandList*, %struct.CommandList** %8, align 8
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %129 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %7, align 8
  %130 = call i32 @hpsa_ciss_submit(%struct.ctlr_info* %126, %struct.CommandList* %127, %struct.scsi_cmnd* %128, %struct.hpsa_scsi_dev_t* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %119, %114, %82, %74, %59, %44, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lockup_detected(%struct.ctlr_info*) #1

declare dso_local %struct.CommandList* @cmd_tagged_alloc(%struct.ctlr_info*, %struct.scsi_cmnd*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blk_rq_is_passthrough(%struct.TYPE_4__*) #1

declare dso_local i32 @hpsa_ioaccel_submit(%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*) #1

declare dso_local i32 @hpsa_cmd_resolve_and_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @hpsa_ciss_submit(%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
