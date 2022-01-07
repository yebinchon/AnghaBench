; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nvram.c_fm93c56a_datain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nvram.c_fm93c56a_datain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@AUBURN_EEPROM_CLK_RISE = common dso_local global i32 0, align 4
@AUBURN_EEPROM_CLK_FALL = common dso_local global i32 0, align 4
@AUBURN_EEPROM_DI_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i16*)* @fm93c56a_datain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm93c56a_datain(%struct.scsi_qla_host* %0, i16* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = call i32 @eeprom_no_data_bits(%struct.scsi_qla_host* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AUBURN_EEPROM_CLK_RISE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = call i32 @eeprom_cmd(i32 %18, %struct.scsi_qla_host* %19)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AUBURN_EEPROM_CLK_FALL, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = call i32 @eeprom_cmd(i32 %25, %struct.scsi_qla_host* %26)
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %29 = call i32 @isp_nvram(%struct.scsi_qla_host* %28)
  %30 = call i32 @readw(i32 %29)
  %31 = load i32, i32* @AUBURN_EEPROM_DI_1, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %13
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load i32, i32* %6, align 4
  %45 = trunc i32 %44 to i16
  %46 = load i16*, i16** %4, align 8
  store i16 %45, i16* %46, align 2
  ret i32 1
}

declare dso_local i32 @eeprom_no_data_bits(%struct.scsi_qla_host*) #1

declare dso_local i32 @eeprom_cmd(i32, %struct.scsi_qla_host*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @isp_nvram(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
