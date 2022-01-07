; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_read_extra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_read_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i64 }
%struct.ms_lib_type_extdat = type { i32, i32, i32, i32, i8*, i8*, i64 }
%struct.bulk_cb_wrap = type { i32, i32*, i32, i32 }
%struct.ene_ub6250_info = type { i8** }

@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i32 0, align 4
@FDIR_READ = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i8*, %struct.ms_lib_type_extdat*)* @ms_lib_read_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_read_extra(%struct.us_data* %0, i32 %1, i8* %2, %struct.ms_lib_type_extdat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ms_lib_type_extdat*, align 8
  %10 = alloca %struct.bulk_cb_wrap*, align 8
  %11 = alloca %struct.ene_ub6250_info*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ms_lib_type_extdat* %3, %struct.ms_lib_type_extdat** %9, align 8
  %14 = load %struct.us_data*, %struct.us_data** %6, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %17, %struct.bulk_cb_wrap** %10, align 8
  %18 = load %struct.us_data*, %struct.us_data** %6, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %21, %struct.ene_ub6250_info** %11, align 8
  %22 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %11, align 8
  %23 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %12, align 8
  %25 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %26 = call i32 @memset(%struct.bulk_cb_wrap* %25, i32 0, i32 24)
  %27 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %30 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %32 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %34 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %35 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %37 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 241, i32* %39, align 4
  %40 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %41 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 3, i32* %43, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %44 to i8
  %46 = zext i8 %45 to i32
  %47 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %48 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = trunc i32 %51 to i8
  %53 = zext i8 %52 to i32
  %54 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %55 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 8
  %60 = trunc i32 %59 to i8
  %61 = zext i8 %60 to i32
  %62 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %63 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 16
  %68 = trunc i32 %67 to i8
  %69 = zext i8 %68 to i32
  %70 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %71 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %69, i32* %73, align 4
  %74 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %10, align 8
  %75 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 1, i32* %77, align 4
  %78 = load %struct.us_data*, %struct.us_data** %6, align 8
  %79 = load i32, i32* @FDIR_READ, align 4
  %80 = load i8**, i8*** %12, align 8
  %81 = call i32 @ene_send_scsi_cmd(%struct.us_data* %78, i32 %79, i8** %80, i32 0)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %4
  %86 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %86, i32* %5, align 4
  br label %116

87:                                               ; preds = %4
  %88 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %89 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %91 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %90, i32 0, i32 0
  store i32 128, i32* %91, align 8
  %92 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %93 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %92, i32 0, i32 1
  store i32 16, i32* %93, align 4
  %94 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %95 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load i8**, i8*** %12, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %100 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load i8**, i8*** %12, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %105 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load i8**, i8*** %12, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 2
  %108 = load i8*, i8** %107, align 8
  %109 = load i8**, i8*** %12, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @memstick_logaddr(i8* %108, i8* %111)
  %113 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %9, align 8
  %114 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %87, %85
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i8**, i32) #1

declare dso_local i32 @memstick_logaddr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
