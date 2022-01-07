; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @ene_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.us_data* %1, %struct.us_data** %4, align 8
  %7 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %11, %struct.ene_ub6250_info** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %12, i32 0)
  %14 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %15 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %21 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %2
  %26 = phi i1 [ true, %2 ], [ %24, %19 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.us_data*, %struct.us_data** %4, align 8
  %33 = call i32 @ene_init(%struct.us_data* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %41 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.us_data*, %struct.us_data** %4, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = call i32 @sd_scsi_irp(%struct.us_data* %46, %struct.scsi_cmnd* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %51 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.us_data*, %struct.us_data** %4, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = call i32 @ms_scsi_irp(%struct.us_data* %56, %struct.scsi_cmnd* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ene_init(%struct.us_data*) #1

declare dso_local i32 @sd_scsi_irp(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ms_scsi_irp(%struct.us_data*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
