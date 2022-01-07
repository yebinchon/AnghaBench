; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_build_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_build_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.scsi_cmnd = type { i32* }
%struct.isd200_info = type { i8* }
%struct.sense_data = type { i32, i32, i64, i64, i8* }

@ATA_REG_ERROR_OFFSET = common dso_local global i64 0, align 8
@ATA_ERROR_MEDIA_CHANGE = common dso_local global i8 0, align 1
@SENSE_ERRCODE_VALID = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i8* null, align 8
@ATA_MCR = common dso_local global i8 0, align 1
@ATA_TRK0NF = common dso_local global i8 0, align 1
@NOT_READY = common dso_local global i8* null, align 8
@ATA_UNC = common dso_local global i8 0, align 1
@DATA_PROTECT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*, %struct.scsi_cmnd*)* @isd200_build_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isd200_build_sense(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.isd200_info*, align 8
  %6 = alloca %struct.sense_data*, align 8
  %7 = alloca i8, align 1
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.isd200_info*
  store %struct.isd200_info* %11, %struct.isd200_info** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = bitcast i32* %15 to %struct.sense_data*
  store %struct.sense_data* %16, %struct.sense_data** %6, align 8
  %17 = load %struct.isd200_info*, %struct.isd200_info** %5, align 8
  %18 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* @ATA_REG_ERROR_OFFSET, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ATA_ERROR_MEDIA_CHANGE, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load i32, i32* @SENSE_ERRCODE_VALID, align 4
  %31 = or i32 112, %30
  %32 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %33 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %35 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %34, i32 0, i32 1
  store i32 11, i32* %35, align 4
  %36 = load i8*, i8** @UNIT_ATTENTION, align 8
  %37 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %38 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %40 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %42 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %120

43:                                               ; preds = %2
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @ATA_MCR, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load i32, i32* @SENSE_ERRCODE_VALID, align 4
  %52 = or i32 112, %51
  %53 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %54 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %56 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %55, i32 0, i32 1
  store i32 11, i32* %56, align 4
  %57 = load i8*, i8** @UNIT_ATTENTION, align 8
  %58 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %59 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %61 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %63 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  br label %119

64:                                               ; preds = %43
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @ATA_TRK0NF, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load i32, i32* @SENSE_ERRCODE_VALID, align 4
  %73 = or i32 112, %72
  %74 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %75 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %77 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %76, i32 0, i32 1
  store i32 11, i32* %77, align 4
  %78 = load i8*, i8** @NOT_READY, align 8
  %79 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %80 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %82 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %84 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  br label %118

85:                                               ; preds = %64
  %86 = load i8, i8* %7, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @ATA_UNC, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load i32, i32* @SENSE_ERRCODE_VALID, align 4
  %94 = or i32 112, %93
  %95 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %96 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %98 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %97, i32 0, i32 1
  store i32 11, i32* %98, align 4
  %99 = load i8*, i8** @DATA_PROTECT, align 8
  %100 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %101 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %103 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %105 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  br label %117

106:                                              ; preds = %85
  %107 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %108 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %110 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %112 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %111, i32 0, i32 4
  store i8* null, i8** %112, align 8
  %113 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %114 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.sense_data*, %struct.sense_data** %6, align 8
  %116 = getelementptr inbounds %struct.sense_data, %struct.sense_data* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %106, %92
  br label %118

118:                                              ; preds = %117, %71
  br label %119

119:                                              ; preds = %118, %50
  br label %120

120:                                              ; preds = %119, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
