; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_ips_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@THM_TSES = common dso_local global i32 0, align 4
@THM_TES = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TSES: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TES: 0x%02x\0A\00", align 1
@THM_STS = common dso_local global i32 0, align 4
@THM_TC1 = common dso_local global i32 0, align 4
@STS_NVV = common dso_local global i32 0, align 4
@STS_PCPL_MASK = common dso_local global i32 0, align 4
@STS_PCPL_SHIFT = common dso_local global i32 0, align 4
@STS_GPL_MASK = common dso_local global i32 0, align 4
@STS_GPL_SHIFT = common dso_local global i32 0, align 4
@STS_PCTD_DIS = common dso_local global i32 0, align 4
@STS_GTD_DIS = common dso_local global i32 0, align 4
@STS_PTL_MASK = common dso_local global i32 0, align 4
@STS_PTL_SHIFT = common dso_local global i32 0, align 4
@STS_PPL_MASK = common dso_local global i32 0, align 4
@STS_PPL_SHIFT = common dso_local global i32 0, align 4
@THM_SEC = common dso_local global i32 0, align 4
@SEC_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"thermal trip occurred, tses: 0x%04x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ips_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ips_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ips_driver*
  store %struct.ips_driver* %12, %struct.ips_driver** %6, align 8
  %13 = load i32, i32* @THM_TSES, align 4
  %14 = call i32 @thm_readb(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @THM_TES, align 4
  %16 = call i32 @thm_readb(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %19, %2
  %25 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %26 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %31 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %115

38:                                               ; preds = %24
  %39 = load i32, i32* @THM_STS, align 4
  %40 = call i32 @thm_readl(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @THM_TC1, align 4
  %42 = call i32 @thm_readl(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @STS_NVV, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %111

47:                                               ; preds = %38
  %48 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %49 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %48, i32 0, i32 7
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @STS_PCPL_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @STS_PCPL_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %57 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @STS_GPL_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @STS_GPL_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %64 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @STS_PCTD_DIS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %72 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %74 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %76 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %47
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @STS_GTD_DIS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %87 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %47
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @STS_PTL_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @STS_PTL_SHIFT, align 4
  %93 = ashr i32 %91, %92
  %94 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %95 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @STS_PPL_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @STS_PPL_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %102 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %104 = call i32 @verify_limits(%struct.ips_driver* %103)
  %105 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %106 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %105, i32 0, i32 7
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* @THM_SEC, align 4
  %109 = load i32, i32* @SEC_ACK, align 4
  %110 = call i32 @thm_writeb(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %88, %38
  %112 = load i32, i32* @THM_TES, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @thm_writeb(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %24
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.ips_driver*, %struct.ips_driver** %6, align 8
  %120 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @dev_warn(i32 %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @THM_TSES, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @thm_writeb(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %118, %115
  %128 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %22
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @thm_readb(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @thm_readl(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @verify_limits(%struct.ips_driver*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @thm_writeb(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
