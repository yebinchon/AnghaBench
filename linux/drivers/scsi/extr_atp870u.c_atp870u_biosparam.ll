; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_biosparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i64, i32*)* @atp870u_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 64, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %10, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %12, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 %19, 1024
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  store i32 255, i32* %9, align 4
  store i32 63, i32* %10, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %21, %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
