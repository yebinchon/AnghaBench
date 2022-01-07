; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_nbr_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_nbr_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ST_READY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PART_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't read medium partition page.\0A\00", align 1
@MODE_HEADER_LENGTH = common dso_local global i64 0, align 8
@PP_OFF_NBR_ADD_PARTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Number of partitions %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*)* @nbr_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbr_partitions(%struct.scsi_tape* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  %5 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ST_READY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %15 = load i32, i32* @PART_PAGE, align 4
  %16 = call i32 @read_mode_page(%struct.scsi_tape* %14, i32 %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %21 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %13
  %25 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MODE_HEADER_LENGTH, align 8
  %31 = load i64, i64* @PP_OFF_NBR_ADD_PARTS, align 8
  %32 = add i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %24, %19
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @read_mode_page(%struct.scsi_tape*, i32, i32) #1

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
