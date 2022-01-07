; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.lpfc_device_data*, i32, %struct.TYPE_3__* }
%struct.lpfc_device_data = type { i32, %struct.lpfc_device_data*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.fc_rport = type { %struct.lpfc_device_data*, i32 }
%struct.lpfc_name = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_DISC_IOCB_BUFF_COUNT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"0704 At limitation of %d preallocated command buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"0705 Allocation request of %d command buffers will exceed max of %d.  Reducing allocation request to %d.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"0708 Allocation request of %d command buffers did not succeed.  Allocated %d buffers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @lpfc_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_device_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.lpfc_name, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %4, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %5, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = call i32 @scsi_target(%struct.scsi_device* %23)
  %25 = call %struct.fc_rport* @starget_to_rport(i32 %24)
  store %struct.fc_rport* %25, %struct.fc_rport** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %27 = icmp ne %struct.fc_rport* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %30 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %1
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %209

35:                                               ; preds = %28
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %108

40:                                               ; preds = %35
  %41 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %42 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.lpfc_name, %struct.lpfc_name* %13, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @u64_to_wwn(i32 %43, i32 %46)
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 4
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 5
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 1
  %57 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.lpfc_device_data* @__lpfc_get_device_data(%struct.lpfc_hba* %52, i32* %54, i32* %56, %struct.lpfc_name* %13, i32 %59)
  store %struct.lpfc_device_data* %60, %struct.lpfc_device_data** %11, align 8
  %61 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %11, align 8
  %62 = icmp ne %struct.lpfc_device_data* %61, null
  br i1 %62, label %93, label %63

63:                                               ; preds = %40
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 4
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %69, i32 0, i32 1
  %71 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.lpfc_device_data* @lpfc_create_device_data(%struct.lpfc_hba* %68, i32* %70, %struct.lpfc_name* %13, i32 %73, i32 %76, i32 1)
  store %struct.lpfc_device_data* %77, %struct.lpfc_device_data** %11, align 8
  %78 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %11, align 8
  %79 = icmp ne %struct.lpfc_device_data* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %209

83:                                               ; preds = %63
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 4
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %11, align 8
  %89 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %88, i32 0, i32 2
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 5
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %83, %40
  %94 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %95 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %94, i32 0, i32 0
  %96 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %95, align 8
  %97 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %11, align 8
  %98 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %97, i32 0, i32 1
  store %struct.lpfc_device_data* %96, %struct.lpfc_device_data** %98, align 8
  %99 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %11, align 8
  %100 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 4
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %11, align 8
  %106 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %107 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %106, i32 0, i32 0
  store %struct.lpfc_device_data* %105, %struct.lpfc_device_data** %107, align 8
  br label %114

108:                                              ; preds = %35
  %109 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %110 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %109, i32 0, i32 0
  %111 = load %struct.lpfc_device_data*, %struct.lpfc_device_data** %110, align 8
  %112 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %113 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %112, i32 0, i32 0
  store %struct.lpfc_device_data* %111, %struct.lpfc_device_data** %113, align 8
  br label %114

114:                                              ; preds = %108, %93
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 3
  %117 = call i32 @atomic_inc_return(i32* %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @LPFC_SLI_REV4, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %209

124:                                              ; preds = %114
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %7, align 4
  %128 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 2
  %137 = mul nsw i32 %132, %136
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %209

141:                                              ; preds = %124
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @LPFC_DISC_IOCB_BUFF_COUNT, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sge i32 %142, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %151 = load i32, i32* @KERN_WARNING, align 4
  %152 = load i32, i32* @LOG_FCP, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %153)
  store i32 0, i32* %2, align 4
  br label %209

155:                                              ; preds = %141
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %156, %157
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @LPFC_DISC_IOCB_BUFF_COUNT, align 4
  %163 = sub nsw i32 %161, %162
  %164 = icmp sgt i32 %158, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %155
  %166 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %167 = load i32, i32* @KERN_WARNING, align 4
  %168 = load i32, i32* @LOG_FCP, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sub nsw i32 %175, %176
  %178 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %172, i32 %177)
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %165, %155
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @lpfc_new_scsi_buf_s3(%struct.lpfc_vport* %186, i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %194 = load i32, i32* @KERN_ERR, align 4
  %195 = load i32, i32* @LOG_FCP, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %185
  %200 = load i32, i32* %9, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %199
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %208, %149, %140, %123, %80, %32
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @u64_to_wwn(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lpfc_device_data* @__lpfc_get_device_data(%struct.lpfc_hba*, i32*, i32*, %struct.lpfc_name*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.lpfc_device_data* @lpfc_create_device_data(%struct.lpfc_hba*, i32*, %struct.lpfc_name*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_new_scsi_buf_s3(%struct.lpfc_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
