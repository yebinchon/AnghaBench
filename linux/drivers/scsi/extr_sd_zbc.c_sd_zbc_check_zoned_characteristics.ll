; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_check_zoned_characteristics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_check_zoned_characteristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i64, i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Read zoned characteristics VPD page failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TYPE_ZBC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"constrained reads devices are not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, i8*)* @sd_zbc_check_zoned_characteristics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_zbc_check_zoned_characteristics(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca i8*, align 8
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %7 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @scsi_get_vpd_page(%struct.TYPE_2__* %8, i32 182, i8* %9, i32 64)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_NOTICE, align 4
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %15 = call i32 @sd_printk(i32 %13, %struct.scsi_disk* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_ZBC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = call i8* @get_unaligned_be32(i8* %30)
  %32 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 12
  %36 = call i8* @get_unaligned_be32(i8* %35)
  %37 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %39, i32 0, i32 2
  store i8* null, i8** %40, align 8
  br label %58

41:                                               ; preds = %18
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 1
  %47 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %49, i32 0, i32 4
  store i8* null, i8** %50, align 8
  %51 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %51, i32 0, i32 3
  store i8* null, i8** %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 16
  %55 = call i8* @get_unaligned_be32(i8* %54)
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %41, %26
  %59 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @KERN_NOTICE, align 4
  %70 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %71 = call i32 @sd_printk(i32 %69, %struct.scsi_disk* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @scsi_get_vpd_page(%struct.TYPE_2__*, i32, i8*, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i8* @get_unaligned_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
