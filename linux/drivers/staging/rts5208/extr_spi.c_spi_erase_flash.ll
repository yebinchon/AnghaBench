; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_erase_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_erase_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@SPI_NO_ERR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@PAGE_ERASE = common dso_local global i32 0, align 4
@SPI_WREN = common dso_local global i32 0, align 4
@CHIP_ERASE = common dso_local global i32 0, align 4
@SPI_INVALID_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_erase_flash(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = load i32, i32* @SPI_NO_ERR, align 4
  %12 = call i32 @spi_set_err_code(%struct.rtsx_chip* %10, i32 %11)
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %23, %29
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %30, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 9
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %43 = call i32 @spi_set_init_para(%struct.rtsx_chip* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %49 = load i32, i32* @SPI_HW_ERR, align 4
  %50 = call i32 @spi_set_err_code(%struct.rtsx_chip* %48, i32 %49)
  %51 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %51, i32* %3, align 4
  br label %107

52:                                               ; preds = %2
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PAGE_ERASE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %58 = load i32, i32* @SPI_WREN, align 4
  %59 = call i32 @sf_enable_write(%struct.rtsx_chip* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %64, i32* %3, align 4
  br label %107

65:                                               ; preds = %56
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @sf_erase(%struct.rtsx_chip* %66, i32 %67, i32 1, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @STATUS_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %74, i32* %3, align 4
  br label %107

75:                                               ; preds = %65
  br label %105

76:                                               ; preds = %52
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @CHIP_ERASE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %82 = load i32, i32* @SPI_WREN, align 4
  %83 = call i32 @sf_enable_write(%struct.rtsx_chip* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %88, i32* %3, align 4
  br label %107

89:                                               ; preds = %80
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @sf_erase(%struct.rtsx_chip* %90, i32 %91, i32 0, i32 0)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %97, i32* %3, align 4
  br label %107

98:                                               ; preds = %89
  br label %104

99:                                               ; preds = %76
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %101 = load i32, i32* @SPI_INVALID_COMMAND, align 4
  %102 = call i32 @spi_set_err_code(%struct.rtsx_chip* %100, i32 %101)
  %103 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %103, i32* %3, align 4
  br label %107

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %99, %96, %87, %73, %63, %47
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @spi_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @spi_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @sf_enable_write(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sf_erase(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
