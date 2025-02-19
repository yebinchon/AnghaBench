; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_match_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_match_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ALL_CHANNELS = common dso_local global i8 0, align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@ROLE_INITIATOR = common dso_local global i64 0, align 8
@ROLE_TARGET = common dso_local global i64 0, align 8
@XPT_FC_GROUP_TMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, %struct.scb*, i32, i8, i32, i64, i64)* @ahd_match_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_match_scb(%struct.ahd_softc* %0, %struct.scb* %1, i32 %2, i8 signext %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.ahd_softc*, align 8
  %9 = alloca %struct.scb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %8, align 8
  store %struct.scb* %1, %struct.scb** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %20 = load %struct.scb*, %struct.scb** %9, align 8
  %21 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %19, %struct.scb* %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %23 = load %struct.scb*, %struct.scb** %9, align 8
  %24 = call signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc* %22, %struct.scb* %23)
  store i8 %24, i8* %16, align 1
  %25 = load %struct.scb*, %struct.scb** %9, align 8
  %26 = call i32 @SCB_GET_LUN(%struct.scb* %25)
  store i32 %26, i32* %17, align 4
  %27 = load i8, i8* %16, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %7
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @ALL_CHANNELS, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br label %38

38:                                               ; preds = %32, %7
  %39 = phi i1 [ true, %7 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ true, %43 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ true, %57 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.scb*, %struct.scb** %9, align 8
  %74 = call i64 @SCB_GET_TAG(%struct.scb* %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @SCB_LIST_NULL, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i1 [ true, %71 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %80, %68
  %84 = load i32, i32* %18, align 4
  ret i32 %84
}

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i64 @SCB_GET_TAG(%struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
