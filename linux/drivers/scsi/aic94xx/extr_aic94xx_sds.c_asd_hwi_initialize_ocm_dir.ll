; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_hwi_initialize_ocm_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_hwi_initialize_ocm_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@OCM_MAX_SIZE = common dso_local global i32 0, align 4
@OCMDirInit = common dso_local global i32 0, align 4
@OCM_INIT_DIR_ENTRIES = common dso_local global i32 0, align 4
@OCMDirEntriesInit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_hwi_initialize_ocm_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_hwi_initialize_ocm_dir(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @OCM_MAX_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @asd_write_ocm_dword(%struct.asd_ha_struct* %9, i32 %10, i32 0)
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 4
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %17 = call i32 @asd_write_ocm_seg(%struct.asd_ha_struct* %16, i32* @OCMDirInit, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %34, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @OCM_INIT_DIR_ENTRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %24 = load i32*, i32** @OCMDirEntriesInit, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @asd_write_ocm_seg(%struct.asd_ha_struct* %23, i32* %27, i32 %32, i32 4)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %18

37:                                               ; preds = %18
  ret void
}

declare dso_local i32 @asd_write_ocm_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_write_ocm_seg(%struct.asd_ha_struct*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
