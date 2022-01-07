; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_fmt_trc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_fmt_trc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_trc_data = type { i32*, i32, i32, i32, i32 }
%struct.timespec64 = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"%llu.%09lu %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic_trc_data*, i8*, i32)* @snic_fmt_trc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_fmt_trc_data(%struct.snic_trc_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snic_trc_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 4
  store %struct.snic_trc_data* %0, %struct.snic_trc_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %10 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @jiffies_to_timespec64(i32 %11, %struct.timespec64* %8)
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %20 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %23 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %26 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %29 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %34 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %39 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %44 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snic_trc_data*, %struct.snic_trc_data** %4, align 8
  %49 = getelementptr inbounds %struct.snic_trc_data, %struct.snic_trc_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i32 %21, i32 %24, i32 %27, i32 %32, i32 %37, i32 %42, i32 %47, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @jiffies_to_timespec64(i32, %struct.timespec64*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
