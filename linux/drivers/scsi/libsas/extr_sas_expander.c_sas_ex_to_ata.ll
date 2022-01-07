; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_to_ata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_to_ata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ex_phy* }
%struct.ex_phy = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sas_rphy* }
%struct.sas_rphy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.domain_device* @sas_ex_to_ata(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ex_phy*, %struct.ex_phy** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %12, i64 %14
  store %struct.ex_phy* %15, %struct.ex_phy** %6, align 8
  %16 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %17 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %23 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.sas_rphy*, %struct.sas_rphy** %25, align 8
  store %struct.sas_rphy* %26, %struct.sas_rphy** %8, align 8
  %27 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %28 = icmp ne %struct.sas_rphy* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %42

30:                                               ; preds = %21
  %31 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %32 = call %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy* %31)
  store %struct.domain_device* %32, %struct.domain_device** %7, align 8
  %33 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %34 = icmp ne %struct.domain_device* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %37 = call i64 @dev_is_sata(%struct.domain_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  store %struct.domain_device* %40, %struct.domain_device** %3, align 8
  br label %42

41:                                               ; preds = %35, %30
  store %struct.domain_device* null, %struct.domain_device** %3, align 8
  br label %42

42:                                               ; preds = %41, %39, %29, %20
  %43 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  ret %struct.domain_device* %43
}

declare dso_local %struct.domain_device* @sas_find_dev_by_rphy(%struct.sas_rphy*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
