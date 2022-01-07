; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_calc_fi_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_calc_fi_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_flash_context = type { i32, %struct.esas2r_flash_img* }
%struct.esas2r_flash_img = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.esas2r_flash_context*)* @calc_fi_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_fi_checksum(%struct.esas2r_flash_context* %0) #0 {
  %2 = alloca %struct.esas2r_flash_context*, align 8
  %3 = alloca %struct.esas2r_flash_img*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.esas2r_flash_context* %0, %struct.esas2r_flash_context** %2, align 8
  %7 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %2, align 8
  %8 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %7, i32 0, i32 1
  %9 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %8, align 8
  store %struct.esas2r_flash_img* %9, %struct.esas2r_flash_img** %3, align 8
  %10 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %3, align 8
  %11 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %2, align 8
  %14 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %3, align 8
  %19 = bitcast %struct.esas2r_flash_img* %18 to i32*
  %20 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %2, align 8
  %21 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = bitcast i32* %24 to i64*
  store i64* %25, i64** %6, align 8
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %35, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @le16_to_cpu(i64 %32)
  %34 = add nsw i64 %30, %33
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %6, align 8
  br label %26

40:                                               ; preds = %26
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i64 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
