; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_run_qoutfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_run_qoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i32, %struct.ahd_completion* }
%struct.ahd_completion = type { i32, i32, i32 }
%struct.scb = type { i32 }

@AHD_RUNNING_QOUTFIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ahd_run_qoutfifo recursion\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: WARNING no command for scb %d (cmdcmplt)\0AQOUTPOS = %d\0A\00", align 1
@SG_STATUS_VALID = common dso_local global i32 0, align 4
@AHD_QOUT_SIZE = common dso_local global i32 0, align 4
@QOUTFIFO_ENTRY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_run_qoutfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_run_qoutfifo(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.ahd_completion*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @AHD_RUNNING_QOUTFIFO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @AHD_RUNNING_QOUTFIFO, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %22 = call i32 @ahd_sync_qoutfifo(%struct.ahd_softc* %20, i32 %21)
  br label %23

23:                                               ; preds = %96, %14
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %24, i32 0, i32 3
  %26 = load %struct.ahd_completion*, %struct.ahd_completion** %25, align 8
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %26, i64 %29
  store %struct.ahd_completion* %30, %struct.ahd_completion** %3, align 8
  %31 = load %struct.ahd_completion*, %struct.ahd_completion** %3, align 8
  %32 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %97

39:                                               ; preds = %23
  %40 = load %struct.ahd_completion*, %struct.ahd_completion** %3, align 8
  %41 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ahd_le16toh(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %44, i32 %45)
  store %struct.scb* %46, %struct.scb** %4, align 8
  %47 = load %struct.scb*, %struct.scb** %4, align 8
  %48 = icmp eq %struct.scb* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %51 = call i32 @ahd_name(%struct.ahd_softc* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i64 %55)
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %58 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %57)
  br label %75

59:                                               ; preds = %39
  %60 = load %struct.ahd_completion*, %struct.ahd_completion** %3, align 8
  %61 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SG_STATUS_VALID, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %68 = load %struct.scb*, %struct.scb** %4, align 8
  %69 = call i32 @ahd_handle_scb_status(%struct.ahd_softc* %67, %struct.scb* %68)
  br label %74

70:                                               ; preds = %59
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %72 = load %struct.scb*, %struct.scb** %4, align 8
  %73 = call i32 @ahd_done(%struct.ahd_softc* %71, %struct.scb* %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %49
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  %80 = load i32, i32* @AHD_QOUT_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = and i64 %79, %82
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = load i32, i32* @QOUTFIFO_ENTRY_VALID, align 4
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = xor i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %75
  br label %23

97:                                               ; preds = %38
  %98 = load i32, i32* @AHD_RUNNING_QOUTFIFO, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_sync_qoutfifo(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_le16toh(i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i64) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_scb_status(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_done(%struct.ahd_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
