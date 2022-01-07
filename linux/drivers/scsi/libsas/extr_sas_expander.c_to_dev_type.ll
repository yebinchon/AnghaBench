; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_to_dev_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_to_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discover_resp = type { i64, i64, i64 }

@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i64 0, align 8
@SAS_SATA_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.discover_resp*)* @to_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_dev_type(%struct.discover_resp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.discover_resp*, align 8
  store %struct.discover_resp* %0, %struct.discover_resp** %3, align 8
  %4 = load %struct.discover_resp*, %struct.discover_resp** %3, align 8
  %5 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.discover_resp*, %struct.discover_resp** %3, align 8
  %11 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.discover_resp*, %struct.discover_resp** %3, align 8
  %16 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SAS_LINK_RATE_1_5_GBPS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @SAS_SATA_PENDING, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %14, %9, %1
  %23 = load %struct.discover_resp*, %struct.discover_resp** %3, align 8
  %24 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
