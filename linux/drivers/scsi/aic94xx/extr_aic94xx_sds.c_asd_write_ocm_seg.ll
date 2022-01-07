; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_write_ocm_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_write_ocm_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@OCM_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*, i8*, i64, i32)* @asd_write_ocm_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_write_ocm_seg(%struct.asd_ha_struct* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @OCM_BASE_ADDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @asd_write_reg_string(%struct.asd_ha_struct* %18, i8* %19, i64 %22, i32 %23)
  br label %43

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @asd_write_ocm_byte(%struct.asd_ha_struct* %30, i64 %31, i32 %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %9, align 8
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @asd_write_reg_string(%struct.asd_ha_struct*, i8*, i64, i32) #1

declare dso_local i32 @asd_write_ocm_byte(%struct.asd_ha_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
