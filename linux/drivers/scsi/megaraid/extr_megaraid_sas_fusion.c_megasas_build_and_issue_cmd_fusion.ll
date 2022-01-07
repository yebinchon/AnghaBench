; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_build_and_issue_cmd_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_build_and_issue_cmd_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, i64, %struct.TYPE_8__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.scsi_cmnd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.megasas_cmd_fusion = type { i64, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %struct.TYPE_9__*, i64 }
%union.MEGASAS_REQUEST_DESCRIPTOR_UNION = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@READ_WRITE_LDIO = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Error building command\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"The chain offset value is not correct : %x\0A\00", align 1
@MR_DEVHANDLE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.megasas_instance*, %struct.scsi_cmnd*)* @megasas_build_and_issue_cmd_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @megasas_build_and_issue_cmd_fusion(%struct.megasas_instance* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.megasas_cmd_fusion*, align 8
  %7 = alloca %struct.megasas_cmd_fusion*, align 8
  %8 = alloca %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, align 8
  %9 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.megasas_cmd_fusion* null, %struct.megasas_cmd_fusion** %7, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call i64 @megasas_cmd_type(%struct.scsi_cmnd* %10)
  %12 = load i64, i64* @READ_WRITE_LDIO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 5
  %22 = call i64 @atomic_inc_return(i32* %21)
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 5
  %30 = call i32 @atomic_dec(i32* %29)
  %31 = load i64, i64* @SCSI_MLQUEUE_DEVICE_BUSY, align 8
  store i64 %31, i64* %3, align 8
  br label %163

32:                                               ; preds = %19, %14, %2
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 3
  %35 = call i64 @atomic_inc_return(i32* %34)
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %44 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %43, i32 0, i32 3
  %45 = call i32 @atomic_dec(i32* %44)
  %46 = load i64, i64* @SCSI_MLQUEUE_HOST_BUSY, align 8
  store i64 %46, i64* %3, align 8
  br label %163

47:                                               ; preds = %32
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.megasas_cmd_fusion* @megasas_get_cmd_fusion(%struct.megasas_instance* %48, i64 %53)
  store %struct.megasas_cmd_fusion* %54, %struct.megasas_cmd_fusion** %6, align 8
  %55 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %56 = icmp ne %struct.megasas_cmd_fusion* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 3
  %60 = call i32 @atomic_dec(i32* %59)
  %61 = load i64, i64* @SCSI_MLQUEUE_HOST_BUSY, align 8
  store i64 %61, i64* %3, align 8
  br label %163

62:                                               ; preds = %47
  %63 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %64 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance* %66, i64 %68)
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %69, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %8, align 8
  %70 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %8, align 8
  %71 = bitcast %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %8, align 8
  %73 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %74 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %73, i32 0, i32 1
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %72, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %74, align 8
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %78 = call i64 @megasas_build_io_fusion(%struct.megasas_instance* %75, %struct.scsi_cmnd* %76, %struct.megasas_cmd_fusion* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %62
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %82 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %83 = call i32 @megasas_return_cmd_fusion(%struct.megasas_instance* %81, %struct.megasas_cmd_fusion* %82)
  %84 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %85 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %84, i32 0, i32 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %90 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %89, i32 0, i32 1
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* null, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %90, align 8
  %91 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %92 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %91, i32 0, i32 3
  %93 = call i32 @atomic_dec(i32* %92)
  %94 = load i64, i64* @SCSI_MLQUEUE_HOST_BUSY, align 8
  store i64 %94, i64* %3, align 8
  br label %163

95:                                               ; preds = %62
  %96 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %97 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %96, i32 0, i32 1
  %98 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %97, align 8
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %98, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @cpu_to_le16(i64 %99)
  %101 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %8, align 8
  %102 = bitcast %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %101 to %struct.TYPE_7__*
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %105 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %95
  %111 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %112 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %111, i32 0, i32 2
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 15
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %119 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %123 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %117, %110, %95
  %129 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %130 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MR_DEVHANDLE_INVALID, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %128
  %135 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %142 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = call %struct.megasas_cmd_fusion* @megasas_get_cmd_fusion(%struct.megasas_instance* %135, i64 %144)
  store %struct.megasas_cmd_fusion* %145, %struct.megasas_cmd_fusion** %7, align 8
  %146 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %147 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %148 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %149 = call i32 @megasas_prepare_secondRaid1_IO(%struct.megasas_instance* %146, %struct.megasas_cmd_fusion* %147, %struct.megasas_cmd_fusion* %148)
  br label %150

150:                                              ; preds = %134, %128
  %151 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %152 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %8, align 8
  %153 = call i32 @megasas_fire_cmd_fusion(%struct.megasas_instance* %151, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %152)
  %154 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %155 = icmp ne %struct.megasas_cmd_fusion* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %158 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %159 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %158, i32 0, i32 1
  %160 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %159, align 8
  %161 = call i32 @megasas_fire_cmd_fusion(%struct.megasas_instance* %157, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %160)
  br label %162

162:                                              ; preds = %156, %150
  store i64 0, i64* %3, align 8
  br label %163

163:                                              ; preds = %162, %80, %57, %42, %27
  %164 = load i64, i64* %3, align 8
  ret i64 %164
}

declare dso_local i64 @megasas_cmd_type(%struct.scsi_cmnd*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.megasas_cmd_fusion* @megasas_get_cmd_fusion(%struct.megasas_instance*, i64) #1

declare dso_local %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance*, i64) #1

declare dso_local i64 @megasas_build_io_fusion(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @megasas_return_cmd_fusion(%struct.megasas_instance*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @megasas_prepare_secondRaid1_IO(%struct.megasas_instance*, %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @megasas_fire_cmd_fusion(%struct.megasas_instance*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
