; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.scb = type { i32, %struct.scsi_cmnd*, %struct.TYPE_3__* }
%struct.scsi_cmnd = type { i32, i64, i64, i32, i32*, i64* }
%struct.TYPE_3__ = type { %struct.ahd_linux_device* }
%struct.ahd_linux_device = type { i64, i32, i64, i64, i64, i32 }

@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SCB %d done'd twice\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Stopping for safety\00", align 1
@pending_links = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@SCB_TRANSMISSION_ERROR = common dso_local global i32 0, align 4
@CAM_UNCOR_PARITY = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i64 0, align 8
@SCSI_STATUS_QUEUE_FULL = common dso_local global i64 0, align 8
@AHD_TAG_SUCCESS_INTERVAL = common dso_local global i64 0, align 8
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Recovery SCB completes\0A\00", align 1
@CAM_BDR_SENT = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i64 0, align 8
@CAM_CMD_TIMEOUT = common dso_local global i64 0, align 8
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i64 0, align 8
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_done(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ahd_linux_device*, align 8
  %7 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %8 = load %struct.scb*, %struct.scb** %4, align 8
  %9 = getelementptr inbounds %struct.scb, %struct.scb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SCB_ACTIVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.scb*, %struct.scb** %4, align 8
  %16 = call i32 @SCB_GET_TAG(%struct.scb* %15)
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %18)
  %20 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.scb*, %struct.scb** %4, align 8
  %23 = load i32, i32* @pending_links, align 4
  %24 = call i32 @LIST_REMOVE(%struct.scb* %22, i32 %23)
  %25 = load %struct.scb*, %struct.scb** %4, align 8
  %26 = getelementptr inbounds %struct.scb, %struct.scb* %25, i32 0, i32 1
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %5, align 8
  %28 = load %struct.scb*, %struct.scb** %4, align 8
  %29 = getelementptr inbounds %struct.scb, %struct.scb* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %31, align 8
  store %struct.ahd_linux_device* %32, %struct.ahd_linux_device** %6, align 8
  %33 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %34 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %38 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %45 = shl i32 %44, 16
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %21
  %49 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %50 = shl i32 %49, 16
  %51 = xor i32 %50, -1
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %57 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %48, %21
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %62 = load %struct.scb*, %struct.scb** %4, align 8
  %63 = call i32 @ahd_linux_unmap_scb(%struct.ahd_softc* %61, %struct.scb* %62)
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 5
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.scb*, %struct.scb** %4, align 8
  %69 = call i64 @ahd_get_transaction_status(%struct.scb* %68)
  %70 = load i64, i64* @CAM_REQ_INPROG, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %60
  %73 = load %struct.scb*, %struct.scb** %4, align 8
  %74 = call i64 @ahd_get_transfer_length(%struct.scb* %73)
  %75 = load %struct.scb*, %struct.scb** %4, align 8
  %76 = call i64 @ahd_get_residual(%struct.scb* %75)
  %77 = sub nsw i64 %74, %76
  store i64 %77, i64* %7, align 8
  %78 = load %struct.scb*, %struct.scb** %4, align 8
  %79 = getelementptr inbounds %struct.scb, %struct.scb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SCB_TRANSMISSION_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.scb*, %struct.scb** %4, align 8
  %86 = load i64, i64* @CAM_UNCOR_PARITY, align 8
  %87 = call i32 @ahd_set_transaction_status(%struct.scb* %85, i64 %86)
  br label %92

88:                                               ; preds = %72
  %89 = load %struct.scb*, %struct.scb** %4, align 8
  %90 = load i64, i64* @CAM_REQ_CMP, align 8
  %91 = call i32 @ahd_set_transaction_status(%struct.scb* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %106

93:                                               ; preds = %60
  %94 = load %struct.scb*, %struct.scb** %4, align 8
  %95 = call i64 @ahd_get_transaction_status(%struct.scb* %94)
  %96 = load i64, i64* @CAM_SCSI_STATUS_ERROR, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.scb*, %struct.scb** %4, align 8
  %104 = call i32 @ahd_linux_handle_scsi_status(%struct.ahd_softc* %99, i32 %102, %struct.scb* %103)
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %108 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load %struct.scb*, %struct.scb** %4, align 8
  %113 = call i64 @ahd_get_transaction_status(%struct.scb* %112)
  %114 = load i64, i64* @CAM_REQ_CMP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.scb*, %struct.scb** %4, align 8
  %118 = call i64 @ahd_get_scsi_status(%struct.scb* %117)
  %119 = load i64, i64* @SCSI_STATUS_QUEUE_FULL, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %123 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %121, %116, %111, %106
  %127 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %128 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %132 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %136 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %134, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %126
  %140 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %141 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @AHD_TAG_SUCCESS_INTERVAL, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %147 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %149 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %139, %126
  %153 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %154 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %6, align 8
  %159 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %158, i32 0, i32 4
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.scb*, %struct.scb** %4, align 8
  %162 = getelementptr inbounds %struct.scb, %struct.scb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %160
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.scb*, %struct.scb** %4, align 8
  %170 = call i64 @ahd_get_transaction_status(%struct.scb* %169)
  %171 = load i64, i64* @CAM_BDR_SENT, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = load %struct.scb*, %struct.scb** %4, align 8
  %175 = call i64 @ahd_get_transaction_status(%struct.scb* %174)
  %176 = load i64, i64* @CAM_REQ_ABORTED, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %173, %167
  %179 = load %struct.scb*, %struct.scb** %4, align 8
  %180 = load i64, i64* @CAM_CMD_TIMEOUT, align 8
  %181 = call i32 @ahd_set_transaction_status(%struct.scb* %179, i64 %180)
  br label %182

182:                                              ; preds = %178, %173
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %191 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @complete(i64 %194)
  br label %196

196:                                              ; preds = %189, %182
  br label %197

197:                                              ; preds = %196, %160
  %198 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %199 = load %struct.scb*, %struct.scb** %4, align 8
  %200 = call i32 @ahd_free_scb(%struct.ahd_softc* %198, %struct.scb* %199)
  %201 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %203 = call i32 @ahd_linux_queue_cmd_complete(%struct.ahd_softc* %201, %struct.scsi_cmnd* %202)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.scb*, i32) #1

declare dso_local i32 @ahd_linux_unmap_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @ahd_get_transaction_status(%struct.scb*) #1

declare dso_local i64 @ahd_get_transfer_length(%struct.scb*) #1

declare dso_local i64 @ahd_get_residual(%struct.scb*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i64) #1

declare dso_local i32 @ahd_linux_handle_scsi_status(%struct.ahd_softc*, i32, %struct.scb*) #1

declare dso_local i64 @ahd_get_scsi_status(%struct.scb*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @ahd_free_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_linux_queue_cmd_complete(%struct.ahd_softc*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
