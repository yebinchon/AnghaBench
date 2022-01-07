; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_handle_scsi_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_handle_scsi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.scsi_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.scb = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64*, i32 }
%struct.ahc_devinfo = type { i32 }
%struct.ahc_linux_device = type { i64, i32, i64, i64, i32, i32, i32 }

@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SCB_SENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@DRIVER_SENSE = common dso_local global i32 0, align 4
@AHC_LOCK_TAGS_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Locking max tag count at %d\0A\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@AHC_DEV_Q_BASIC = common dso_local global i32 0, align 4
@AHC_QUEUE_BASIC = common dso_local global i32 0, align 4
@AHC_QUEUE_TAGGED = common dso_local global i32 0, align 4
@SCSI_STATUS_BUSY = common dso_local global i32 0, align 4
@AHC_SHOW_SENSE = common dso_local global i32 0, align 4
@ahc_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.scsi_device*, %struct.scb*)* @ahc_linux_handle_scsi_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_handle_scsi_status(%struct.ahc_softc* %0, %struct.scsi_device* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca %struct.ahc_devinfo, align 4
  %8 = alloca %struct.ahc_linux_device*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = call %struct.ahc_linux_device* @scsi_transport_device_data(%struct.scsi_device* %11)
  store %struct.ahc_linux_device* %12, %struct.ahc_linux_device** %8, align 8
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 65, i32 66
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* @ROLE_INITIATOR, align 4
  %34 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %7, i32 %15, i32 %20, i32 %23, i8 signext %32, i32 %33)
  %35 = load %struct.scb*, %struct.scb** %6, align 8
  %36 = call i32 @ahc_get_scsi_status(%struct.scb* %35)
  switch i32 %36, label %37 [
    i32 130, label %38
    i32 129, label %38
    i32 128, label %86
  ]

37:                                               ; preds = %3
  br label %178

38:                                               ; preds = %3, %3
  %39 = load %struct.scb*, %struct.scb** %6, align 8
  %40 = getelementptr inbounds %struct.scb, %struct.scb* %39, i32 0, i32 1
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %40, align 8
  store %struct.scsi_cmnd* %41, %struct.scsi_cmnd** %9, align 8
  %42 = load %struct.scb*, %struct.scb** %6, align 8
  %43 = getelementptr inbounds %struct.scb, %struct.scb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SCB_SENSE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %38
  %49 = load %struct.scb*, %struct.scb** %6, align 8
  %50 = call i32 @ahc_get_sense_residual(%struct.scb* %49)
  %51 = sext i32 %50 to i64
  %52 = sub i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @min(i32 %53, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %61 = load %struct.scb*, %struct.scb** %6, align 8
  %62 = call i32 @ahc_get_sense_buf(%struct.ahc_softc* %60, %struct.scb* %61)
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @memcpy(i64* %59, i32 %62, i64 %63)
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %48
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %74, %75
  %77 = call i32 @memset(i64* %73, i32 0, i64 %76)
  br label %78

78:                                               ; preds = %68, %48
  %79 = load i32, i32* @DRIVER_SENSE, align 4
  %80 = shl i32 %79, 24
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %78, %38
  br label %178

86:                                               ; preds = %3
  %87 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %88 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %87, i32 0, i32 6
  store i32 0, i32* %88, align 8
  %89 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %90 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %157

93:                                               ; preds = %86
  %94 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %95 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %94, i32 0, i32 1
  store i32 0, i32* %95, align 8
  %96 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %97 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %100 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %93
  %104 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %105 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %109 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AHC_LOCK_TAGS_COUNT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %103
  %114 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %115 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %118 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %120 = load %struct.scb*, %struct.scb** %6, align 8
  %121 = call i32 @ahc_print_path(%struct.ahc_softc* %119, %struct.scb* %120)
  %122 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %123 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %113, %103
  br label %135

127:                                              ; preds = %93
  %128 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %129 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %132 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %134 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %133, i32 0, i32 5
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %127, %126
  %136 = load %struct.scb*, %struct.scb** %6, align 8
  %137 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %138 = call i32 @ahc_set_transaction_status(%struct.scb* %136, i32 %137)
  %139 = load %struct.scb*, %struct.scb** %6, align 8
  %140 = load i32, i32* @SCSI_STATUS_OK, align 4
  %141 = call i32 @ahc_set_scsi_status(%struct.scb* %139, i32 %140)
  %142 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %143 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %144 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %145 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @AHC_DEV_Q_BASIC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = load i32, i32* @AHC_QUEUE_BASIC, align 4
  br label %154

152:                                              ; preds = %135
  %153 = load i32, i32* @AHC_QUEUE_TAGGED, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = call i32 @ahc_platform_set_tags(%struct.ahc_softc* %142, %struct.scsi_device* %143, %struct.ahc_devinfo* %7, i32 %155)
  br label %178

157:                                              ; preds = %86
  %158 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %159 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %158, i32 0, i32 1
  store i32 1, i32* %159, align 8
  %160 = load %struct.scb*, %struct.scb** %6, align 8
  %161 = load i32, i32* @SCSI_STATUS_BUSY, align 4
  %162 = call i32 @ahc_set_scsi_status(%struct.scb* %160, i32 %161)
  %163 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %164 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %165 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %8, align 8
  %166 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @AHC_DEV_Q_BASIC, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %157
  %172 = load i32, i32* @AHC_QUEUE_BASIC, align 4
  br label %175

173:                                              ; preds = %157
  %174 = load i32, i32* @AHC_QUEUE_TAGGED, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = call i32 @ahc_platform_set_tags(%struct.ahc_softc* %163, %struct.scsi_device* %164, %struct.ahc_devinfo* %7, i32 %176)
  br label %178

178:                                              ; preds = %175, %154, %85, %37
  ret void
}

declare dso_local %struct.ahc_linux_device* @scsi_transport_device_data(%struct.scsi_device*) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahc_get_scsi_status(%struct.scb*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @ahc_get_sense_residual(%struct.scb*) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @ahc_get_sense_buf(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @ahc_print_path(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahc_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_set_scsi_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_platform_set_tags(%struct.ahc_softc*, %struct.scsi_device*, %struct.ahc_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
