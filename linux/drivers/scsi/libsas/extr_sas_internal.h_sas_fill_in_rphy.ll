; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_internal.h_sas_fill_in_rphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_internal.h_sas_fill_in_rphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, i32, i32, i32 }
%struct.sas_rphy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, %struct.sas_rphy*)* @sas_fill_in_rphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_fill_in_rphy(%struct.domain_device* %0, %struct.sas_rphy* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.sas_rphy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store %struct.sas_rphy* %1, %struct.sas_rphy** %4, align 8
  %5 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %6 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @SAS_ADDR(i32 %7)
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %10 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 4
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %16 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %22 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %25 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 129, label %27
    i32 131, label %27
    i32 128, label %27
    i32 132, label %31
    i32 130, label %35
  ]

27:                                               ; preds = %2, %2, %2
  %28 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %29 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 131, i32* %30, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %33 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 132, i32* %34, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %37 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 130, i32* %38, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %41 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %42 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %35, %31, %27
  ret void
}

declare dso_local i32 @SAS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
