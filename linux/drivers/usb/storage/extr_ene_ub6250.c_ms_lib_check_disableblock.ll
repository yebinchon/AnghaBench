; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_check_disableblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_check_disableblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ms_lib_type_extdat = type { i32 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@MS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@MS_BYTES_PER_PAGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MS_NO_MEMORY_ERROR = common dso_local global i64 0, align 8
@MS_LB_NOT_USED = common dso_local global i64 0, align 8
@MS_ERROR_FLASH_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_lib_check_disableblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_check_disableblock(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ms_lib_type_extdat, align 4
  %10 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load i64, i64* @MS_STATUS_SUCCESS, align 8
  store i64 %11, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %15, %struct.ene_ub6250_info** %10, align 8
  %16 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @MS_NO_MEMORY_ERROR, align 8
  store i64 %22, i64* %6, align 8
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.us_data*, %struct.us_data** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = call i32 @ms_read_readpage(%struct.us_data* %24, i64 %25, i32 1, i32* %27, %struct.ms_lib_type_extdat* %9)
  br label %29

29:                                               ; preds = %53, %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @be16_to_cpu(i8 zeroext %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @MS_LB_NOT_USED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %54

39:                                               ; preds = %29
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %10, align 8
  %42 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %40, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @MS_ERROR_FLASH_READ, align 8
  store i64 %49, i64* %6, align 8
  br label %54

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %50
  br i1 true, label %29, label %54

54:                                               ; preds = %53, %48, %38
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i64, i64* %6, align 8
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ms_read_readpage(%struct.us_data*, i64, i32, i32*, %struct.ms_lib_type_extdat*) #1

declare dso_local i64 @be16_to_cpu(i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
