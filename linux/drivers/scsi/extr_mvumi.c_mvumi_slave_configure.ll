; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvumi_hba = type { i8, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @mvumi_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca i8, align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8 8, i8* %5, align 1
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mvumi_hba*
  store %struct.mvumi_hba* %11, %struct.mvumi_hba** %4, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %17 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = srem i32 %28, %30
  %32 = shl i32 1, %31
  %33 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %34 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = sdiv i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %35, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %32
  store i32 %46, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %24, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
