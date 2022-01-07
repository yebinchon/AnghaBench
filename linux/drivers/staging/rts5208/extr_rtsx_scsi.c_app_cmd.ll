; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_app_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_app_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @app_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_cmd(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %84 [
    i32 142, label %12
    i32 141, label %12
    i32 137, label %16
    i32 129, label %20
    i32 143, label %24
    i32 134, label %28
    i32 147, label %32
    i32 146, label %32
    i32 136, label %36
    i32 128, label %40
    i32 145, label %44
    i32 139, label %48
    i32 131, label %52
    i32 138, label %56
    i32 130, label %60
    i32 140, label %64
    i32 132, label %68
    i32 135, label %72
    i32 133, label %76
    i32 144, label %80
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = call i32 @read_write(%struct.scsi_cmnd* %13, %struct.rtsx_chip* %14)
  store i32 %15, i32* %6, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %19 = call i32 @read_host_reg(%struct.scsi_cmnd* %17, %struct.rtsx_chip* %18)
  store i32 %19, i32* %6, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = call i32 @write_host_reg(%struct.scsi_cmnd* %21, %struct.rtsx_chip* %22)
  store i32 %23, i32* %6, align 4
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = call i32 @get_variable(%struct.scsi_cmnd* %25, %struct.rtsx_chip* %26)
  store i32 %27, i32* %6, align 4
  br label %91

28:                                               ; preds = %2
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %31 = call i32 @set_variable(%struct.scsi_cmnd* %29, %struct.rtsx_chip* %30)
  store i32 %31, i32* %6, align 4
  br label %91

32:                                               ; preds = %2, %2
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %35 = call i32 @dma_access_ring_buffer(%struct.scsi_cmnd* %33, %struct.rtsx_chip* %34)
  store i32 %35, i32* %6, align 4
  br label %91

36:                                               ; preds = %2
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %39 = call i32 @read_phy_register(%struct.scsi_cmnd* %37, %struct.rtsx_chip* %38)
  store i32 %39, i32* %6, align 4
  br label %91

40:                                               ; preds = %2
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %43 = call i32 @write_phy_register(%struct.scsi_cmnd* %41, %struct.rtsx_chip* %42)
  store i32 %43, i32* %6, align 4
  br label %91

44:                                               ; preds = %2
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %47 = call i32 @erase_eeprom2(%struct.scsi_cmnd* %45, %struct.rtsx_chip* %46)
  store i32 %47, i32* %6, align 4
  br label %91

48:                                               ; preds = %2
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %51 = call i32 @read_eeprom2(%struct.scsi_cmnd* %49, %struct.rtsx_chip* %50)
  store i32 %51, i32* %6, align 4
  br label %91

52:                                               ; preds = %2
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %55 = call i32 @write_eeprom2(%struct.scsi_cmnd* %53, %struct.rtsx_chip* %54)
  store i32 %55, i32* %6, align 4
  br label %91

56:                                               ; preds = %2
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %59 = call i32 @read_efuse(%struct.scsi_cmnd* %57, %struct.rtsx_chip* %58)
  store i32 %59, i32* %6, align 4
  br label %91

60:                                               ; preds = %2
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %63 = call i32 @write_efuse(%struct.scsi_cmnd* %61, %struct.rtsx_chip* %62)
  store i32 %63, i32* %6, align 4
  br label %91

64:                                               ; preds = %2
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %67 = call i32 @read_cfg_byte(%struct.scsi_cmnd* %65, %struct.rtsx_chip* %66)
  store i32 %67, i32* %6, align 4
  br label %91

68:                                               ; preds = %2
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %71 = call i32 @write_cfg_byte(%struct.scsi_cmnd* %69, %struct.rtsx_chip* %70)
  store i32 %71, i32* %6, align 4
  br label %91

72:                                               ; preds = %2
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %75 = call i32 @set_chip_mode(%struct.scsi_cmnd* %73, %struct.rtsx_chip* %74)
  store i32 %75, i32* %6, align 4
  br label %91

76:                                               ; preds = %2
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %79 = call i32 @suit_cmd(%struct.scsi_cmnd* %77, %struct.rtsx_chip* %78)
  store i32 %79, i32* %6, align 4
  br label %91

80:                                               ; preds = %2
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %83 = call i32 @get_dev_status(%struct.scsi_cmnd* %81, %struct.rtsx_chip* %82)
  store i32 %83, i32* %6, align 4
  br label %91

84:                                               ; preds = %2
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %87 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %86)
  %88 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %89 = call i32 @set_sense_type(%struct.rtsx_chip* %85, i32 %87, i32 %88)
  %90 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %84
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @read_write(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_host_reg(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @write_host_reg(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @get_variable(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @set_variable(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @dma_access_ring_buffer(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_phy_register(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @write_phy_register(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @erase_eeprom2(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_eeprom2(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @write_eeprom2(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_efuse(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @write_efuse(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @read_cfg_byte(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @write_cfg_byte(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @set_chip_mode(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @suit_cmd(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @get_dev_status(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
