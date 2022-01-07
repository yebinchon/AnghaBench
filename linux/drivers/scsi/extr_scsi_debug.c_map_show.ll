; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_map_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"0-%u\0A\00", align 1
@sdebug_store_sectors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@map_size = common dso_local global i64 0, align 8
@map_storep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*)* @map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_show(%struct.device_driver* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @scsi_debug_lbp()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = load i32, i32* @sdebug_store_sectors, align 4
  %13 = call i64 (i8*, i64, i8*, i32, ...) @scnprintf(i8* %10, i64 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i64 %13, i64* %3, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = sub nsw i64 %16, 1
  %18 = load i64, i64* @map_size, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @map_storep, align 4
  %21 = call i64 (i8*, i64, i8*, i32, ...) @scnprintf(i8* %15, i64 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 10, i8* %25, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %14, %9
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i32 @scsi_debug_lbp(...) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
