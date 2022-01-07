; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_read_ocm_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_read_ocm_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }
%struct.asd_ocm_dir = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"couldn't read ocm segment\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"no valid dir signature(%c%c) at start of OCM\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unsupported major version of ocm dir:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_ocm_dir*, i32)* @asd_read_ocm_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_read_ocm_dir(%struct.asd_ha_struct* %0, %struct.asd_ocm_dir* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca %struct.asd_ocm_dir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store %struct.asd_ocm_dir* %1, %struct.asd_ocm_dir** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %10 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @asd_read_ocm_seg(%struct.asd_ha_struct* %9, %struct.asd_ocm_dir* %10, i32 %11, i32 24)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %67

18:                                               ; preds = %3
  %19 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %20 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 77
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %28 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 79
  br i1 %33, label %34, label %50

34:                                               ; preds = %26, %18
  %35 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %36 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %42 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %26
  %51 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %52 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %57 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @asd_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %50
  %63 = load %struct.asd_ocm_dir*, %struct.asd_ocm_dir** %6, align 8
  %64 = getelementptr inbounds %struct.asd_ocm_dir, %struct.asd_ocm_dir* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 15
  store i32 %66, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %55, %34, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @asd_read_ocm_seg(%struct.asd_ha_struct*, %struct.asd_ocm_dir*, i32, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

declare dso_local i32 @asd_printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
