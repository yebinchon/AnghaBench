; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_do_device_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_do_device_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.scsi_data_buffer }
%struct.scsi_data_buffer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@write_since_sync = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@sdebug_store_sectors = common dso_local global i64 0, align 8
@fake_storep = common dso_local global i64 0, align 8
@sdebug_sector_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i64, i64, i64, i32)* @do_device_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_device_access(%struct.scsi_cmnd* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.scsi_data_buffer*, align 8
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  store %struct.scsi_data_buffer* %18, %struct.scsi_data_buffer** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %22, i32* %16, align 4
  store i32 1, i32* @write_since_sync, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %24, i32* %16, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %15, align 8
  %27 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %114

31:                                               ; preds = %25
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %114

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @sdebug_store_sectors, align 8
  %41 = call i64 @do_div(i64 %39, i64 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @sdebug_store_sectors, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @sdebug_store_sectors, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %47, %38
  %54 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %15, align 8
  %55 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %15, align 8
  %59 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @fake_storep, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @sdebug_sector_size, align 8
  %65 = mul nsw i64 %63, %64
  %66 = add nsw i64 %62, %65
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %14, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* @sdebug_sector_size, align 8
  %71 = mul nsw i64 %69, %70
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @sg_copy_buffer(i32 %57, i32 %61, i64 %66, i64 %71, i64 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %14, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i64, i64* @sdebug_sector_size, align 8
  %81 = mul nsw i64 %79, %80
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %53
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %114

85:                                               ; preds = %53
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %15, align 8
  %90 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %15, align 8
  %94 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @fake_storep, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @sdebug_sector_size, align 8
  %100 = mul nsw i64 %98, %99
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %14, align 8
  %104 = sub nsw i64 %102, %103
  %105 = load i64, i64* @sdebug_sector_size, align 8
  %106 = mul nsw i64 %104, %105
  %107 = add nsw i64 %101, %106
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @sg_copy_buffer(i32 %92, i32 %96, i64 %97, i64 %100, i64 %107, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %88, %85
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %83, %37, %30
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local i32 @sg_copy_buffer(i32, i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
