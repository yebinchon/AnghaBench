; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_biosparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_biosparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }
%struct.aha1542_hostdata = type { i64 }

@BIOS_TRANSLATION_25563 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @aha1542_biosparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_biosparam(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.aha1542_hostdata*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.aha1542_hostdata* @shost_priv(i32 %12)
  store %struct.aha1542_hostdata* %13, %struct.aha1542_hostdata** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 2097152
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.aha1542_hostdata*, %struct.aha1542_hostdata** %9, align 8
  %18 = getelementptr inbounds %struct.aha1542_hostdata, %struct.aha1542_hostdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BIOS_TRANSLATION_25563, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 255, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 63, i32* %26, align 4
  br label %32

27:                                               ; preds = %16, %4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 64, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 32, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = call i32 @sector_div(i32 %33, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %41, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.aha1542_hostdata* @shost_priv(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
