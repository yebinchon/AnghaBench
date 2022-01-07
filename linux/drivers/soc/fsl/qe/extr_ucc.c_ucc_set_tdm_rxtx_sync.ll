; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc.c_ucc_set_tdm_rxtx_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_ucc.c_ucc_set_tdm_rxtx_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.qe_mux }
%struct.qe_mux = type { i32 }

@qe_immr = common dso_local global %struct.TYPE_2__* null, align 8
@UCC_TDM_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@COMM_DIR_RX = common dso_local global i32 0, align 4
@COMM_DIR_TX = common dso_local global i32 0, align 4
@QE_CMXUCR_TX_CLK_SRC_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucc_set_tdm_rxtx_sync(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qe_mux*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qe_immr, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.qe_mux* %12, %struct.qe_mux** %10, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @UCC_TDM_NUM, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @COMM_DIR_RX, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @COMM_DIR_TX, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %23, %19
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ucc_get_tdm_sync_source(i64 %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @ucc_get_tdm_sync_shift(i32 %41, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.qe_mux*, %struct.qe_mux** %10, align 8
  %45 = getelementptr inbounds %struct.qe_mux, %struct.qe_mux* %44, i32 0, i32 0
  %46 = load i64, i64* @QE_CMXUCR_TX_CLK_SRC_MASK, align 8
  %47 = load i64, i64* %9, align 8
  %48 = shl i64 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %49, %51
  %53 = call i32 @qe_clrsetbits32(i32* %45, i64 %48, i32 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %40, %37, %27, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @ucc_get_tdm_sync_source(i64, i32, i32) #1

declare dso_local i64 @ucc_get_tdm_sync_shift(i32, i64) #1

declare dso_local i32 @qe_clrsetbits32(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
