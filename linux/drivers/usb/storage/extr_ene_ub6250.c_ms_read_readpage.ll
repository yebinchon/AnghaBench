; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_read_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_read_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i64 }
%struct.ms_lib_type_extdat = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.bulk_cb_wrap = type { i32, i32*, i8*, i8* }
%struct.ene_ub6250_info = type { i32* }

@MS_RW_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i8* null, align 8
@FDIR_READ = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32*, %struct.ms_lib_type_extdat*)* @ms_read_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_read_readpage(%struct.us_data* %0, i32 %1, i32 %2, i32* %3, %struct.ms_lib_type_extdat* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.us_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ms_lib_type_extdat*, align 8
  %12 = alloca %struct.bulk_cb_wrap*, align 8
  %13 = alloca %struct.ene_ub6250_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.ms_lib_type_extdat* %4, %struct.ms_lib_type_extdat** %11, align 8
  %17 = load %struct.us_data*, %struct.us_data** %7, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %20, %struct.bulk_cb_wrap** %12, align 8
  %21 = load %struct.us_data*, %struct.us_data** %7, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %24, %struct.ene_ub6250_info** %13, align 8
  %25 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %13, align 8
  %26 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 32
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.us_data*, %struct.us_data** %7, align 8
  %33 = load i32, i32* @MS_RW_PATTERN, align 4
  %34 = call i32 @ene_load_bincode(%struct.us_data* %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %39, i32* %6, align 4
  br label %192

40:                                               ; preds = %5
  %41 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %42 = call i32 @memset(%struct.bulk_cb_wrap* %41, i32 0, i32 32)
  %43 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %46 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %48 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %47, i32 0, i32 0
  store i32 512, i32* %48, align 8
  %49 = load i8*, i8** @US_BULK_FLAG_IN, align 8
  %50 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %51 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %53 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 241, i32* %55, align 4
  %56 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %57 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 2, i32* %59, align 4
  %60 = load i32, i32* %16, align 4
  %61 = trunc i32 %60 to i8
  %62 = zext i8 %61 to i32
  %63 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %64 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = ashr i32 %67, 8
  %69 = trunc i32 %68 to i8
  %70 = zext i8 %69 to i32
  %71 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %72 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %16, align 4
  %76 = ashr i32 %75, 16
  %77 = trunc i32 %76 to i8
  %78 = zext i8 %77 to i32
  %79 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %80 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %16, align 4
  %84 = ashr i32 %83, 24
  %85 = trunc i32 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %88 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %86, i32* %90, align 4
  %91 = load %struct.us_data*, %struct.us_data** %7, align 8
  %92 = load i32, i32* @FDIR_READ, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @ene_send_scsi_cmd(%struct.us_data* %91, i32 %92, i32* %93, i32 0)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %40
  %99 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %99, i32* %6, align 4
  br label %192

100:                                              ; preds = %40
  %101 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %102 = call i32 @memset(%struct.bulk_cb_wrap* %101, i32 0, i32 32)
  %103 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %106 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %108 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %107, i32 0, i32 0
  store i32 4, i32* %108, align 8
  %109 = load i8*, i8** @US_BULK_FLAG_IN, align 8
  %110 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %111 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %113 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 241, i32* %115, align 4
  %116 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %117 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 3, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = trunc i32 %120 to i8
  %122 = zext i8 %121 to i32
  %123 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %124 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = trunc i32 %127 to i8
  %129 = zext i8 %128 to i32
  %130 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %131 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = ashr i32 %134, 8
  %136 = trunc i32 %135 to i8
  %137 = zext i8 %136 to i32
  %138 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %139 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %8, align 4
  %143 = ashr i32 %142, 16
  %144 = trunc i32 %143 to i8
  %145 = zext i8 %144 to i32
  %146 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %147 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %145, i32* %149, align 4
  %150 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  %151 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  store i32 1, i32* %153, align 4
  %154 = load %struct.us_data*, %struct.us_data** %7, align 8
  %155 = load i32, i32* @FDIR_READ, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @ene_send_scsi_cmd(%struct.us_data* %154, i32 %155, i32* %156, i32 0)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %100
  %162 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %162, i32* %6, align 4
  br label %192

163:                                              ; preds = %100
  %164 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %165 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %164, i32 0, i32 6
  store i64 0, i64* %165, align 8
  %166 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %167 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %166, i32 0, i32 0
  store i32 128, i32* %167, align 8
  %168 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %169 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %168, i32 0, i32 1
  store i32 16, i32* %169, align 4
  %170 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %171 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %170, i32 0, i32 2
  store i32 0, i32* %171, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %176 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %14, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %181 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @memstick_logaddr(i32 %184, i32 %187)
  %189 = load %struct.ms_lib_type_extdat*, %struct.ms_lib_type_extdat** %11, align 8
  %190 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %163, %161, %98, %38
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i32*, i32) #1

declare dso_local i32 @memstick_logaddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
