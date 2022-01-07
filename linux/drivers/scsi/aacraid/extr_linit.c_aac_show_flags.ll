; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_show_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_show_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.aac_dev = type { i64, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@x = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"dprintk\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"SAI_READ_CAPACITY_16\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SUPPORTED_JBOD\0A\00", align 1
@AAC_OPTION_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SUPPORTED_POWER_MANAGEMENT\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PCI_HAS_MSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aac_show_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_show_flags(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aac_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.TYPE_4__* @class_to_shost(%struct.device* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.aac_dev*
  store %struct.aac_dev* %13, %struct.aac_dev** %8, align 8
  %14 = load i32, i32* @x, align 4
  %15 = call i32 @dprintk(i32 %14)
  %16 = call i64 @nblank(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = call i32 @snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %24 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %29 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = call i32 @snprintf(i8* %36, i64 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %32, %27, %22
  %45 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %46 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i32 @snprintf(i8* %53, i64 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %49, %44
  %62 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %63 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AAC_OPTION_POWER_MANAGEMENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = call i32 @snprintf(i8* %73, i64 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %69, %61
  %82 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %83 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %91, %93
  %95 = call i32 @snprintf(i8* %90, i64 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %86, %81
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_4__* @class_to_shost(%struct.device*) #1

declare dso_local i64 @nblank(i32) #1

declare dso_local i32 @dprintk(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
