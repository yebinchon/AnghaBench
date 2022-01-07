; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_ql_wai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_ql_wai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicfas408_priv = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@WATCHDOG = common dso_local global i64 0, align 8
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlogicfas408_priv*)* @ql_wai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_wai(%struct.qlogicfas408_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlogicfas408_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.qlogicfas408_priv* %0, %struct.qlogicfas408_priv** %3, align 8
  %7 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %8 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @WATCHDOG, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @time_before(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %20 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 4
  %26 = call i32 @inb(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = and i32 %26, 224
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %23, %18, %13
  %31 = phi i1 [ false, %18 ], [ false, %13 ], [ %29, %23 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = call i32 (...) @barrier()
  %34 = call i32 (...) @cpu_relax()
  br label %13

35:                                               ; preds = %30
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @time_after_eq(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %41, i32* %2, align 4
  br label %78

42:                                               ; preds = %35
  %43 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %44 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %49 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @DID_ABORT, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @DID_RESET, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %2, align 4
  br label %78

58:                                               ; preds = %42
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 96
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %3, align 8
  %64 = call i32 @ql_zap(%struct.qlogicfas408_priv* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @DID_PARITY, align 4
  store i32 %70, i32* %2, align 4
  br label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @DID_ERROR, align 4
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %75, %69, %56, %40
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql_zap(%struct.qlogicfas408_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
