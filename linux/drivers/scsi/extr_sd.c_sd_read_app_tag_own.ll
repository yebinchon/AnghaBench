; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_app_tag_own.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_app_tag_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64 }
%struct.scsi_mode_data = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"getting Control mode page failed, assume no ATO\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ATO Got wrong page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_app_tag_own to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_app_tag_own(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_mode_data, align 4
  %9 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %10, i32 0, i32 2
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %7, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPE_DISK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TYPE_ZBC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %90

25:                                               ; preds = %18, %2
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %90

31:                                               ; preds = %25
  %32 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @SD_TIMEOUT, align 4
  %35 = load i32, i32* @SD_MAX_RETRIES, align 4
  %36 = call i32 @scsi_mode_sense(%struct.scsi_device* %32, i32 1, i32 10, i8* %33, i32 36, i32 %34, i32 %35, %struct.scsi_mode_data* %8, %struct.scsi_sense_hdr* %9)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @scsi_status_is_good(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 6
  br i1 %47, label %48, label %58

48:                                               ; preds = %44, %40, %31
  %49 = load i32, i32* @KERN_WARNING, align 4
  %50 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %51 = call i32 @sd_first_printk(i32 %49, %struct.scsi_disk* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %52 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %9)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %56 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %55, %struct.scsi_sense_hdr* %9)
  br label %57

57:                                               ; preds = %54, %48
  br label %90

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %6, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 63
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %75 = call i32 @sd_first_printk(i32 %73, %struct.scsi_disk* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %90

76:                                               ; preds = %58
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %90

87:                                               ; preds = %76
  %88 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %89 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %86, %72, %57, %30, %24
  ret void
}

declare dso_local i32 @scsi_mode_sense(%struct.scsi_device*, i32, i32, i8*, i32, i32, i32, %struct.scsi_mode_data*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_status_is_good(i32) #1

declare dso_local i32 @sd_first_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
