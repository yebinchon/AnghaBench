; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-mips.c_brcm_pm_restore_cp0_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-mips.c_brcm_pm_restore_cp0_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_pm_s3_context = type { i32*, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcm_pm_s3_context*)* @brcm_pm_restore_cp0_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcm_pm_restore_cp0_context(%struct.brcm_pm_s3_context* %0) #0 {
  %2 = alloca %struct.brcm_pm_s3_context*, align 8
  store %struct.brcm_pm_s3_context* %0, %struct.brcm_pm_s3_context** %2, align 8
  %3 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %4 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @bmips_write_zscm_reg(i32 160, i32 %5)
  %7 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %8 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @CONTEXT, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @write_c0_context(i32 %12)
  %14 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %15 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @USER_LOCAL, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @write_c0_userlocal(i32 %19)
  %21 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %22 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @PGMK, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @write_c0_pagemask(i32 %26)
  %28 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %29 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @HWRENA, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @write_c0_cache(i32 %33)
  %35 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %36 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @COMPARE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @write_c0_compare(i32 %40)
  %42 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %43 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @STATUS, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @write_c0_status(i32 %47)
  %49 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %50 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @CONFIG, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @write_c0_brcm_config(i32 %54)
  %56 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %57 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @MODE, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_c0_brcm_mode(i32 %61)
  %63 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %64 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @EDSP, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write_c0_brcm_edsp(i32 %68)
  %70 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %71 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @BOOT_VEC, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write_c0_brcm_bootvec(i32 %75)
  %77 = load %struct.brcm_pm_s3_context*, %struct.brcm_pm_s3_context** %2, align 8
  %78 = getelementptr inbounds %struct.brcm_pm_s3_context, %struct.brcm_pm_s3_context* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @EBASE, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @write_c0_ebase(i32 %82)
  ret void
}

declare dso_local i32 @bmips_write_zscm_reg(i32, i32) #1

declare dso_local i32 @write_c0_context(i32) #1

declare dso_local i32 @write_c0_userlocal(i32) #1

declare dso_local i32 @write_c0_pagemask(i32) #1

declare dso_local i32 @write_c0_cache(i32) #1

declare dso_local i32 @write_c0_compare(i32) #1

declare dso_local i32 @write_c0_status(i32) #1

declare dso_local i32 @write_c0_brcm_config(i32) #1

declare dso_local i32 @write_c0_brcm_mode(i32) #1

declare dso_local i32 @write_c0_brcm_edsp(i32) #1

declare dso_local i32 @write_c0_brcm_bootvec(i32) #1

declare dso_local i32 @write_c0_ebase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
