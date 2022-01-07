; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qm_init_pfdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qm_init_pfdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@REG_MCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"QMAN_MCR isn't idle\00", align 1
@MCR_INIT_PFDR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unexpected result from MCR_INIT_PFDR: %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @qm_init_pfdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_init_pfdr(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @REG_MCR, align 4
  %10 = call i32 @qm_ccsr_in(i32 %9)
  %11 = call i32 @MCR_get_rslt(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %18, %14, %3
  %26 = phi i1 [ false, %18 ], [ false, %14 ], [ false, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @DPAA_ASSERT(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @MCR_rslt_idle(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_crit(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @WARN_ON(i32 1)
  br label %36

36:                                               ; preds = %32, %25
  %37 = call i32 @REG_MCP(i32 0)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @qm_ccsr_out(i32 %37, i32 %38)
  %40 = call i32 @REG_MCP(i32 1)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 16
  %45 = call i32 @qm_ccsr_out(i32 %40, i32 %44)
  %46 = call i32 (...) @dma_wmb()
  %47 = load i32, i32* @REG_MCR, align 4
  %48 = load i32, i32* @MCR_INIT_PFDR, align 4
  %49 = call i32 @qm_ccsr_out(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %54, %36
  %51 = load i32, i32* @REG_MCR, align 4
  %52 = call i32 @qm_ccsr_in(i32 %51)
  %53 = call i32 @MCR_get_rslt(i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @MCR_rslt_idle(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %50, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @MCR_rslt_ok(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @MCR_rslt_eaccess(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EACCES, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %84

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @MCR_rslt_inval(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %84

78:                                               ; preds = %71
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_crit(%struct.device* %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %75, %68, %63
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @MCR_get_rslt(i32) #1

declare dso_local i32 @qm_ccsr_in(i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @MCR_rslt_idle(i32) #1

declare dso_local i32 @dev_crit(%struct.device*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

declare dso_local i32 @REG_MCP(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @MCR_rslt_ok(i32) #1

declare dso_local i64 @MCR_rslt_eaccess(i32) #1

declare dso_local i64 @MCR_rslt_inval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
