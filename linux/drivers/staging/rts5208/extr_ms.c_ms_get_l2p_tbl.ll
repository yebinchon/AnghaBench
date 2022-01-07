; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_get_l2p_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_get_l2p_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { %struct.zone_entry* }
%struct.zone_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32)* @ms_get_l2p_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_get_l2p_tbl(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ms_info*, align 8
  %9 = alloca %struct.zone_entry*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 0
  store %struct.ms_info* %11, %struct.ms_info** %8, align 8
  %12 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %13 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %12, i32 0, i32 0
  %14 = load %struct.zone_entry*, %struct.zone_entry** %13, align 8
  %15 = icmp ne %struct.zone_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 65535, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %19 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %18, i32 0, i32 0
  %20 = load %struct.zone_entry*, %struct.zone_entry** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %20, i64 %22
  store %struct.zone_entry* %23, %struct.zone_entry** %9, align 8
  %24 = load %struct.zone_entry*, %struct.zone_entry** %9, align 8
  %25 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.zone_entry*, %struct.zone_entry** %9, align 8
  %30 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %17
  store i32 65535, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %28, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
