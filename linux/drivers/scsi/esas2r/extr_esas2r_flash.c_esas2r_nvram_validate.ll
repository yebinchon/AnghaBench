; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_sas_nvram* }
%struct.esas2r_sas_nvram = type { i8*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"invalid NVRAM signature\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid NVRAM checksum\00", align 1
@SASNVR_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid NVRAM version\00", align 1
@AF_NVR_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"using defaults\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_nvram_validate(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.esas2r_sas_nvram*, align 8
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %5, i32 0, i32 1
  %7 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %6, align 8
  store %struct.esas2r_sas_nvram* %7, %struct.esas2r_sas_nvram** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %9 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 69
  br i1 %14, label %39, label %15

15:                                               ; preds = %1
  %16 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %17 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 83
  br i1 %22, label %39, label %23

23:                                               ; preds = %15
  %24 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 65
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %33 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 83
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %23, %15, %1
  %40 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %43 = call i64 @esas2r_nvramcalc_cksum(%struct.esas2r_sas_nvram* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %61

47:                                               ; preds = %41
  %48 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %49 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SASNVR_VERSION, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @AF_NVR_VALID, align 4
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %53
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %68 = call i32 @esas2r_nvram_set_defaults(%struct.esas2r_adapter* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i64 @esas2r_nvramcalc_cksum(%struct.esas2r_sas_nvram*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @esas2r_nvram_set_defaults(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
