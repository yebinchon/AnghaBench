; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_prep_resume_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_prep_resume_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, %struct.asd_sas_phy**, i32 }
%struct.asd_sas_phy = type { i64, i32 }

@SAS_HA_REGISTERED = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_prep_resume_ha(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_phy*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  %5 = load i32, i32* @SAS_HA_REGISTERED, align 4
  %6 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %7 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %6, i32 0, i32 2
  %8 = call i32 @set_bit(i32 %5, i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %17 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %16, i32 0, i32 1
  %18 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, i64 %20
  %22 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %21, align 8
  store %struct.asd_sas_phy* %22, %struct.asd_sas_phy** %4, align 8
  %23 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %24 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %27 = call i32 @memset(i32 %25, i32 0, i32 %26)
  %28 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %29 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %9

33:                                               ; preds = %9
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
