; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64 }
%struct.fc_rport = type { i64 }
%struct.bfad_itnim_data_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@BFA_LUNMASK_ENABLED = common dso_local global i64 0, align 8
@BLIST_NOREPORTLUN = common dso_local global i32 0, align 4
@BLIST_SPARSELUN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @bfad_im_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca %struct.bfad_itnim_data_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = call i32 @scsi_target(%struct.scsi_device* %7)
  %9 = call %struct.fc_rport* @starget_to_rport(i32 %8)
  store %struct.fc_rport* %9, %struct.fc_rport** %4, align 8
  %10 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %11 = icmp ne %struct.fc_rport* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %14 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %65

19:                                               ; preds = %12
  %20 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %21 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bfad_itnim_data_s*
  store %struct.bfad_itnim_data_s* %23, %struct.bfad_itnim_data_s** %5, align 8
  %24 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.bfa_s*, %struct.bfa_s** %29, align 8
  store %struct.bfa_s* %30, %struct.bfa_s** %6, align 8
  %31 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %32 = call i64 @bfa_get_lun_mask_status(%struct.bfa_s* %31)
  %33 = load i64, i64* @BFA_LUNMASK_ENABLED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %19
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @BLIST_NOREPORTLUN, align 4
  %42 = load i32, i32* @BLIST_SPARSELUN, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %59

48:                                               ; preds = %35
  %49 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %50 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %51 = call i64 @bfad_im_check_if_make_lun_visible(%struct.scsi_device* %49, %struct.fc_rport* %50)
  %52 = load i64, i64* @BFA_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %61 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %54, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @bfa_get_lun_mask_status(%struct.bfa_s*) #1

declare dso_local i64 @bfad_im_check_if_make_lun_visible(%struct.scsi_device*, %struct.fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
