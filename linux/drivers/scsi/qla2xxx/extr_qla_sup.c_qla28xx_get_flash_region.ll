; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla28xx_get_flash_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla28xx_get_flash_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }
%struct.qla_flt_region = type { i64 }
%struct.qla_flt_header = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i64, %struct.qla_flt_region*)* @qla28xx_get_flash_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla28xx_get_flash_region(%struct.scsi_qla_host* %0, i64 %1, %struct.qla_flt_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_flt_region*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.qla_flt_header*, align 8
  %10 = alloca %struct.qla_flt_region*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qla_flt_region* %2, %struct.qla_flt_region** %7, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %8, align 8
  %16 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.qla_flt_header*
  store %struct.qla_flt_header* %27, %struct.qla_flt_header** %9, align 8
  %28 = load %struct.qla_flt_header*, %struct.qla_flt_header** %9, align 8
  %29 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %28, i64 1
  %30 = bitcast %struct.qla_flt_header* %29 to %struct.qla_flt_region*
  store %struct.qla_flt_region* %30, %struct.qla_flt_region** %10, align 8
  %31 = load %struct.qla_flt_header*, %struct.qla_flt_header** %9, align 8
  %32 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %54, %23
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.qla_flt_region*, %struct.qla_flt_region** %10, align 8
  %43 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.qla_flt_region*, %struct.qla_flt_region** %7, align 8
  %49 = bitcast %struct.qla_flt_region* %48 to i32*
  %50 = load %struct.qla_flt_region*, %struct.qla_flt_region** %10, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.qla_flt_region* %50, i32 8)
  %52 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %52, i32* %12, align 4
  br label %59

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  %57 = load %struct.qla_flt_region*, %struct.qla_flt_region** %10, align 8
  %58 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %57, i32 1
  store %struct.qla_flt_region* %58, %struct.qla_flt_region** %10, align 8
  br label %38

59:                                               ; preds = %47, %38
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.qla_flt_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
