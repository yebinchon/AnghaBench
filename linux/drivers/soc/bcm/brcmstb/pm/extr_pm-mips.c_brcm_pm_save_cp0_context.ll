; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-mips.c_brcm_pm_save_cp0_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-mips.c_brcm_pm_save_cp0_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_pm_s3_context = type { i32, i32* }

@CONTEXT = common dso_local global i64 0, align 8
@USER_LOCAL = common dso_local global i64 0, align 8
@PGMK = common dso_local global i64 0, align 8
@HWRENA = common dso_local global i64 0, align 8
@COMPARE = common dso_local global i64 0, align 8
@STATUS = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i64 0, align 8
@MODE = common dso_local global i64 0, align 8
@EDSP = common dso_local global i64 0, align 8
@BOOT_VEC = common dso_local global i64 0, align 8
@EBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcm_pm_s3_context*)* @brcm_pm_save_cp0_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcm_pm_save_cp0_context(%struct.brcm_pm_s3_context* %0) #0 {
  %2 = alloca %struct.brcm_pm_s3_context*, align 8
  store %struct.brcm_pm_s3_context* %0, %struct.brcm_pm_s3_context** %2, align 8
  %3 = call i32 (...) @read_c0_context()
  %4 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %5 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @CONTEXT, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %3, i32* %8, align 4
  %9 = call i32 (...) @read_c0_userlocal()
  %10 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %11 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @USER_LOCAL, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = call i32 (...) @read_c0_pagemask()
  %16 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %17 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @PGMK, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = call i32 (...) @read_c0_cache()
  %22 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %23 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @HWRENA, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = call i32 (...) @read_c0_compare()
  %28 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %29 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @COMPARE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = call i32 (...) @read_c0_status()
  %34 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %35 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @STATUS, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = call i32 (...) @read_c0_brcm_config()
  %40 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %41 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @CONFIG, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = call i32 (...) @read_c0_brcm_mode()
  %46 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %47 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @MODE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = call i32 (...) @read_c0_brcm_edsp()
  %52 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %53 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @EDSP, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = call i32 (...) @read_c0_brcm_bootvec()
  %58 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %59 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @BOOT_VEC, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = call i32 (...) @read_c0_ebase()
  %64 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %65 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @EBASE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = call i32 @bmips_read_zscm_reg(i32 160)
  %70 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %71 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  ret void
}

declare dso_local i32 @read_c0_context(...) #1

declare dso_local i32 @read_c0_userlocal(...) #1

declare dso_local i32 @read_c0_pagemask(...) #1

declare dso_local i32 @read_c0_cache(...) #1

declare dso_local i32 @read_c0_compare(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @read_c0_brcm_config(...) #1

declare dso_local i32 @read_c0_brcm_mode(...) #1

declare dso_local i32 @read_c0_brcm_edsp(...) #1

declare dso_local i32 @read_c0_brcm_bootvec(...) #1

declare dso_local i32 @read_c0_ebase(...) #1

declare dso_local i32 @bmips_read_zscm_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
