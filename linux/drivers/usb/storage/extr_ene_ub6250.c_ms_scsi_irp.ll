; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_irp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_irp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.scsi_cmnd = type { i32* }
%struct.ene_ub6250_info = type { i32 }

@SS_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @ms_scsi_irp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_scsi_irp(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %10, %struct.ene_ub6250_info** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %44 [
    i32 129, label %16
    i32 130, label %20
    i32 134, label %24
    i32 133, label %28
    i32 131, label %32
    i32 132, label %36
    i32 128, label %40
  ]

16:                                               ; preds = %2
  %17 = load %struct.us_data*, %struct.us_data** %3, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = call i32 @ms_scsi_test_unit_ready(%struct.us_data* %17, %struct.scsi_cmnd* %18)
  store i32 %19, i32* %5, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.us_data*, %struct.us_data** %3, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = call i32 @do_scsi_request_sense(%struct.us_data* %21, %struct.scsi_cmnd* %22)
  store i32 %23, i32* %5, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.us_data*, %struct.us_data** %3, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = call i32 @do_scsi_inquiry(%struct.us_data* %25, %struct.scsi_cmnd* %26)
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.us_data*, %struct.us_data** %3, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call i32 @ms_scsi_mode_sense(%struct.us_data* %29, %struct.scsi_cmnd* %30)
  store i32 %31, i32* %5, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.us_data*, %struct.us_data** %3, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = call i32 @ms_scsi_read_capacity(%struct.us_data* %33, %struct.scsi_cmnd* %34)
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load %struct.us_data*, %struct.us_data** %3, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = call i32 @ms_scsi_read(%struct.us_data* %37, %struct.scsi_cmnd* %38)
  store i32 %39, i32* %5, align 4
  br label %49

40:                                               ; preds = %2
  %41 = load %struct.us_data*, %struct.us_data** %3, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = call i32 @ms_scsi_write(%struct.us_data* %41, %struct.scsi_cmnd* %42)
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load i32, i32* @SS_ILLEGAL_REQUEST, align 4
  %46 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %47 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %40, %36, %32, %28, %24, %20, %16
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @SS_SUCCESS, align 4
  %55 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %56 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @ms_scsi_test_unit_ready(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @do_scsi_request_sense(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @do_scsi_inquiry(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ms_scsi_mode_sense(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ms_scsi_read_capacity(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ms_scsi_read(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ms_scsi_write(%struct.us_data*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
