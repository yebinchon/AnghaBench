; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_log_print_sense_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_log_print_sense_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i8*, i32, %struct.scsi_sense_hdr*)* @scsi_log_print_sense_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_log_print_sense_hdr(%struct.scsi_device* %0, i8* %1, i32 %2, %struct.scsi_sense_hdr* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_sense_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.scsi_sense_hdr* %3, %struct.scsi_sense_hdr** %8, align 8
  %12 = call i8* @scsi_log_reserve_buffer(i64* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %71

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @sdev_format_header(i8* %17, i64 %18, i8* %19, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %25, %26
  %28 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %29 = call i64 @scsi_format_sense_hdr(i8* %24, i64 %27, %struct.scsi_sense_hdr* %28)
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @dev_printk(i32 %32, i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @scsi_log_release_buffer(i8* %37)
  %39 = call i8* @scsi_log_reserve_buffer(i64* %11)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %16
  br label %71

43:                                               ; preds = %16
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @sdev_format_header(i8* %44, i64 %45, i8* %46, i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  %55 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %59 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @scsi_format_extd_sense(i8* %51, i64 %54, i32 %57, i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @dev_printk(i32 %64, i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @scsi_log_release_buffer(i8* %69)
  br label %71

71:                                               ; preds = %43, %42, %15
  ret void
}

declare dso_local i8* @scsi_log_reserve_buffer(i64*) #1

declare dso_local i64 @sdev_format_header(i8*, i64, i8*, i32) #1

declare dso_local i64 @scsi_format_sense_hdr(i8*, i64, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*) #1

declare dso_local i32 @scsi_log_release_buffer(i8*) #1

declare dso_local i64 @scsi_format_extd_sense(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
