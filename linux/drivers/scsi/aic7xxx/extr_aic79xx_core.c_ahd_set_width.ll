; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_set_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_set_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_devinfo = type { i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }

@AHD_TRANS_ACTIVE = common dso_local global i32 0, align 4
@AHD_TRANS_USER = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s: target %d using %dbit transfers\0A\00", align 1
@AHD_NEG_TO_GOAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_set_width(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca %struct.ahd_devinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahd_initiator_tinfo*, align 8
  %12 = alloca %struct.ahd_tmode_tstate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %6, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %23 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %24 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %27 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %30 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %22, i32 %25, i32 %28, i32 %31, %struct.ahd_tmode_tstate** %12)
  store %struct.ahd_initiator_tinfo* %32, %struct.ahd_initiator_tinfo** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AHD_TRANS_USER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %40 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %5
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %50 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %54 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @AHD_TRANS_CUR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %70 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %73 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %74 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %77 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %80 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %81 = call i32 @ahd_send_async(%struct.ahd_softc* %72, i32 %75, i32 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @bootverbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %65
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %86 = call i32 @ahd_name(%struct.ahd_softc* %85)
  %87 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %88 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 1, %90
  %92 = mul nsw i32 8, %91
  %93 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %84, %65
  br label %95

95:                                               ; preds = %94, %61, %52
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @AHD_TRANS_CUR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %105 = call i32 @ahd_pause(%struct.ahd_softc* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %108 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %109 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %110 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %109, i32 0, i32 0
  %111 = call i32 @ahd_update_neg_table(%struct.ahd_softc* %107, %struct.ahd_devinfo* %108, %struct.TYPE_6__* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %116 = call i32 @ahd_unpause(%struct.ahd_softc* %115)
  br label %117

117:                                              ; preds = %114, %106
  br label %118

118:                                              ; preds = %117, %95
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %120 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %7, align 8
  %121 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %12, align 8
  %122 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %123 = load i32, i32* @AHD_NEG_TO_GOAL, align 4
  %124 = call i64 @ahd_update_neg_request(%struct.ahd_softc* %119, %struct.ahd_devinfo* %120, %struct.ahd_tmode_tstate* %121, %struct.ahd_initiator_tinfo* %122, i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %118
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %136 = call i32 @ahd_update_pending_scbs(%struct.ahd_softc* %135)
  br label %137

137:                                              ; preds = %134, %131, %118
  ret void
}

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_update_neg_table(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.TYPE_6__*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_update_neg_request(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.ahd_tmode_tstate*, %struct.ahd_initiator_tinfo*, i32) #1

declare dso_local i32 @ahd_update_pending_scbs(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
