; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@qe_lock = common dso_local global i32 0, align 4
@QE_RESET = common dso_local global i64 0, align 8
@qe_immr = common dso_local global %struct.TYPE_4__* null, align 8
@QE_CR_FLG = common dso_local global i64 0, align 8
@QE_ASSIGN_PAGE = common dso_local global i64 0, align 8
@QE_CR_SNUM_SHIFT = common dso_local global i64 0, align 8
@QE_ASSIGN_RISC = common dso_local global i64 0, align 8
@QE_CR_MCN_RISC_ASSIGN_SHIFT = common dso_local global i64 0, align 8
@QE_CR_SUBBLOCK_USB = common dso_local global i64 0, align 8
@QE_CR_MCN_USB_SHIFT = common dso_local global i64 0, align 8
@QE_CR_MCN_NORMAL_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_issue_cmd(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @qe_lock, i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @QE_RESET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qe_immr, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @QE_CR_FLG, align 8
  %24 = or i64 %22, %23
  %25 = call i32 @out_be32(i32* %21, i64 %24)
  br label %70

26:                                               ; preds = %4
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @QE_ASSIGN_PAGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @QE_CR_SNUM_SHIFT, align 8
  store i64 %31, i64* %11, align 8
  br label %49

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @QE_ASSIGN_RISC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* @QE_CR_SNUM_SHIFT, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* @QE_CR_MCN_RISC_ASSIGN_SHIFT, align 8
  store i64 %38, i64* %10, align 8
  br label %48

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @QE_CR_SUBBLOCK_USB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @QE_CR_MCN_USB_SHIFT, align 8
  store i64 %44, i64* %10, align 8
  br label %47

45:                                               ; preds = %39
  %46 = load i64, i64* @QE_CR_MCN_NORMAL_SHIFT, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qe_immr, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @out_be32(i32* %52, i64 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qe_immr, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @QE_CR_FLG, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = shl i64 %61, %62
  %64 = or i64 %60, %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %10, align 8
  %67 = shl i64 %65, %66
  %68 = or i64 %64, %67
  %69 = call i32 @out_be32(i32* %57, i64 %68)
  br label %70

70:                                               ; preds = %49, %18
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qe_immr, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i64 @in_be32(i32* %73)
  %75 = load i64, i64* @QE_CR_FLG, align 8
  %76 = and i64 %74, %75
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @spin_event_timeout(i32 %78, i32 100, i32 0)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* @qe_lock, i64 %80)
  %82 = load i64, i64* %12, align 8
  %83 = icmp eq i64 %82, 1
  %84 = zext i1 %83 to i32
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_be32(i32*, i64) #1

declare dso_local i64 @spin_event_timeout(i32, i32, i32) #1

declare dso_local i64 @in_be32(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
