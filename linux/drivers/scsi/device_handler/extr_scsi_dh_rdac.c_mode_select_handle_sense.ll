; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_mode_select_handle_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_mode_select_handle_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.rdac_dh_data* }
%struct.rdac_dh_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@SCSI_DH_IMM_RETRY = common dso_local global i32 0, align 4
@RDAC_LOG_FAILOVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"array %s, ctlr %d, MODE_SELECT returned with sense %02x/%02x/%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @mode_select_handle_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_select_handle_sense(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_sense_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdac_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %4, align 8
  %7 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 0
  %10 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %9, align 8
  store %struct.rdac_dh_data* %10, %struct.rdac_dh_data** %6, align 8
  %11 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %12 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %47 [
    i32 129, label %19
    i32 132, label %19
    i32 128, label %19
    i32 130, label %21
    i32 131, label %34
  ]

19:                                               ; preds = %15, %15, %15
  %20 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %15
  %22 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %26, %21
  br label %48

34:                                               ; preds = %15
  %35 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 145
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 54
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @SCSI_DH_IMM_RETRY, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %39, %34
  br label %48

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47, %46, %33, %19
  %49 = load i32, i32* @RDAC_LOG_FAILOVER, align 4
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %52 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %6, align 8
  %58 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @RDAC_LOG(i32 %49, %struct.scsi_device* %50, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %61, i32 %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %48, %14
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @RDAC_LOG(i32, %struct.scsi_device*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
