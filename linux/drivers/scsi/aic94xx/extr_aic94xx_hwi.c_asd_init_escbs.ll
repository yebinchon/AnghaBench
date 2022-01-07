; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_escbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_escbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__, %struct.asd_seq_data }
%struct.TYPE_2__ = type { i32, i32 }
%struct.asd_seq_data = type { i32, i32, i32, i32 }

@ASD_EDBS_PER_SCB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"couldn't allocate edbs\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"couldn't allocate escbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_init_escbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_escbs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_seq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %8 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %7, i32 0, i32 1
  store %struct.asd_seq_data* %8, %struct.asd_seq_data** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %10 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 1, %12
  %14 = mul nsw i32 2, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %17 = add nsw i32 %15, %16
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %20 = sdiv i32 %18, %19
  %21 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %22 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %24 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %29 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @asd_alloc_edbs(%struct.asd_ha_struct* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = call i32 @asd_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %1
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @asd_alloc_escbs(%struct.asd_ha_struct* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @asd_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %38
  %48 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %49 = call i32 @asd_assign_edbs2escbs(%struct.asd_ha_struct* %48)
  %50 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %51 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %54 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %56 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %60 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 1, %63
  %65 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %66 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %47, %44, %35
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @asd_alloc_edbs(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_printk(i8*) #1

declare dso_local i32 @asd_alloc_escbs(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_assign_edbs2escbs(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
