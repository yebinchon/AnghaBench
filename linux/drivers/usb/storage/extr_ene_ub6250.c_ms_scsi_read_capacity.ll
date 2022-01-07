; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_read_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ene_ub6250_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"ms_scsi_read_capacity\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bl_len = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bl_num = %x\0A\00", align 1
@TO_XFER_BUF = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @ms_scsi_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_scsi_read_capacity(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  store i32 0, i32* %7, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %9, align 8
  %11 = load %struct.us_data*, %struct.us_data** %3, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %14, %struct.ene_ub6250_info** %10, align 8
  %15 = load %struct.us_data*, %struct.us_data** %3, align 8
  %16 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 512, i32* %6, align 4
  %17 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %18 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %24 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %29 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %33 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %31, %35
  %37 = mul nsw i32 %36, 2
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %27, %22
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %42 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.us_data*, %struct.us_data** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.us_data*, %struct.us_data** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 24
  %51 = and i32 %50, 255
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 2
  store i8 %62, i8* %63, align 1
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 0
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 3
  store i8 %67, i8* %68, align 1
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 24
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4
  store i8 %72, i8* %73, align 1
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 5
  store i8 %77, i8* %78, align 1
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 6
  store i8 %82, i8* %83, align 1
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 0
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  store i8 %87, i8* %88, align 1
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %91 = load i32, i32* @TO_XFER_BUF, align 4
  %92 = call i32 @usb_stor_access_xfer_buf(i8* %89, i32 8, %struct.scsi_cmnd* %90, %struct.scatterlist** %9, i32* %7, i32 %91)
  %93 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  ret i32 %93
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, %struct.scsi_cmnd*, %struct.scatterlist**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
