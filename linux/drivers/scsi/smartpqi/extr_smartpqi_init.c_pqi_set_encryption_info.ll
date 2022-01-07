; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_set_encryption_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_set_encryption_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_encryption_info = type { i32, i32, i32 }
%struct.raid_map = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_encryption_info*, %struct.raid_map*, i32)* @pqi_set_encryption_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_set_encryption_info(%struct.pqi_encryption_info* %0, %struct.raid_map* %1, i32 %2) #0 {
  %4 = alloca %struct.pqi_encryption_info*, align 8
  %5 = alloca %struct.raid_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pqi_encryption_info* %0, %struct.pqi_encryption_info** %4, align 8
  store %struct.raid_map* %1, %struct.raid_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.raid_map*, %struct.raid_map** %5, align 8
  %9 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %8, i32 0, i32 1
  %10 = call i32 @get_unaligned_le32(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 512
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sdiv i32 %16, 512
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.raid_map*, %struct.raid_map** %5, align 8
  %20 = getelementptr inbounds %struct.raid_map, %struct.raid_map* %19, i32 0, i32 0
  %21 = call i32 @get_unaligned_le16(i32* %20)
  %22 = load %struct.pqi_encryption_info*, %struct.pqi_encryption_info** %4, align 8
  %23 = getelementptr inbounds %struct.pqi_encryption_info, %struct.pqi_encryption_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @lower_32_bits(i32 %24)
  %26 = load %struct.pqi_encryption_info*, %struct.pqi_encryption_info** %4, align 8
  %27 = getelementptr inbounds %struct.pqi_encryption_info, %struct.pqi_encryption_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  %30 = load %struct.pqi_encryption_info*, %struct.pqi_encryption_info** %4, align 8
  %31 = getelementptr inbounds %struct.pqi_encryption_info, %struct.pqi_encryption_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
