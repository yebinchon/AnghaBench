; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_validate_opt_xfer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_validate_opt_xfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Optimal transfer size %u logical blocks > dev_max (%u logical blocks)\0A\00", align 1
@SD_DEF_XFER_BLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Optimal transfer size %u logical blocks > sd driver limit (%u logical blocks)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Optimal transfer size %u bytes < PAGE_SIZE (%u bytes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Optimal transfer size %u bytes not a multiple of physical block size (%u bytes)\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Optimal transfer size %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, i32)* @sd_validate_opt_xfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_validate_opt_xfer_size(%struct.scsi_disk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 2
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  store %struct.scsi_device* %10, %struct.scsi_device** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @logical_to_bytes(%struct.scsi_device* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @KERN_WARNING, align 4
  %29 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %30 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_first_printk(i32 %28, %struct.scsi_disk* %29, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %80

35:                                               ; preds = %21
  %36 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SD_DEF_XFER_BLOCKS, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* @KERN_WARNING, align 4
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %44 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SD_DEF_XFER_BLOCKS, align 4
  %48 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_first_printk(i32 %42, %struct.scsi_disk* %43, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %80

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @KERN_WARNING, align 4
  %55 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_first_printk(i32 %54, %struct.scsi_disk* %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %80

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_first_printk(i32 %68, %struct.scsi_disk* %69, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73)
  store i32 0, i32* %3, align 4
  br label %80

75:                                               ; preds = %59
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_first_printk(i32 %76, %struct.scsi_disk* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %67, %53, %41, %27, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @logical_to_bytes(%struct.scsi_device*, i32) #1

declare dso_local i32 @sd_first_printk(i32, %struct.scsi_disk*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
