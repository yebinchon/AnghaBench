; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_send_reset_ae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_send_reset_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.atto_vda_ae_hdr = type { i64, i64, i32, i32 }

@VDAAE_HDR_TYPE_PWRMGT = common dso_local global i32 0, align 4
@VDAAE_HDR_TYPE_RESET = common dso_local global i32 0, align 4
@VDAAE_HDR_VER_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"*** sending power management AE ***\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"*** sending reset AE ***\00", align 1
@fw_event_vda_ae = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_send_reset_ae(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atto_vda_ae_hdr, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @VDAAE_HDR_TYPE_PWRMGT, align 4
  %10 = getelementptr inbounds %struct.atto_vda_ae_hdr, %struct.atto_vda_ae_hdr* %5, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @VDAAE_HDR_TYPE_RESET, align 4
  %13 = getelementptr inbounds %struct.atto_vda_ae_hdr, %struct.atto_vda_ae_hdr* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @VDAAE_HDR_VER_0, align 4
  %16 = getelementptr inbounds %struct.atto_vda_ae_hdr, %struct.atto_vda_ae_hdr* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.atto_vda_ae_hdr, %struct.atto_vda_ae_hdr* %5, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.atto_vda_ae_hdr, %struct.atto_vda_ae_hdr* %5, i32 0, i32 0
  store i64 24, i64* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %14
  %24 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %27 = load i32, i32* @fw_event_vda_ae, align 4
  %28 = call i32 @esas2r_queue_fw_event(%struct.esas2r_adapter* %26, i32 %27, %struct.atto_vda_ae_hdr* %5, i32 4)
  ret void
}

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_queue_fw_event(%struct.esas2r_adapter*, i32, %struct.atto_vda_ae_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
