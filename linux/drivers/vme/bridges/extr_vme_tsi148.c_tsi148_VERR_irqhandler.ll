; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_VERR_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_VERR_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }

@TSI148_LCSR_VEAU = common dso_local global i64 0, align 8
@TSI148_LCSR_VEAL = common dso_local global i64 0, align 8
@TSI148_LCSR_VEAT = common dso_local global i64 0, align 8
@TSI148_LCSR_VEAT_AM_M = common dso_local global i32 0, align 4
@TSI148_LCSR_VEAT_VEOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"VME Bus Exception Overflow Occurred\0A\00", align 1
@err_chk = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"VME Bus Error at address: 0x%llx, attributes: %08x\0A\00", align 1
@TSI148_LCSR_VEAT_VESCL = common dso_local global i32 0, align 4
@TSI148_LCSR_INTC_VERRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*)* @tsi148_VERR_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_VERR_irqhandler(%struct.vme_bridge* %0) #0 {
  %2 = alloca %struct.vme_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %2, align 8
  %9 = load %struct.vme_bridge*, %struct.vme_bridge** %2, align 8
  %10 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %9, i32 0, i32 1
  %11 = load %struct.tsi148_driver*, %struct.tsi148_driver** %10, align 8
  store %struct.tsi148_driver* %11, %struct.tsi148_driver** %8, align 8
  %12 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %13 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TSI148_LCSR_VEAU, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i8* @ioread32be(i64 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %20 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TSI148_LCSR_VEAL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i8* @ioread32be(i64 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %27 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TSI148_LCSR_VEAT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @ioread32be(i64 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TSI148_LCSR_VEAT_AM_M, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @reg_join(i32 %37, i32 %38, i64* %5)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TSI148_LCSR_VEAT_VEOF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.vme_bridge*, %struct.vme_bridge** %2, align 8
  %46 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %1
  %50 = load i64, i64* @err_chk, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.vme_bridge*, %struct.vme_bridge** %2, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @vme_bus_error_handler(%struct.vme_bridge* %53, i64 %54, i32 %55)
  br label %64

57:                                               ; preds = %49
  %58 = load %struct.vme_bridge*, %struct.vme_bridge** %2, align 8
  %59 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %52
  %65 = load i32, i32* @TSI148_LCSR_VEAT_VESCL, align 4
  %66 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  %67 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TSI148_LCSR_VEAT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @iowrite32be(i32 %65, i64 %70)
  %72 = load i32, i32* @TSI148_LCSR_INTC_VERRC, align 4
  ret i32 %72
}

declare dso_local i8* @ioread32be(i64) #1

declare dso_local i32 @reg_join(i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @vme_bus_error_handler(%struct.vme_bridge*, i64, i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
