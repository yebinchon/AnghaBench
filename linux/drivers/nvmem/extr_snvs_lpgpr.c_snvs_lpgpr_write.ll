; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_snvs_lpgpr.c_snvs_lpgpr_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_snvs_lpgpr.c_snvs_lpgpr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snvs_lpgpr_priv = type { i32, %struct.snvs_lpgpr_cfg* }
%struct.snvs_lpgpr_cfg = type { i64, i32, i32 }

@IMX_GPR_SL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IMX_GPR_HL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @snvs_lpgpr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_lpgpr_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snvs_lpgpr_priv*, align 8
  %11 = alloca %struct.snvs_lpgpr_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.snvs_lpgpr_priv*
  store %struct.snvs_lpgpr_priv* %15, %struct.snvs_lpgpr_priv** %10, align 8
  %16 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %10, align 8
  %17 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %16, i32 0, i32 1
  %18 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %17, align 8
  store %struct.snvs_lpgpr_cfg* %18, %struct.snvs_lpgpr_cfg** %11, align 8
  %19 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %10, align 8
  %20 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %11, align 8
  %23 = getelementptr inbounds %struct.snvs_lpgpr_cfg, %struct.snvs_lpgpr_cfg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_read(i32 %21, i32 %24, i32* %12)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IMX_GPR_SL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %72

38:                                               ; preds = %30
  %39 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %10, align 8
  %40 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %11, align 8
  %43 = getelementptr inbounds %struct.snvs_lpgpr_cfg, %struct.snvs_lpgpr_cfg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @regmap_read(i32 %41, i32 %44, i32* %12)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %72

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @IMX_GPR_HL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %72

58:                                               ; preds = %50
  %59 = load %struct.snvs_lpgpr_priv*, %struct.snvs_lpgpr_priv** %10, align 8
  %60 = getelementptr inbounds %struct.snvs_lpgpr_priv, %struct.snvs_lpgpr_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snvs_lpgpr_cfg*, %struct.snvs_lpgpr_cfg** %11, align 8
  %63 = getelementptr inbounds %struct.snvs_lpgpr_cfg, %struct.snvs_lpgpr_cfg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = udiv i64 %69, 4
  %71 = call i32 @regmap_bulk_write(i32 %61, i64 %67, i8* %68, i64 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %58, %55, %48, %35, %28
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
