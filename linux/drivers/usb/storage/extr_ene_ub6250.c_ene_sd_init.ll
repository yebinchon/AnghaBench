; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i64 }
%struct.bulk_cb_wrap = type { i32*, i32, i8*, i8* }
%struct.ene_ub6250_info = type { %struct.SD_STATUS, i64* }
%struct.SD_STATUS = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"transport --- ENE_SDInit\0A\00", align 1
@SD_INIT1_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Load SD Init Code Part-1 Fail !!\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i8* null, align 8
@FDIR_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Execution SD Init Code Fail !!\0A\00", align 1
@SD_INIT2_PATTERN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Load SD Init Code Part-2 Fail !!\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Insert     = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Ready      = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"IsMMC      = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"HiCapacity = %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"HiSpeed    = %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"WtP        = %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"SD Card Not Ready --- %x\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @ene_sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_sd_init(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bulk_cb_wrap*, align 8
  %6 = alloca %struct.ene_ub6250_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.SD_STATUS*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %12, %struct.bulk_cb_wrap** %5, align 8
  %13 = load %struct.us_data*, %struct.us_data** %3, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %16, %struct.ene_ub6250_info** %6, align 8
  %17 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %18 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %7, align 8
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.us_data*, %struct.us_data** %3, align 8
  %23 = load i32, i32* @SD_INIT1_PATTERN, align 4
  %24 = call i32 @ene_load_bincode(%struct.us_data* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.us_data*, %struct.us_data** %3, align 8
  %30 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %157

32:                                               ; preds = %1
  %33 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %34 = call i32 @memset(%struct.bulk_cb_wrap* %33, i32 0, i32 32)
  %35 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %38 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @US_BULK_FLAG_IN, align 8
  %40 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %41 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %43 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 242, i32* %45, align 4
  %46 = load %struct.us_data*, %struct.us_data** %3, align 8
  %47 = load i32, i32* @FDIR_READ, align 4
  %48 = call i32 @ene_send_scsi_cmd(%struct.us_data* %46, i32 %47, i64* null, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load %struct.us_data*, %struct.us_data** %3, align 8
  %54 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %55, i32* %2, align 4
  br label %157

56:                                               ; preds = %32
  %57 = load %struct.us_data*, %struct.us_data** %3, align 8
  %58 = load i32, i32* @SD_INIT2_PATTERN, align 4
  %59 = call i32 @ene_load_bincode(%struct.us_data* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.us_data*, %struct.us_data** %3, align 8
  %65 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %66, i32* %2, align 4
  br label %157

67:                                               ; preds = %56
  %68 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %69 = call i32 @memset(%struct.bulk_cb_wrap* %68, i32 0, i32 32)
  %70 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %73 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %75 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %74, i32 0, i32 1
  store i32 512, i32* %75, align 8
  %76 = load i8*, i8** @US_BULK_FLAG_IN, align 8
  %77 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %78 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %5, align 8
  %80 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 241, i32* %82, align 4
  %83 = load %struct.us_data*, %struct.us_data** %3, align 8
  %84 = load i32, i32* @FDIR_READ, align 4
  %85 = load i64*, i64** %7, align 8
  %86 = call i32 @ene_send_scsi_cmd(%struct.us_data* %83, i32 %84, i64* %85, i32 0)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %67
  %91 = load %struct.us_data*, %struct.us_data** %3, align 8
  %92 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %93, i32* %2, align 4
  br label %157

94:                                               ; preds = %67
  %95 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %96 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %95, i32 0, i32 0
  %97 = load i64*, i64** %7, align 8
  %98 = bitcast i64* %97 to %struct.SD_STATUS*
  %99 = bitcast %struct.SD_STATUS* %96 to i8*
  %100 = bitcast %struct.SD_STATUS* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 48, i1 false)
  %101 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %102 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %148

106:                                              ; preds = %94
  %107 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %108 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %106
  %113 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %114 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %113, i32 0, i32 0
  store %struct.SD_STATUS* %114, %struct.SD_STATUS** %8, align 8
  %115 = load %struct.us_data*, %struct.us_data** %3, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = call i32 @ene_get_card_status(%struct.us_data* %115, i64* %116)
  %118 = load %struct.us_data*, %struct.us_data** %3, align 8
  %119 = load %struct.SD_STATUS*, %struct.SD_STATUS** %8, align 8
  %120 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load %struct.us_data*, %struct.us_data** %3, align 8
  %124 = load %struct.SD_STATUS*, %struct.SD_STATUS** %8, align 8
  %125 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  %128 = load %struct.us_data*, %struct.us_data** %3, align 8
  %129 = load %struct.SD_STATUS*, %struct.SD_STATUS** %8, align 8
  %130 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %131)
  %133 = load %struct.us_data*, %struct.us_data** %3, align 8
  %134 = load %struct.SD_STATUS*, %struct.SD_STATUS** %8, align 8
  %135 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %136)
  %138 = load %struct.us_data*, %struct.us_data** %3, align 8
  %139 = load %struct.SD_STATUS*, %struct.SD_STATUS** %8, align 8
  %140 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %141)
  %143 = load %struct.us_data*, %struct.us_data** %3, align 8
  %144 = load %struct.SD_STATUS*, %struct.SD_STATUS** %8, align 8
  %145 = getelementptr inbounds %struct.SD_STATUS, %struct.SD_STATUS* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i64 %146)
  br label %155

148:                                              ; preds = %106, %94
  %149 = load %struct.us_data*, %struct.us_data** %3, align 8
  %150 = load i64*, i64** %7, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 %152)
  %154 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %154, i32* %2, align 4
  br label %157

155:                                              ; preds = %112
  %156 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %148, %90, %63, %52, %28
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ene_get_card_status(%struct.us_data*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
