; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_sata_pm_table_ddb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_init_sata_pm_table_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }

@SISTER_DDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @asd_init_sata_pm_table_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_sata_pm_table_ddb(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %8 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %12, align 8
  store %struct.asd_ha_struct* %13, %struct.asd_ha_struct** %4, align 8
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %15 = call i32 @asd_get_ddb(%struct.asd_ha_struct* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %29, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %25, i32 %26, i32 %27, i32 65535)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %6, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %34 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %35 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @SISTER_DDB, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @asd_ddbsite_write_word(%struct.asd_ha_struct* %33, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %32, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @asd_get_ddb(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_ddbsite_write_word(%struct.asd_ha_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
