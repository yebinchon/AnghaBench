; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_log_print_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_logging.c_scsi_log_print_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i8*, i32, i8*, i32)* @scsi_log_print_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_log_print_sense(%struct.scsi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %9, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i64 @scsi_normalize_sense(i8* %12, i32 %13, %struct.scsi_sense_hdr* %11)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @scsi_log_print_sense_hdr(%struct.scsi_device* %17, i8* %18, i32 %19, %struct.scsi_sense_hdr* %11)
  br label %28

21:                                               ; preds = %5
  %22 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @scsi_log_dump_sense(%struct.scsi_device* %22, i8* %23, i32 %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local i64 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_log_print_sense_hdr(%struct.scsi_device*, i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_log_dump_sense(%struct.scsi_device*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
