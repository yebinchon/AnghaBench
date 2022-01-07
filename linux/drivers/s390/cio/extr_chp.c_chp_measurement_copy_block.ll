; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_measurement_copy_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_measurement_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmg_entry = type { i64* }
%struct.channel_subsystem = type { i8*, i8* }
%struct.chp_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmg_entry*, %struct.channel_subsystem*, i32)* @chp_measurement_copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chp_measurement_copy_block(%struct.cmg_entry* %0, %struct.channel_subsystem* %1, i32 %2) #0 {
  %4 = alloca %struct.chp_id, align 4
  %5 = alloca %struct.cmg_entry*, align 8
  %6 = alloca %struct.channel_subsystem*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cmg_entry*, align 8
  %9 = alloca %struct.cmg_entry, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.cmg_entry* %0, %struct.cmg_entry** %5, align 8
  store %struct.channel_subsystem* %1, %struct.channel_subsystem** %6, align 8
  %12 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.channel_subsystem*, %struct.channel_subsystem** %6, align 8
  %17 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.channel_subsystem*, %struct.channel_subsystem** %6, align 8
  %23 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 128
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = bitcast i8* %33 to %struct.cmg_entry*
  store %struct.cmg_entry* %34, %struct.cmg_entry** %8, align 8
  br label %35

35:                                               ; preds = %41, %28
  %36 = load %struct.cmg_entry*, %struct.cmg_entry** %5, align 8
  %37 = load %struct.cmg_entry*, %struct.cmg_entry** %8, align 8
  %38 = call i32 @memcpy(%struct.cmg_entry* %36, %struct.cmg_entry* %37, i32 8)
  %39 = load %struct.cmg_entry*, %struct.cmg_entry** %8, align 8
  %40 = call i32 @memcpy(%struct.cmg_entry* %9, %struct.cmg_entry* %39, i32 8)
  br label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.cmg_entry, %struct.cmg_entry* %9, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cmg_entry*, %struct.cmg_entry** %5, align 8
  %47 = getelementptr inbounds %struct.cmg_entry, %struct.cmg_entry* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %35, label %52

52:                                               ; preds = %41
  ret void
}

declare dso_local i32 @memcpy(%struct.cmg_entry*, %struct.cmg_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
