; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_get_unused_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_get_unused_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { %struct.zone_entry* }
%struct.zone_entry = type { i64, i32*, i64 }

@MS_FREE_TABLE_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @ms_get_unused_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_get_unused_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca %struct.zone_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  store %struct.ms_info* %10, %struct.ms_info** %6, align 8
  %11 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %12 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %11, i32 0, i32 0
  %13 = load %struct.zone_entry*, %struct.zone_entry** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %13, i64 %15
  store %struct.zone_entry* %16, %struct.zone_entry** %7, align 8
  %17 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %18 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 65535, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %24 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %27 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %32 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %35 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 65535, i32* %38, align 4
  %39 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %40 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MS_FREE_TABLE_CNT, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %22
  %45 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %46 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %22
  %48 = load %struct.zone_entry*, %struct.zone_entry** %7, align 8
  %49 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
