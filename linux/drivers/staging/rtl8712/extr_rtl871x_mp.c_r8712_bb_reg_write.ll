; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_bb_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_bb_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.IOCMD_STRUCT = type { i32, i32, i32 }

@IOCMD_CLASS_BB_RF = common dso_local global i32 0, align 4
@IOCMD_BB_WRITE_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r8712_bb_reg_write(%struct._adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.IOCMD_STRUCT, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 3
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 4092
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @IOCMD_CLASS_BB_RF, align 4
  %21 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @IOCMD_BB_WRITE_IDX, align 4
  %25 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct._adapter*, %struct._adapter** %5, align 8
  %31 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @r8712_bb_reg_read(%struct._adapter* %30, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 4, %34
  %36 = mul nsw i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = lshr i32 -1, %37
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %8, align 8
  %44 = mul nsw i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %42, %45
  %47 = or i32 %41, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct._adapter*, %struct._adapter** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = bitcast { i64, i32 }* %13 to i8*
  %51 = bitcast %struct.IOCMD_STRUCT* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %53 = load i64, i64* %52, align 4
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @fw_iocmd_write(%struct._adapter* %48, i64 %53, i32 %55, i32 %49)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %28
  store i64 0, i64* %4, align 8
  br label %91

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %60, align 4
  %63 = load %struct._adapter*, %struct._adapter** %5, align 8
  %64 = getelementptr inbounds %struct.IOCMD_STRUCT, %struct.IOCMD_STRUCT* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @r8712_bb_reg_read(%struct._adapter* %63, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i64, i64* %8, align 8
  %68 = mul nsw i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 -1, %69
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i64, i64* %8, align 8
  %76 = sub nsw i64 4, %75
  %77 = mul nsw i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = ashr i32 %74, %78
  %80 = or i32 %73, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %59, %3
  %82 = load %struct._adapter*, %struct._adapter** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = bitcast { i64, i32 }* %14 to i8*
  %85 = bitcast %struct.IOCMD_STRUCT* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 12, i1 false)
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %87 = load i64, i64* %86, align 4
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @fw_iocmd_write(%struct._adapter* %82, i64 %87, i32 %89, i32 %83)
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %81, %58
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i32 @r8712_bb_reg_read(%struct._adapter*, i32) #1

declare dso_local i64 @fw_iocmd_write(%struct._adapter*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
