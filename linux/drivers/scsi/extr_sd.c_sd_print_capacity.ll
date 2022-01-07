; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_print_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_print_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STRING_UNITS_2 = common dso_local global i32 0, align 4
@STRING_UNITS_10 = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%llu %d-byte logical blocks: (%s/%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%u-byte physical blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i64)* @sd_print_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_print_capacity(%struct.scsi_disk* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = alloca [10 x i8], align 1
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %64

24:                                               ; preds = %17, %2
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STRING_UNITS_2, align 4
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %31 = call i32 @string_get_size(i64 %27, i32 %28, i32 %29, i8* %30, i32 10)
  %32 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @STRING_UNITS_10, align 4
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %38 = call i32 @string_get_size(i64 %34, i32 %35, i32 %36, i8* %37, i32 10)
  %39 = load i32, i32* @KERN_NOTICE, align 4
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %41 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %48 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_printk(i32 %39, %struct.scsi_disk* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i8* %46, i8* %47)
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %24
  %55 = load i32, i32* @KERN_NOTICE, align 4
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %57 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_printk(i32 %55, %struct.scsi_disk* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %24
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %63 = call i32 @sd_zbc_print_zones(%struct.scsi_disk* %62)
  br label %64

64:                                               ; preds = %61, %23
  ret void
}

declare dso_local i32 @string_get_size(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i32, ...) #1

declare dso_local i32 @sd_zbc_print_zones(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
