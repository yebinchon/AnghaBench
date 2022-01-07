; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_log_dump_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_log_dump_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i8*, i32, i8*, i32)* @scsi_log_dump_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_log_dump_sense(%struct.scsi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = call i8* @scsi_log_reserve_buffer(i64* %12)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %58

20:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @min(i32 %28, i32 16)
  store i32 %29, i32* %14, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @sdev_format_header(i8* %30, i64 %31, i8* %32, i32 %33)
  store i64 %34, i64* %15, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %14, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %15, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @hex_dump_to_buffer(i8* %38, i32 %39, i32 16, i32 1, i8* %42, i64 %45, i32 0)
  %47 = load i32, i32* @KERN_INFO, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 0
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @dev_printk(i32 %47, i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 16
  store i32 %54, i32* %13, align 4
  br label %21

55:                                               ; preds = %21
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @scsi_log_release_buffer(i8* %56)
  br label %58

58:                                               ; preds = %55, %19
  ret void
}

declare dso_local i8* @scsi_log_reserve_buffer(i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @sdev_format_header(i8*, i64, i8*, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i8*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*) #1

declare dso_local i32 @scsi_log_release_buffer(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
