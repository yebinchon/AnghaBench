; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_sd_scsi_read_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_sd_scsi_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ene_ub6250_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"sd_scsi_read_capacity\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bl_len = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bl_num = %x\0A\00", align 1
@TO_XFER_BUF = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @sd_scsi_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_scsi_read_capacity(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
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
  %17 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %18 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  store i32 512, i32* %6, align 4
  %23 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %24 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %30 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %35 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = mul nsw i32 %37, 1024
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %28
  br label %61

41:                                               ; preds = %2
  %42 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %43 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %47 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %50 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 %48, %52
  %54 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %55 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 2
  %58 = shl i32 1, %57
  %59 = mul nsw i32 %53, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %41, %40
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %64 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.us_data*, %struct.us_data** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.us_data*, %struct.us_data** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 24
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 %74, i8* %75, align 1
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  store i8 %79, i8* %80, align 1
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 2
  store i8 %84, i8* %85, align 1
  %86 = load i32, i32* %5, align 4
  %87 = ashr i32 %86, 0
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 3
  store i8 %89, i8* %90, align 1
  %91 = load i32, i32* %6, align 4
  %92 = ashr i32 %91, 24
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4
  store i8 %94, i8* %95, align 1
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 5
  store i8 %99, i8* %100, align 1
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 6
  store i8 %104, i8* %105, align 1
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 0
  %108 = and i32 %107, 255
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  store i8 %109, i8* %110, align 1
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %113 = load i32, i32* @TO_XFER_BUF, align 4
  %114 = call i32 @usb_stor_access_xfer_buf(i8* %111, i32 8, %struct.scsi_cmnd* %112, %struct.scatterlist** %9, i32* %7, i32 %113)
  %115 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  ret i32 %115
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, %struct.scsi_cmnd*, %struct.scatterlist**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
