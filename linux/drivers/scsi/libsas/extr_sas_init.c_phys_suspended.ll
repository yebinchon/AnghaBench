; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_phys_suspended.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_phys_suspended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, %struct.asd_sas_phy** }
%struct.asd_sas_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_ha_struct*)* @phys_suspended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phys_suspended(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %9 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 1
  %15 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %15, i64 %17
  %19 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  store %struct.asd_sas_phy* %19, %struct.asd_sas_phy** %5, align 8
  %20 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %21 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
