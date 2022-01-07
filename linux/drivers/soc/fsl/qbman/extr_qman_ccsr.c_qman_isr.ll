; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.device = type { i32 }

@REG_ERR_IER = common dso_local global i32 0, align 4
@REG_ERR_ISR = common dso_local global i32 0, align 4
@REG_ECSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@qman_hwerr_txts = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"ErrInt: %s\0A\00", align 1
@QMAN_ERRS_TO_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Disabling error 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qman_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %11, align 8
  %14 = load i32, i32* @REG_ERR_IER, align 4
  %15 = call i64 @qm_ccsr_in(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @REG_ERR_ISR, align 4
  %17 = call i64 @qm_ccsr_in(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @REG_ECSR, align 4
  %19 = call i64 @qm_ccsr_in(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %106

27:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %98, %27
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %101

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err_ratelimited(%struct.device* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load %struct.device*, %struct.device** %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @log_additional_error_info(%struct.device* %59, i64 %60, i64 %61)
  %63 = load i32, i32* @REG_ECSR, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @qm_ccsr_out(i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %58, %42
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @QMAN_ERRS_TO_DISABLE, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %71, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %11, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qman_hwerr_txts, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i32, i32* @REG_ERR_IER, align 4
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @qm_ccsr_out(i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %76, %66
  br label %97

97:                                               ; preds = %96, %33
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %28

101:                                              ; preds = %28
  %102 = load i32, i32* @REG_ERR_ISR, align 4
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @qm_ccsr_out(i32 %102, i64 %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @qm_ccsr_in(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32) #1

declare dso_local i32 @log_additional_error_info(%struct.device*, i64, i64) #1

declare dso_local i32 @qm_ccsr_out(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
