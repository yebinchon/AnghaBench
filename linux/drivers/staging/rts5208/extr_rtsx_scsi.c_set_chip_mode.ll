; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_set_chip_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_set_chip_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64* }
%struct.rtsx_chip = type { i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@CDRESUMECTL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @set_chip_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_chip_mode(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %10 = call i32 @CHECK_PID(%struct.rtsx_chip* %9, i32 21000)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %14)
  %16 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %17 = call i32 @set_sense_type(%struct.rtsx_chip* %13, i32 %15, i32 %16)
  %18 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %18, i32* %3, align 4
  br label %96

19:                                               ; preds = %2
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %19
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* @CDRESUMECTL, align 4
  %33 = call i32 @rtsx_write_register(%struct.rtsx_chip* %31, i32 %32, i32 119, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %96

39:                                               ; preds = %28
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %41 = call i32 @rtsx_disable_bus_int(%struct.rtsx_chip* %40)
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %43 = call i32 @rtsx_read_phy_register(%struct.rtsx_chip* %42, i32 28, i32* %8)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %96

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %52, i32 28, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %59, i32* %3, align 4
  br label %96

60:                                               ; preds = %49
  br label %94

61:                                               ; preds = %19
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %63 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %65 = load i32, i32* @CDRESUMECTL, align 4
  %66 = call i32 @rtsx_write_register(%struct.rtsx_chip* %64, i32 %65, i32 119, i32 119)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %71, i32* %3, align 4
  br label %96

72:                                               ; preds = %61
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %74 = call i32 @rtsx_enable_bus_int(%struct.rtsx_chip* %73)
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %76 = call i32 @rtsx_read_phy_register(%struct.rtsx_chip* %75, i32 28, i32* %8)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @STATUS_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %81, i32* %3, align 4
  br label %96

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 65534
  store i32 %84, i32* %8, align 4
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %85, i32 28, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @STATUS_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %91, %80, %70, %58, %47, %37, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_disable_bus_int(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_phy_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_enable_bus_int(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
