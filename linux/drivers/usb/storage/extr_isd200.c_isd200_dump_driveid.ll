; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_dump_driveid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_dump_driveid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"   Identify Data Structure:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"      config = 0x%x\0A\00", align 1
@ATA_ID_CONFIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"      cyls = 0x%x\0A\00", align 1
@ATA_ID_CYLS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"      heads = 0x%x\0A\00", align 1
@ATA_ID_HEADS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"      track_bytes = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"      sector_bytes = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"      sectors = 0x%x\0A\00", align 1
@ATA_ID_SECTORS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"      serial_no[0] = 0x%x\0A\00", align 1
@ATA_ID_SERNO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"      buf_type = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"      buf_size = 0x%x\0A\00", align 1
@ATA_ID_BUF_SIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"      ecc_bytes = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"      fw_rev[0] = 0x%x\0A\00", align 1
@ATA_ID_FW_REV = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"      model[0] = 0x%x\0A\00", align 1
@ATA_ID_PROD = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"      max_multsect = 0x%x\0A\00", align 1
@ATA_ID_MAX_MULTSECT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"      dword_io = 0x%x\0A\00", align 1
@ATA_ID_DWORD_IO = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"      capability = 0x%x\0A\00", align 1
@ATA_ID_CAPABILITY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"      tPIO = 0x%x\0A\00", align 1
@ATA_ID_OLD_PIO_MODES = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"      tDMA = 0x%x\0A\00", align 1
@ATA_ID_OLD_DMA_MODES = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"      field_valid = 0x%x\0A\00", align 1
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"      cur_cyls = 0x%x\0A\00", align 1
@ATA_ID_CUR_CYLS = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"      cur_heads = 0x%x\0A\00", align 1
@ATA_ID_CUR_HEADS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"      cur_sectors = 0x%x\0A\00", align 1
@ATA_ID_CUR_SECTORS = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [27 x i8] c"      cur_capacity = 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"      multsect = 0x%x\0A\00", align 1
@ATA_ID_MULTSECT = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [27 x i8] c"      lba_capacity = 0x%x\0A\00", align 1
@ATA_ID_LBA_CAPACITY = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"      command_set_1 = 0x%x\0A\00", align 1
@ATA_ID_COMMAND_SET_1 = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [28 x i8] c"      command_set_2 = 0x%x\0A\00", align 1
@ATA_ID_COMMAND_SET_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*, i32*)* @isd200_dump_driveid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isd200_dump_driveid(%struct.us_data* %0, i32* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* @ATA_ID_CONFIG, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.us_data*, %struct.us_data** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @ATA_ID_CYLS, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.us_data*, %struct.us_data** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* @ATA_ID_HEADS, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.us_data*, %struct.us_data** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load %struct.us_data*, %struct.us_data** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.us_data*, %struct.us_data** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @ATA_ID_SECTORS, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load %struct.us_data*, %struct.us_data** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* @ATA_ID_SERNO, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = bitcast i32* %44 to i8*
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  %49 = load %struct.us_data*, %struct.us_data** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 20
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = load %struct.us_data*, %struct.us_data** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @ATA_ID_BUF_SIZE, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  %60 = load %struct.us_data*, %struct.us_data** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 22
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  %65 = load %struct.us_data*, %struct.us_data** %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* @ATA_ID_FW_REV, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = bitcast i32* %68 to i8*
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %71)
  %73 = load %struct.us_data*, %struct.us_data** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i64, i64* @ATA_ID_PROD, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = bitcast i32* %76 to i8*
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %79)
  %81 = load %struct.us_data*, %struct.us_data** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* @ATA_ID_MAX_MULTSECT, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 255
  %87 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %86)
  %88 = load %struct.us_data*, %struct.us_data** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* @ATA_ID_DWORD_IO, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %92)
  %94 = load %struct.us_data*, %struct.us_data** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load i64, i64* @ATA_ID_CAPABILITY, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  %100 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %99)
  %101 = load %struct.us_data*, %struct.us_data** %3, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = load i64, i64* @ATA_ID_OLD_PIO_MODES, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %106)
  %108 = load %struct.us_data*, %struct.us_data** %3, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* @ATA_ID_OLD_DMA_MODES, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %113)
  %115 = load %struct.us_data*, %struct.us_data** %3, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %119)
  %121 = load %struct.us_data*, %struct.us_data** %3, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i64, i64* @ATA_ID_CUR_CYLS, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %125)
  %127 = load %struct.us_data*, %struct.us_data** %3, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i64, i64* @ATA_ID_CUR_HEADS, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %131)
  %133 = load %struct.us_data*, %struct.us_data** %3, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = load i64, i64* @ATA_ID_CUR_SECTORS, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %137)
  %139 = load %struct.us_data*, %struct.us_data** %3, align 8
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @ata_id_u32(i32* %140, i32 57)
  %142 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %141)
  %143 = load %struct.us_data*, %struct.us_data** %3, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = load i64, i64* @ATA_ID_MULTSECT, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 255
  %149 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %148)
  %150 = load %struct.us_data*, %struct.us_data** %3, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @ATA_ID_LBA_CAPACITY, align 4
  %153 = call i32 @ata_id_u32(i32* %151, i32 %152)
  %154 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 %153)
  %155 = load %struct.us_data*, %struct.us_data** %3, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = load i64, i64* @ATA_ID_COMMAND_SET_1, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 %159)
  %161 = load %struct.us_data*, %struct.us_data** %3, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load i64, i64* @ATA_ID_COMMAND_SET_2, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %165)
  ret void
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @ata_id_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
