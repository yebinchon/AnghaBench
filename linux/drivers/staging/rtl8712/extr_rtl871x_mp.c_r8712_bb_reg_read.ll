; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_bb_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_bb_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.IOCMD_STRUCT = type { i32, i32, i32 }

@IOCMD_CLASS_BB_RF = common dso_local global i32 0, align 4
@IOCMD_BB_READ_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_bb_reg_read(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.IOCMD_STRUCT, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 3
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 4092
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @IOCMD_CLASS_BB_RF, align 4
  %17 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @IOCMD_BB_READ_IDX, align 4
  %21 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct._adapter*, %struct._adapter** %3, align 8
  %23 = bitcast { i64, i32 }* %9 to i8*
  %24 = bitcast %struct.IOCMD_STRUCT* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 4
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fw_iocmd_read(%struct._adapter* %22, i64 %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 8
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %37, align 4
  %40 = load %struct._adapter*, %struct._adapter** %3, align 8
  %41 = bitcast { i64, i32 }* %11 to i8*
  %42 = bitcast %struct.IOCMD_STRUCT* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fw_iocmd_read(%struct._adapter* %40, i64 %44, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 4, %48
  %50 = mul nsw i32 %49, 8
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %32, %2
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @fw_iocmd_read(%struct._adapter*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
