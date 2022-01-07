; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_l2p_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_set_l2p_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { %struct.zone_entry* }
%struct.zone_entry = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*, i32, i64, i64)* @ms_set_l2p_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_set_l2p_tbl(%struct.rtsx_chip* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ms_info*, align 8
  %10 = alloca %struct.zone_entry*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 0
  store %struct.ms_info* %12, %struct.ms_info** %9, align 8
  %13 = load %struct.ms_info*, %struct.ms_info** %9, align 8
  %14 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %13, i32 0, i32 0
  %15 = load %struct.zone_entry*, %struct.zone_entry** %14, align 8
  %16 = icmp ne %struct.zone_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.ms_info*, %struct.ms_info** %9, align 8
  %20 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %19, i32 0, i32 0
  %21 = load %struct.zone_entry*, %struct.zone_entry** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %21, i64 %23
  store %struct.zone_entry* %24, %struct.zone_entry** %10, align 8
  %25 = load %struct.zone_entry*, %struct.zone_entry** %10, align 8
  %26 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.zone_entry*, %struct.zone_entry** %10, align 8
  %32 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %30, i64* %35, align 8
  br label %36

36:                                               ; preds = %17, %29, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
