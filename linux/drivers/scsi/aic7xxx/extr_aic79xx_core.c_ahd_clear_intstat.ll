; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_clear_intstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_clear_intstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_UNKNOWN_MSK = common dso_local global i32 0, align 4
@AHD_MODE_CFG_MSK = common dso_local global i32 0, align 4
@CLRLQIINT0 = common dso_local global i32 0, align 4
@CLRLQIATNQAS = common dso_local global i32 0, align 4
@CLRLQICRCT1 = common dso_local global i32 0, align 4
@CLRLQICRCT2 = common dso_local global i32 0, align 4
@CLRLQIBADLQT = common dso_local global i32 0, align 4
@CLRLQIATNLQ = common dso_local global i32 0, align 4
@CLRLQIATNCMD = common dso_local global i32 0, align 4
@CLRLQIINT1 = common dso_local global i32 0, align 4
@CLRLQIPHASE_LQ = common dso_local global i32 0, align 4
@CLRLQIPHASE_NLQ = common dso_local global i32 0, align 4
@CLRLIQABORT = common dso_local global i32 0, align 4
@CLRLQICRCI_LQ = common dso_local global i32 0, align 4
@CLRLQICRCI_NLQ = common dso_local global i32 0, align 4
@CLRLQIBADLQI = common dso_local global i32 0, align 4
@CLRLQIOVERI_LQ = common dso_local global i32 0, align 4
@CLRLQIOVERI_NLQ = common dso_local global i32 0, align 4
@CLRNONPACKREQ = common dso_local global i32 0, align 4
@CLRLQOINT0 = common dso_local global i32 0, align 4
@CLRLQOTARGSCBPERR = common dso_local global i32 0, align 4
@CLRLQOSTOPT2 = common dso_local global i32 0, align 4
@CLRLQOATNLQ = common dso_local global i32 0, align 4
@CLRLQOATNPKT = common dso_local global i32 0, align 4
@CLRLQOTCRC = common dso_local global i32 0, align 4
@CLRLQOINT1 = common dso_local global i32 0, align 4
@CLRLQOINITSCBPERR = common dso_local global i32 0, align 4
@CLRLQOSTOPI2 = common dso_local global i32 0, align 4
@CLRLQOBADQAS = common dso_local global i32 0, align 4
@CLRLQOBUSFREE = common dso_local global i32 0, align 4
@CLRLQOPHACHGINPKT = common dso_local global i32 0, align 4
@AHD_CLRLQO_AUTOCLR_BUG = common dso_local global i32 0, align 4
@CLRSINT3 = common dso_local global i32 0, align 4
@CLRNTRAMPERR = common dso_local global i32 0, align 4
@CLROSRAMPERR = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSELTIMEO = common dso_local global i32 0, align 4
@CLRATNO = common dso_local global i32 0, align 4
@CLRSCSIRSTI = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@CLRREQINIT = common dso_local global i32 0, align 4
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRSELDO = common dso_local global i32 0, align 4
@CLRSELDI = common dso_local global i32 0, align 4
@CLRSELINGO = common dso_local global i32 0, align 4
@CLRIOERR = common dso_local global i32 0, align 4
@CLROVERRUN = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_clear_intstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_clear_intstat(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %3 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %4 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %5 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %9 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %3, i32 %7, i32 %11)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = load i32, i32* @CLRLQIINT0, align 4
  %15 = load i32, i32* @CLRLQIATNQAS, align 4
  %16 = load i32, i32* @CLRLQICRCT1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CLRLQICRCT2, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CLRLQIBADLQT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CLRLQIATNLQ, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CLRLQIATNCMD, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ahd_outb(%struct.ahd_softc* %13, i32 %14, i32 %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = load i32, i32* @CLRLQIINT1, align 4
  %29 = load i32, i32* @CLRLQIPHASE_LQ, align 4
  %30 = load i32, i32* @CLRLQIPHASE_NLQ, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CLRLIQABORT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CLRLQICRCI_LQ, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CLRLQICRCI_NLQ, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CLRLQIBADLQI, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CLRLQIOVERI_LQ, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CLRLQIOVERI_NLQ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CLRNONPACKREQ, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ahd_outb(%struct.ahd_softc* %27, i32 %28, i32 %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = load i32, i32* @CLRLQOINT0, align 4
  %49 = load i32, i32* @CLRLQOTARGSCBPERR, align 4
  %50 = load i32, i32* @CLRLQOSTOPT2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CLRLQOATNLQ, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CLRLQOATNPKT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CLRLQOTCRC, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ahd_outb(%struct.ahd_softc* %47, i32 %48, i32 %57)
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %60 = load i32, i32* @CLRLQOINT1, align 4
  %61 = load i32, i32* @CLRLQOINITSCBPERR, align 4
  %62 = load i32, i32* @CLRLQOSTOPI2, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CLRLQOBADQAS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CLRLQOBUSFREE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CLRLQOPHACHGINPKT, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ahd_outb(%struct.ahd_softc* %59, i32 %60, i32 %69)
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AHD_CLRLQO_AUTOCLR_BUG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %1
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %79 = load i32, i32* @CLRLQOINT0, align 4
  %80 = call i32 @ahd_outb(%struct.ahd_softc* %78, i32 %79, i32 0)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %82 = load i32, i32* @CLRLQOINT1, align 4
  %83 = call i32 @ahd_outb(%struct.ahd_softc* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %77, %1
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %86 = load i32, i32* @CLRSINT3, align 4
  %87 = load i32, i32* @CLRNTRAMPERR, align 4
  %88 = load i32, i32* @CLROSRAMPERR, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @ahd_outb(%struct.ahd_softc* %85, i32 %86, i32 %89)
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %92 = load i32, i32* @CLRSINT1, align 4
  %93 = load i32, i32* @CLRSELTIMEO, align 4
  %94 = load i32, i32* @CLRATNO, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @CLRSCSIRSTI, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @CLRBUSFREE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CLRSCSIPERR, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @CLRREQINIT, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @ahd_outb(%struct.ahd_softc* %91, i32 %92, i32 %103)
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %106 = load i32, i32* @CLRSINT0, align 4
  %107 = load i32, i32* @CLRSELDO, align 4
  %108 = load i32, i32* @CLRSELDI, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @CLRSELINGO, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @CLRIOERR, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @CLROVERRUN, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @ahd_outb(%struct.ahd_softc* %105, i32 %106, i32 %115)
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %118 = load i32, i32* @CLRINT, align 4
  %119 = load i32, i32* @CLRSCSIINT, align 4
  %120 = call i32 @ahd_outb(%struct.ahd_softc* %117, i32 %118, i32 %119)
  ret void
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
