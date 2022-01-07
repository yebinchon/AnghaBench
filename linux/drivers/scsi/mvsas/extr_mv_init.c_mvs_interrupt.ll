; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32, i64)*, i32 (%struct.mvs_info*)*, i32 (%struct.mvs_info*)* }
%struct.mvs_info = type { i32 }
%struct.sas_ha_struct = type { i64 }
%struct.mvs_prv_info = type { i64, %struct.mvs_info**, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mvs_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mvs_info*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sas_ha_struct*
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %9, align 8
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %14 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mvs_prv_info*
  %17 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.mvs_prv_info*
  %23 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %22, i32 0, i32 1
  %24 = load %struct.mvs_info**, %struct.mvs_info*** %23, align 8
  %25 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %24, i64 0
  %26 = load %struct.mvs_info*, %struct.mvs_info** %25, align 8
  store %struct.mvs_info* %26, %struct.mvs_info** %8, align 8
  %27 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %28 = icmp ne %struct.mvs_info* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.mvs_info*, i32)*, i64 (%struct.mvs_info*, i32)** %37, align 8
  %39 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 %38(%struct.mvs_info* %39, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %35
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %53 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.mvs_prv_info*
  %56 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %55, i32 0, i32 1
  %57 = load %struct.mvs_info**, %struct.mvs_info*** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %57, i64 %58
  %60 = load %struct.mvs_info*, %struct.mvs_info** %59, align 8
  store %struct.mvs_info* %60, %struct.mvs_info** %8, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.mvs_info*, i32, i64)*, i32 (%struct.mvs_info*, i32, i64)** %62, align 8
  %64 = load %struct.mvs_info*, %struct.mvs_info** %8, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 %63(%struct.mvs_info* %64, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %51
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %47

71:                                               ; preds = %47
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %44, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
