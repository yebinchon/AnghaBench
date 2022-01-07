; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_check_if_make_lun_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_check_if_make_lun_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64 }
%struct.fc_rport = type { i64 }
%struct.bfad_itnim_data_s = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bfa_rport_s*, %struct.bfa_s* }
%struct.bfa_rport_s = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.bfa_s = type { i32 }
%struct.bfa_lun_mask_s = type { i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@MAX_LUN_MASK_CFG = common dso_local global i32 0, align 4
@BFA_IOIM_LUN_MASK_ACTIVE = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.fc_rport*)* @bfad_im_check_if_make_lun_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_check_if_make_lun_visible(%struct.scsi_device* %0, %struct.fc_rport* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca %struct.bfad_itnim_data_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca %struct.bfa_rport_s*, align 8
  %8 = alloca %struct.bfa_lun_mask_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.fc_rport* %1, %struct.fc_rport** %4, align 8
  %11 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %12 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfad_itnim_data_s*
  store %struct.bfad_itnim_data_s* %14, %struct.bfad_itnim_data_s** %5, align 8
  %15 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.bfa_s*, %struct.bfa_s** %20, align 8
  store %struct.bfa_s* %21, %struct.bfa_s** %6, align 8
  %22 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %27, align 8
  store %struct.bfa_rport_s* %28, %struct.bfa_rport_s** %7, align 8
  %29 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %30 = call %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s* %29)
  store %struct.bfa_lun_mask_s* %30, %struct.bfa_lun_mask_s** %8, align 8
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %83, %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAX_LUN_MASK_CFG, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %33
  %38 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %38, i64 %40
  %42 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BFA_IOIM_LUN_MASK_ACTIVE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %37
  %47 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %47, i64 %49
  %51 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %50, i32 0, i32 3
  %52 = call i64 @scsilun_to_int(i32* %51)
  %53 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %46
  %58 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %58, i64 %60
  %62 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %7, align 8
  %65 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %57
  %69 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %69, i64 %71
  %73 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %7, align 8
  %76 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %81, i32* %10, align 4
  br label %86

82:                                               ; preds = %68, %57, %46, %37
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %33

86:                                               ; preds = %80, %33
  %87 = load i32, i32* %10, align 4
  ret i32 %87
}

declare dso_local %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s*) #1

declare dso_local i64 @scsilun_to_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
