; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_unused_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_unused_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { %struct.zone_entry* }
%struct.zone_entry = type { i64, i32, i64* }

@MS_FREE_TABLE_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i64)* @ms_set_unused_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_set_unused_block(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ms_info*, align 8
  %6 = alloca %struct.zone_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.ms_info* %9, %struct.ms_info** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = ashr i32 %11, 9
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ms_info*, %struct.ms_info** %5, align 8
  %14 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %13, i32 0, i32 0
  %15 = load %struct.zone_entry*, %struct.zone_entry** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %15, i64 %17
  store %struct.zone_entry* %18, %struct.zone_entry** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %21 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %24 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds i64, i64* %22, i64 %25
  store i64 %19, i64* %27, align 8
  %28 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %29 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MS_FREE_TABLE_CNT, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %35 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.zone_entry*, %struct.zone_entry** %6, align 8
  %38 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
