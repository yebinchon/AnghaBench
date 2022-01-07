; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_start_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_start_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_power_info = type { i32 }

@MAX8925_CMD_VCHG = common dso_local global i32 0, align 4
@MAX8925_ADC_VCHG = common dso_local global i32 0, align 4
@MAX8925_CMD_VBBATT = common dso_local global i32 0, align 4
@MAX8925_ADC_VBBATT = common dso_local global i32 0, align 4
@MAX8925_CMD_VMBATT = common dso_local global i32 0, align 4
@MAX8925_ADC_VMBATT = common dso_local global i32 0, align 4
@MAX8925_CMD_ISNS = common dso_local global i32 0, align 4
@MAX8925_ADC_ISNS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8925_power_info*, i32)* @start_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_measure(%struct.max8925_power_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max8925_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max8925_power_info* %0, %struct.max8925_power_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 2, i1 false)
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 130, label %15
    i32 128, label %18
    i32 131, label %21
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX8925_CMD_VCHG, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @MAX8925_ADC_VCHG, align 4
  store i32 %14, i32* %8, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX8925_CMD_VBBATT, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @MAX8925_ADC_VBBATT, align 4
  store i32 %17, i32* %8, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX8925_CMD_VMBATT, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @MAX8925_ADC_VMBATT, align 4
  store i32 %20, i32* %8, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @MAX8925_CMD_ISNS, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @MAX8925_ADC_ISNS, align 4
  store i32 %23, i32* %8, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %21, %18, %15, %12
  %28 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %29 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @max8925_reg_write(i32 %30, i32 %31, i32 0)
  %33 = load %struct.max8925_power_info*, %struct.max8925_power_info** %4, align 8
  %34 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %38 = call i32 @max8925_bulk_read(i32 %35, i32 %36, i32 2, i8* %37)
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %42, %45
  %47 = ashr i32 %46, 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %27, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @max8925_reg_write(i32, i32, i32) #2

declare dso_local i32 @max8925_bulk_read(i32, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
