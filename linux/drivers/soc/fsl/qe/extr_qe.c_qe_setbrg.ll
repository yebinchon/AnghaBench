; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_setbrg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_setbrg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QE_BRG1 = common dso_local global i32 0, align 4
@QE_BRG16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QE_BRGC_DIVISOR_MAX = common dso_local global i32 0, align 4
@QE_BRGC_DIV16 = common dso_local global i32 0, align 4
@PVR_VER_836x = common dso_local global i32 0, align 4
@PVR_VER_832x = common dso_local global i32 0, align 4
@QE_BRGC_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@QE_BRGC_ENABLE = common dso_local global i32 0, align 4
@qe_immr = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_setbrg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @QE_BRG1, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @QE_BRG16, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %14
  %22 = call i32 (...) @qe_get_brg_clk()
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %23, %24
  %26 = udiv i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @QE_BRGC_DIVISOR_MAX, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @QE_BRGC_DIV16, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 16
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i32, i32* @PVR_VER_836x, align 4
  %37 = call i64 @pvr_version_is(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @PVR_VER_832x, align 4
  %41 = call i64 @pvr_version_is(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50, %46, %43
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @QE_BRGC_DIVISOR_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @QE_BRGC_ENABLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qe_immr, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @QE_BRG1, align 4
  %72 = sub i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @out_be32(i32* %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %57, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @qe_get_brg_clk(...) #1

declare dso_local i64 @pvr_version_is(i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
