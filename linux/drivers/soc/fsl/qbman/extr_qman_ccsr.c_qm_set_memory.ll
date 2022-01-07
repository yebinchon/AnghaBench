; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qm_set_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qm_set_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qm_memory_fqd = common dso_local global i32 0, align 4
@REG_FQD_BARE = common dso_local global i32 0, align 4
@REG_PFDR_BARE = common dso_local global i32 0, align 4
@REG_offset_BAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Attempted to reinitialize QMan with different BAR, got 0x%llx read BARE=0x%x BAR=0x%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@__qman_requires_cleanup = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"memremap() of QMan private memory failed\0A\00", align 1
@REG_offset_AR = common dso_local global i32 0, align 4
@PFDR_AR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @qm_set_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_set_memory(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @qm_memory_fqd, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @REG_FQD_BARE, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @REG_PFDR_BARE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ilog2(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 4096
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 1073741824
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @is_power_of_2(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %26, %20
  %34 = phi i1 [ false, %26 ], [ false, %20 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @DPAA_ASSERT(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @DPAA_ASSERT(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @REG_offset_BAR, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @qm_ccsr_in(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %33
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @qm_ccsr_in(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @upper_32_bits(i32 %55)
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58, %51
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %106

70:                                               ; preds = %58
  store i32 1, i32* @__qman_requires_cleanup, align 4
  store i32 1, i32* %4, align 4
  br label %106

71:                                               ; preds = %33
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MEMREMAP_WB, align 4
  %75 = call i8* @memremap(i32 %72, i32 %73, i32 %74)
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = call i32 @pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %106

82:                                               ; preds = %71
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @memset(i8* %83, i32 0, i32 %84)
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @memunmap(i8* %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @upper_32_bits(i32 %89)
  %91 = call i32 @qm_ccsr_out(i32 %88, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @REG_offset_BAR, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @lower_32_bits(i32 %95)
  %97 = call i32 @qm_ccsr_out(i32 %94, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @REG_offset_AR, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @PFDR_AR_EN, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, 1
  %104 = or i32 %101, %103
  %105 = call i32 @qm_ccsr_out(i32 %100, i32 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %82, %78, %70, %63
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @qm_ccsr_in(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i8* @memremap(i32, i32, i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memunmap(i8*) #1

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
