; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_ct_firmware_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_ct_firmware_unlock(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca i64, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %4 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bfa_ioc_sem_get(i32 %7)
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @readl(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp sle i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel(i32 %21, i32 %25)
  %27 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @bfa_trc(%struct.bfa_ioc_s* %27, i64 %28)
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @readl(i32 %33)
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %36 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writel(i32 1, i32 %38)
  ret void
}

declare dso_local i32 @bfa_ioc_sem_get(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
