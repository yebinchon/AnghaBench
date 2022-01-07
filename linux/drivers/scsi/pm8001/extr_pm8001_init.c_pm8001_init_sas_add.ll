; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_init_sas_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_init_sas_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)* }
%struct.pm8001_hba_info = type { i64, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.pm8001_ioctl_payload = type { i32, i32, i32*, i64 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ATTO = common dso_local global i64 0, align 8
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_8__* null, align 8
@chip_8001 = common dso_local global i64 0, align 8
@chip_8070 = common dso_local global i64 0, align 8
@chip_8072 = common dso_local global i64 0, align 8
@completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*)* @pm8001_init_sas_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_init_sas_add(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %9 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %6
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %16 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 4717008, i32* %21, align 4
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @cpu_to_be64(i64 %30)
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %33 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  br label %39

39:                                               ; preds = %14
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %6

42:                                               ; preds = %6
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %44 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %47 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %52 = call i32 @memcpy(i32* %45, i32* %50, i32 %51)
  ret void
}

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
