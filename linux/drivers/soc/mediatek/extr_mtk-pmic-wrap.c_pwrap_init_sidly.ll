; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_init_sidly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_init_sidly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@__const.pwrap_init_sidly.dly = private unnamed_addr constant [16 x i8] c"\FF\00\01\00\02\FF\01\01\03\FF\FF\FF\03\FF\02\01", align 16
@PWRAP_SIDLY = common dso_local global i32 0, align 4
@PWRAP_DEW_READ_TEST = common dso_local global i64 0, align 8
@PWRAP_DEW_READ_TEST_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[Read Test] pass, SIDLY=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"sidly pass range 0x%x not continuous\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*)* @pwrap_init_sidly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_init_sidly(%struct.pmic_wrapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmic_wrapper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.pwrap_init_sidly.dly, i32 0, i32 0), i64 16, i1 false)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* @PWRAP_SIDLY, align 4
  %17 = call i32 @pwrap_writel(%struct.pmic_wrapper* %13, i8 signext %15, i32 %16)
  %18 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %19 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %20 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @PWRAP_DEW_READ_TEST, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pwrap_read(%struct.pmic_wrapper* %18, i32 %26, i32* %4)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PWRAP_DEW_READ_TEST_VAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %12
  %32 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %33 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %31, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %54 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %45
  %61 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load i32, i32* @PWRAP_SIDLY, align 4
  %67 = call i32 @pwrap_writel(%struct.pmic_wrapper* %61, i8 signext %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %52
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i8 signext, i32) #2

declare dso_local i32 @pwrap_read(%struct.pmic_wrapper*, i32, i32*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
