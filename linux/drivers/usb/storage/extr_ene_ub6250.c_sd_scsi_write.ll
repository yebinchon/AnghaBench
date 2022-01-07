; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_sd_scsi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_sd_scsi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i64 }
%struct.scsi_cmnd = type { i8* }
%struct.bulk_cb_wrap = type { i32, i32, i32*, i32 }
%struct.ene_ub6250_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@SD_RW_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Load SD RW pattern Fail !!\0A\00", align 1
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@FDIR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @sd_scsi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_scsi_write(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bulk_cb_wrap*, align 8
  %9 = alloca %struct.ene_ub6250_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.us_data*, %struct.us_data** %4, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %20, %struct.bulk_cb_wrap** %8, align 8
  %21 = load %struct.us_data*, %struct.us_data** %4, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %24, %struct.ene_ub6250_info** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 24
  %30 = and i32 %29, -16777216
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 16
  %36 = and i32 %35, 16711680
  %37 = or i32 %30, %36
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = and i32 %42, 65280
  %44 = or i32 %37, %43
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 0
  %50 = and i32 %49, 255
  %51 = or i32 %44, %50
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = and i32 %56, 65280
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 0
  %63 = and i32 %62, 255
  %64 = or i32 %57, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 512
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %67, 512
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %71 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %2
  %75 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %75, i32* %3, align 4
  br label %148

76:                                               ; preds = %2
  %77 = load %struct.us_data*, %struct.us_data** %4, align 8
  %78 = load i32, i32* @SD_RW_PATTERN, align 4
  %79 = call i32 @ene_load_bincode(%struct.us_data* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.us_data*, %struct.us_data** %4, align 8
  %85 = call i32 @usb_stor_dbg(%struct.us_data* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %86, i32* %3, align 4
  br label %148

87:                                               ; preds = %76
  %88 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %89 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %87
  %96 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %97 = call i32 @memset(%struct.bulk_cb_wrap* %96, i32 0, i32 24)
  %98 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %99 = call i32 @cpu_to_le32(i32 %98)
  %100 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %101 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %104 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %106 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %108 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 240, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = trunc i32 %111 to i8
  %113 = zext i8 %112 to i32
  %114 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %115 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* %12, align 4
  %119 = ashr i32 %118, 8
  %120 = trunc i32 %119 to i8
  %121 = zext i8 %120 to i32
  %122 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %123 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = ashr i32 %126, 16
  %128 = trunc i32 %127 to i8
  %129 = zext i8 %128 to i32
  %130 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %131 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 24
  %136 = trunc i32 %135 to i8
  %137 = zext i8 %136 to i32
  %138 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %139 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %137, i32* %141, align 4
  %142 = load %struct.us_data*, %struct.us_data** %4, align 8
  %143 = load i32, i32* @FDIR_WRITE, align 4
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %145 = call i32 @scsi_sglist(%struct.scsi_cmnd* %144)
  %146 = call i32 @ene_send_scsi_cmd(%struct.us_data* %142, i32 %143, i32 %145, i32 1)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %95, %83, %74
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
