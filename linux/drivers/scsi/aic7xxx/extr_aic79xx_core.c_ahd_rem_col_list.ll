; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_rem_col_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_rem_col_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ahd_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.scb_tailq, %struct.scb_list* }
%struct.scb_tailq = type { i32 }
%struct.scb_list = type { i32 }
%struct.scb = type { i32 }

@SCB_ON_COL_LIST = common dso_local global i32 0, align 4
@collision_links = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_rem_col_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_rem_col_list(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.scb_list*, align 8
  %6 = alloca %struct.scb_tailq*, align 8
  %7 = alloca %struct.scb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %10 = load i32, i32* @SCB_ON_COL_LIST, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.scb*, %struct.scb** %4, align 8
  %13 = getelementptr inbounds %struct.scb, %struct.scb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %17 = load %struct.scb*, %struct.scb** %4, align 8
  %18 = call i64 @AHD_GET_SCB_COL_IDX(%struct.ahd_softc* %16, %struct.scb* %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.scb_list*, %struct.scb_list** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.scb_list, %struct.scb_list* %22, i64 %23
  store %struct.scb_list* %24, %struct.scb_list** %5, align 8
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.scb_tailq* %27, %struct.scb_tailq** %6, align 8
  %28 = load %struct.scb_list*, %struct.scb_list** %5, align 8
  %29 = call %struct.scb* @LIST_FIRST(%struct.scb_list* %28)
  store %struct.scb* %29, %struct.scb** %7, align 8
  %30 = load %struct.scb*, %struct.scb** %7, align 8
  %31 = load %struct.scb*, %struct.scb** %4, align 8
  %32 = icmp eq %struct.scb* %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %2
  %34 = load %struct.scb*, %struct.scb** %4, align 8
  %35 = load i32, i32* @collision_links, align 4
  %36 = call %struct.scb* @LIST_NEXT(%struct.scb* %34, i32 %35)
  store %struct.scb* %36, %struct.scb** %9, align 8
  %37 = load %struct.scb*, %struct.scb** %9, align 8
  %38 = icmp ne %struct.scb* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.scb_tailq*, %struct.scb_tailq** %6, align 8
  %41 = load %struct.scb*, %struct.scb** %4, align 8
  %42 = load %struct.scb*, %struct.scb** %9, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @links, i32 0, i32 0), align 4
  %44 = call i32 @TAILQ_INSERT_AFTER(%struct.scb_tailq* %40, %struct.scb* %41, %struct.scb* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.scb_tailq*, %struct.scb_tailq** %6, align 8
  %47 = load %struct.scb*, %struct.scb** %4, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @links, i32 0, i32 0), align 4
  %49 = call i32 @TAILQ_REMOVE(%struct.scb_tailq* %46, %struct.scb* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %2
  %51 = load %struct.scb*, %struct.scb** %4, align 8
  %52 = load i32, i32* @collision_links, align 4
  %53 = call i32 @LIST_REMOVE(%struct.scb* %51, i32 %52)
  ret void
}

declare dso_local i64 @AHD_GET_SCB_COL_IDX(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local %struct.scb* @LIST_FIRST(%struct.scb_list*) #1

declare dso_local %struct.scb* @LIST_NEXT(%struct.scb*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(%struct.scb_tailq*, %struct.scb*, %struct.scb*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.scb_tailq*, %struct.scb*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
