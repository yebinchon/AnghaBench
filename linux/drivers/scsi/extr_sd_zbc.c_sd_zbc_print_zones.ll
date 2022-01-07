; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_print_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_print_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%u zones of %u logical blocks + 1 runt zone\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%u zones of %u logical blocks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_zbc_print_zones(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %3 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %4 = call i32 @sd_is_zoned(%struct.scsi_disk* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %43

12:                                               ; preds = %6
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %12
  %23 = load i32, i32* @KERN_NOTICE, align 4
  %24 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sd_printk(i32 %23, %struct.scsi_disk* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31)
  br label %43

33:                                               ; preds = %12
  %34 = load i32, i32* @KERN_NOTICE, align 4
  %35 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %36 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %40 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sd_printk(i32 %34, %struct.scsi_disk* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %11, %33, %22
  ret void
}

declare dso_local i32 @sd_is_zoned(%struct.scsi_disk*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
