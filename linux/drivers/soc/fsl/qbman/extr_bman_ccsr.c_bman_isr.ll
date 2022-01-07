; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_ccsr.c_bman_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_ccsr.c_bman_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.device = type { i32 }

@REG_ERR_IER = common dso_local global i32 0, align 4
@REG_ERR_ISR = common dso_local global i32 0, align 4
@REG_ECSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@bman_hwerr_txts = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"ErrInt: %s\0A\00", align 1
@BMAN_ERRS_TO_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Disabling error 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bman_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_isr(i32 %0, i8* %1) #0 {
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
  %15 = call i64 @bm_ccsr_in(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @REG_ERR_ISR, align 4
  %17 = call i64 @bm_ccsr_in(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @REG_ECSR, align 4
  %19 = call i64 @bm_ccsr_in(i32 %18)
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
  br label %102

27:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %94, %27
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err_ratelimited(%struct.device* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load i32, i32* @REG_ECSR, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @bm_ccsr_out(i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %42
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @BMAN_ERRS_TO_DISABLE, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %67, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %62
  %73 = load %struct.device*, %struct.device** %11, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bman_hwerr_txts, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = xor i64 %85, -1
  %87 = load i64, i64* %7, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %7, align 8
  %89 = load i32, i32* @REG_ERR_IER, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @bm_ccsr_out(i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %72, %62
  br label %93

93:                                               ; preds = %92, %33
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %28

97:                                               ; preds = %28
  %98 = load i32, i32* @REG_ERR_ISR, align 4
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @bm_ccsr_out(i32 %98, i64 %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %25
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @bm_ccsr_in(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32) #1

declare dso_local i32 @bm_ccsr_out(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
