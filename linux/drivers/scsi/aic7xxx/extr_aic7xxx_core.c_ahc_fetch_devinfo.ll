; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fetch_devinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fetch_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32 }

@SSTAT0 = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i64 0, align 8
@ROLE_INITIATOR = common dso_local global i64 0, align 8
@AHC_MULTI_TID = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@CMDPHASE_PENDING = common dso_local global i32 0, align 4
@TARG_CMD_PENDING = common dso_local global i32 0, align 4
@NO_DISCONNECT = common dso_local global i32 0, align 4
@TARGIDIN = common dso_local global i32 0, align 4
@OID = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SCSIID_ULTRA2 = common dso_local global i32 0, align 4
@SCSIID = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*)* @ahc_fetch_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_fetch_devinfo(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = load i32, i32* @SSTAT0, align 4
  %10 = call i32 @ahc_inb(%struct.ahc_softc* %8, i32 %9)
  %11 = load i32, i32* @TARGET, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @ROLE_TARGET, align 8
  store i64 %15, i64* %6, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @ROLE_INITIATOR, align 8
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @ROLE_TARGET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AHC_MULTI_TID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %31 = load i32, i32* @SEQ_FLAGS, align 4
  %32 = call i32 @ahc_inb(%struct.ahc_softc* %30, i32 %31)
  %33 = load i32, i32* @CMDPHASE_PENDING, align 4
  %34 = load i32, i32* @TARG_CMD_PENDING, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NO_DISCONNECT, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %42 = load i32, i32* @TARGIDIN, align 4
  %43 = call i32 @ahc_inb(%struct.ahc_softc* %41, i32 %42)
  %44 = load i32, i32* @OID, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %66

46:                                               ; preds = %29, %22, %18
  %47 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AHC_ULTRA2, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %55 = load i32, i32* @SCSIID_ULTRA2, align 4
  %56 = call i32 @ahc_inb(%struct.ahc_softc* %54, i32 %55)
  %57 = load i32, i32* @OID, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %7, align 4
  br label %65

59:                                               ; preds = %46
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %61 = load i32, i32* @SCSIID, align 4
  %62 = call i32 @ahc_inb(%struct.ahc_softc* %60, i32 %61)
  %63 = load i32, i32* @OID, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %68 = load i32, i32* @SAVED_SCSIID, align 4
  %69 = call i32 @ahc_inb(%struct.ahc_softc* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @SCSIID_TARGET(%struct.ahc_softc* %72, i32 %73)
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %76 = load i32, i32* @SAVED_LUN, align 4
  %77 = call i32 @ahc_inb(%struct.ahc_softc* %75, i32 %76)
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @SCSIID_CHANNEL(%struct.ahc_softc* %78, i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %70, i32 %71, i32 %74, i32 %77, i32 %80, i64 %81)
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @SCSIID_TARGET(%struct.ahc_softc*, i32) #1

declare dso_local i32 @SCSIID_CHANNEL(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
