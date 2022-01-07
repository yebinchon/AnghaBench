; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_rf_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_rf_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.IOCMD_STRUCT = type { i32, i32, i32 }

@IOCMD_CLASS_BB_RF = common dso_local global i32 0, align 4
@IOCMD_RF_WRIT_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_rf_reg_write(%struct._adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.IOCMD_STRUCT, align 4
  %11 = alloca { i64, i32 }, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @IOCMD_CLASS_BB_RF, align 4
  %17 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @IOCMD_RF_WRIT_IDX, align 4
  %21 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct._adapter*, %struct._adapter** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = bitcast { i64, i32 }* %11 to i8*
  %25 = bitcast %struct.IOCMD_STRUCT* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %27 = load i64, i64* %26, align 4
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fw_iocmd_write(%struct._adapter* %22, i64 %27, i32 %29, i32 %23)
  ret i32 %30
}

declare dso_local i32 @fw_iocmd_write(%struct._adapter*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
