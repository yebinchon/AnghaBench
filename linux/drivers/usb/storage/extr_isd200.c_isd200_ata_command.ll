; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_ata_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_ata_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.us_data = type { i32* }
%union.ata_cdb = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ERROR Driver not initialized\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.us_data*)* @isd200_ata_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isd200_ata_command(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ata_cdb, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.us_data* %1, %struct.us_data** %4, align 8
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.us_data*, %struct.us_data** %4, align 8
  %14 = call i32 @usb_stor_dbg(%struct.us_data* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @DID_ERROR, align 4
  %16 = shl i32 %15, 16
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %20, i32 0)
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = load %struct.us_data*, %struct.us_data** %4, align 8
  %26 = call i32 @isd200_scsi_to_ata(%struct.scsi_cmnd* %24, %struct.us_data* %25, %union.ata_cdb* %7)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.us_data*, %struct.us_data** %4, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = call i32 @isd200_invoke_transport(%struct.us_data* %30, %struct.scsi_cmnd* %31, %union.ata_cdb* %7)
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @isd200_srb_set_bufflen(%struct.scsi_cmnd* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %12
  ret void
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @isd200_scsi_to_ata(%struct.scsi_cmnd*, %struct.us_data*, %union.ata_cdb*) #1

declare dso_local i32 @isd200_invoke_transport(%struct.us_data*, %struct.scsi_cmnd*, %union.ata_cdb*) #1

declare dso_local i32 @isd200_srb_set_bufflen(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
