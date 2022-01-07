; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i64*, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, %struct.MR_PRIV_DEVICE*, %struct.TYPE_4__* }
%struct.MR_PRIV_DEVICE = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.megasas_instance = type { i32, i64, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.megasas_instance*, %struct.scsi_cmnd*)* }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@MEGASAS_ADPRESET_SM_INFAULT = common dso_local global i64 0, align 8
@DID_REQUEUE = common dso_local global i32 0, align 4
@MEGASAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@MEGASAS_HBA_OPERATIONAL = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @megasas_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_queue_command(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.megasas_instance*, align 8
  %7 = alloca %struct.MR_PRIV_DEVICE*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.megasas_instance*
  store %struct.megasas_instance* %15, %struct.megasas_instance** %6, align 8
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @DID_NO_CONNECT, align 4
  %22 = shl i32 %21, 16
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 2
  %27 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %26, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = call i32 %27(%struct.scsi_cmnd* %28)
  store i32 0, i32* %3, align 4
  br label %180

30:                                               ; preds = %2
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %36, i32* %3, align 4
  br label %180

37:                                               ; preds = %30
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 5
  %40 = call i64 @atomic_read(i32* %39)
  %41 = load i64, i64* @MEGASAS_ADPRESET_SM_INFAULT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = call i32 @megasas_check_mpio_paths(%struct.megasas_instance* %44, %struct.scsi_cmnd* %45)
  %47 = load i32, i32* @DID_REQUEUE, align 4
  %48 = shl i32 %47, 16
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %180

52:                                               ; preds = %43
  %53 = load i32, i32* @DID_NO_CONNECT, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 2
  %59 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %58, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = call i32 %59(%struct.scsi_cmnd* %60)
  store i32 0, i32* %3, align 4
  br label %180

62:                                               ; preds = %37
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 5
  %65 = call i64 @atomic_read(i32* %64)
  %66 = load i64, i64* @MEGASAS_HW_CRITICAL_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* @DID_NO_CONNECT, align 4
  %70 = shl i32 %69, 16
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 2
  %75 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %74, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = call i32 %75(%struct.scsi_cmnd* %76)
  store i32 0, i32* %3, align 4
  br label %180

78:                                               ; preds = %62
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %82, align 8
  store %struct.MR_PRIV_DEVICE* %83, %struct.MR_PRIV_DEVICE** %7, align 8
  %84 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %85 = icmp ne %struct.MR_PRIV_DEVICE* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @DID_NO_CONNECT, align 4
  %88 = shl i32 %87, 16
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 2
  %93 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %92, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %95 = call i32 %93(%struct.scsi_cmnd* %94)
  store i32 0, i32* %3, align 4
  br label %180

96:                                               ; preds = %78
  %97 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %98 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %97, i32 0, i32 5
  %99 = call i64 @atomic_read(i32* %98)
  %100 = load i64, i64* @MEGASAS_HBA_OPERATIONAL, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %103, i32* %3, align 4
  br label %180

104:                                              ; preds = %96
  %105 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %106 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %110, i32* %3, align 4
  br label %180

111:                                              ; preds = %104
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 3
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i64 @MEGASAS_IS_LOGICAL(%struct.TYPE_6__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %111
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %126 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %124, %127
  br i1 %128, label %136, label %129

129:                                              ; preds = %119
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 3
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129, %119
  %137 = load i32, i32* @DID_BAD_TARGET, align 4
  %138 = shl i32 %137, 16
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %174

141:                                              ; preds = %129, %111
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SYNCHRONIZE_CACHE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %141
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = call i64 @MEGASAS_IS_LOGICAL(%struct.TYPE_6__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %157 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @DID_OK, align 4
  %162 = shl i32 %161, 16
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %164 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %174

165:                                              ; preds = %155, %149, %141
  %166 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %167 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %166, i32 0, i32 3
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32 (%struct.megasas_instance*, %struct.scsi_cmnd*)*, i32 (%struct.megasas_instance*, %struct.scsi_cmnd*)** %169, align 8
  %171 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %172 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %173 = call i32 %170(%struct.megasas_instance* %171, %struct.scsi_cmnd* %172)
  store i32 %173, i32* %3, align 4
  br label %180

174:                                              ; preds = %160, %136
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %176 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %175, i32 0, i32 2
  %177 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %176, align 8
  %178 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %179 = call i32 %177(%struct.scsi_cmnd* %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %174, %165, %109, %102, %86, %68, %52, %50, %35, %20
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @megasas_check_mpio_paths(%struct.megasas_instance*, %struct.scsi_cmnd*) #1

declare dso_local i64 @MEGASAS_IS_LOGICAL(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
