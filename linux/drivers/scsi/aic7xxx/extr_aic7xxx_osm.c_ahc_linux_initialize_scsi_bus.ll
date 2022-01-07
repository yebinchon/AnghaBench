; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_initialize_scsi_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_initialize_scsi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32 }
%struct.ahc_devinfo = type { i32 }
%struct.ahc_initiator_tinfo = type { i32 }
%struct.ahc_tmode_tstate = type { i32 }

@aic7xxx_no_reset = common dso_local global i64 0, align 8
@AHC_RESET_BUS_A = common dso_local global i32 0, align 4
@AHC_RESET_BUS_B = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_TWIN = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHC_NEG_ALWAYS = common dso_local global i32 0, align 4
@AIC7XXX_RESET_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_linux_initialize_scsi_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_linux_initialize_scsi_bus(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ahc_devinfo, align 4
  %7 = alloca %struct.ahc_initiator_tinfo*, align 8
  %8 = alloca %struct.ahc_tmode_tstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = call i32 @ahc_lock(%struct.ahc_softc* %12, i64* %5)
  %14 = load i64, i64* @aic7xxx_no_reset, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @AHC_RESET_BUS_A, align 4
  %18 = load i32, i32* @AHC_RESET_BUS_B, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AHC_RESET_BUS_A, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @ahc_reset_channel(%struct.ahc_softc* %33, i8 signext 65, i32 %34)
  br label %45

36:                                               ; preds = %25
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AHC_WIDE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 16, i32 8
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AHC_TWIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AHC_RESET_BUS_B, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @ahc_reset_channel(%struct.ahc_softc* %60, i8 signext 66, i32 %61)
  br label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 8, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 8
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %45
  br label %72

72:                                               ; preds = %113, %71
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %72
  store i8 65, i8* %11, align 1
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %3, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp sgt i32 %81, 7
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AHC_TWIN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  store i8 66, i8* %11, align 1
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %3, align 4
  %95 = srem i32 %94, 8
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %83, %76
  %97 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %98 = load i8, i8* %11, align 1
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %97, i8 signext %98, i32 %99, i32 %100, %struct.ahc_tmode_tstate** %8)
  store %struct.ahc_initiator_tinfo* %101, %struct.ahc_initiator_tinfo** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %105 = load i8, i8* %11, align 1
  %106 = load i32, i32* @ROLE_INITIATOR, align 4
  %107 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %6, i32 %102, i32 %103, i32 %104, i8 signext %105, i32 %106)
  %108 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %109 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %110 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %7, align 8
  %111 = load i32, i32* @AHC_NEG_ALWAYS, align 4
  %112 = call i32 @ahc_update_neg_request(%struct.ahc_softc* %108, %struct.ahc_devinfo* %6, %struct.ahc_tmode_tstate* %109, %struct.ahc_initiator_tinfo* %110, i32 %111)
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %72

116:                                              ; preds = %72
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %118 = call i32 @ahc_unlock(%struct.ahc_softc* %117, i64* %5)
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %120 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AHC_RESET_BUS_A, align 4
  %123 = load i32, i32* @AHC_RESET_BUS_B, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %129 = call i32 @ahc_linux_freeze_simq(%struct.ahc_softc* %128)
  %130 = load i32, i32* @AIC7XXX_RESET_DELAY, align 4
  %131 = call i32 @msleep(i32 %130)
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %133 = call i32 @ahc_linux_release_simq(%struct.ahc_softc* %132)
  br label %134

134:                                              ; preds = %127, %116
  ret void
}

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @ahc_reset_channel(%struct.ahc_softc*, i8 signext, i32) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i8 signext, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahc_update_neg_request(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_tmode_tstate*, %struct.ahc_initiator_tinfo*, i32) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i64*) #1

declare dso_local i32 @ahc_linux_freeze_simq(%struct.ahc_softc*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ahc_linux_release_simq(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
