; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_build_free_scb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_build_free_scb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AHC_LSCBS_ENABLED = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i64 0, align 8
@SCB_BASE = common dso_local global i64 0, align 8
@SCB_CONTROL = common dso_local global i64 0, align 8
@AHC_PAGESCBS = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i64 0, align 8
@SCB_SCSIID = common dso_local global i64 0, align 8
@SCB_LUN = common dso_local global i64 0, align 8
@FREE_SCBH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_build_free_scb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_build_free_scb_list(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  store i32 32, i32* %3, align 4
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @AHC_LSCBS_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 64, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %73, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %14
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %24 = load i64, i64* @SCBPTR, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ahc_outb(%struct.ahc_softc* %23, i64 %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %38, %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = load i64, i64* @SCB_BASE, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @ahc_outb(%struct.ahc_softc* %32, i64 %36, i32 255)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = load i64, i64* @SCB_CONTROL, align 8
  %44 = call i32 @ahc_outb(%struct.ahc_softc* %42, i64 %43, i32 0)
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AHC_PAGESCBS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %53 = load i64, i64* @SCB_NEXT, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @ahc_outb(%struct.ahc_softc* %52, i64 %53, i32 %55)
  br label %62

57:                                               ; preds = %41
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %59 = load i64, i64* @SCB_NEXT, align 8
  %60 = load i32, i32* @SCB_LIST_NULL, align 4
  %61 = call i32 @ahc_outb(%struct.ahc_softc* %58, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %64 = load i64, i64* @SCB_TAG, align 8
  %65 = load i32, i32* @SCB_LIST_NULL, align 4
  %66 = call i32 @ahc_outb(%struct.ahc_softc* %63, i64 %64, i32 %65)
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %68 = load i64, i64* @SCB_SCSIID, align 8
  %69 = call i32 @ahc_outb(%struct.ahc_softc* %67, i64 %68, i32 255)
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %71 = load i64, i64* @SCB_LUN, align 8
  %72 = call i32 @ahc_outb(%struct.ahc_softc* %70, i64 %71, i32 255)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %14

76:                                               ; preds = %14
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AHC_PAGESCBS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = load i64, i64* @FREE_SCBH, align 8
  %86 = call i32 @ahc_outb(%struct.ahc_softc* %84, i64 %85, i32 0)
  br label %92

87:                                               ; preds = %76
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %89 = load i64, i64* @FREE_SCBH, align 8
  %90 = load i32, i32* @SCB_LIST_NULL, align 4
  %91 = call i32 @ahc_outb(%struct.ahc_softc* %88, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %94 = load i64, i64* @SCBPTR, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @ahc_outb(%struct.ahc_softc* %93, i64 %94, i32 %96)
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %99 = load i64, i64* @SCB_NEXT, align 8
  %100 = load i32, i32* @SCB_LIST_NULL, align 4
  %101 = call i32 @ahc_outb(%struct.ahc_softc* %98, i64 %99, i32 %100)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
