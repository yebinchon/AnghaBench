; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_start_stop_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_start_stop_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @start_stop_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_stop_unit(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %10)
  %12 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %9, i32 %11)
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %53 [
    i32 129, label %27
    i32 128, label %29
    i32 130, label %40
    i32 131, label %40
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %21
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @check_card_ready(%struct.rtsx_chip* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @eject_card(%struct.rtsx_chip* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %21, %21
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @check_card_ready(%struct.rtsx_chip* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %46, i32* %3, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %51 = call i32 @set_sense_type(%struct.rtsx_chip* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %21
  %54 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %47, %45, %38, %27, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @eject_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
