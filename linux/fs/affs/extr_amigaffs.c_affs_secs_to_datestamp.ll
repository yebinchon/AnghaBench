; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_amigaffs.c_affs_secs_to_datestamp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_amigaffs.c_affs_secs_to_datestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.affs_date = type { i8*, i8*, i8* }

@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AFFS_EPOCH_DELTA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affs_secs_to_datestamp(i64 %0, %struct.affs_date* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.affs_date*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.affs_date* %1, %struct.affs_date** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %9 = mul nsw i32 %8, 60
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @AFFS_EPOCH_DELTA, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* %3, align 8
  %14 = sub nsw i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @div_s64_rem(i64 %19, i32 86400, i32* %7)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 60
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 60
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.affs_date*, %struct.affs_date** %4, align 8
  %30 = getelementptr inbounds %struct.affs_date, %struct.affs_date* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.affs_date*, %struct.affs_date** %4, align 8
  %34 = getelementptr inbounds %struct.affs_date, %struct.affs_date* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 50
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.affs_date*, %struct.affs_date** %4, align 8
  %39 = getelementptr inbounds %struct.affs_date, %struct.affs_date* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i32 @div_s64_rem(i64, i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
