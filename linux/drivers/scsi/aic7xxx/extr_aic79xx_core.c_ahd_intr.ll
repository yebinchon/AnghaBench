; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i64, i32, {}*, i32, i32* }

@INTEN = common dso_local global i32 0, align 4
@AHD_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CMDCMPLT = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@INT_PEND = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRCMDINT = common dso_local global i32 0, align 4
@AHD_INTCOLLISION_BUG = common dso_local global i32 0, align 4
@SEQINTCODE = common dso_local global i32 0, align 4
@NO_SEQINT = common dso_local global i64 0, align 8
@SEQINT = common dso_local global i32 0, align 4
@AHD_REMOVABLE = common dso_local global i32 0, align 4
@HWERRINT = common dso_local global i32 0, align 4
@PCIINT = common dso_local global i32 0, align 4
@SPLTINT = common dso_local global i32 0, align 4
@SCSIINT = common dso_local global i32 0, align 4
@AHD_TARGETROLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_intr(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @INTEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %142

12:                                               ; preds = %1
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AHD_ALL_INTERRUPTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %21 = call i64 @ahd_check_cmdcmpltqueues(%struct.ahd_softc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @CMDCMPLT, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %19, %12
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %27 = load i32, i32* @INTSTAT, align 4
  %28 = call i64 @ahd_inb(%struct.ahd_softc* %26, i32 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @INT_PEND, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %142

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CMDCMPLT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %43 = load i32, i32* @CLRINT, align 4
  %44 = load i32, i32* @CLRCMDINT, align 4
  %45 = call i32 @ahd_outb(%struct.ahd_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AHD_INTCOLLISION_BUG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %41
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %54 = call i64 @ahd_is_paused(%struct.ahd_softc* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %58 = load i32, i32* @SEQINTCODE, align 4
  %59 = call i64 @ahd_inb(%struct.ahd_softc* %57, i32 %58)
  %60 = load i64, i64* @NO_SEQINT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @SEQINT, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %52
  br label %71

68:                                               ; preds = %41
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %70 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %69)
  br label %71

71:                                               ; preds = %68, %67
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %73 = call i32 @ahd_run_qoutfifo(%struct.ahd_softc* %72)
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %71, %36
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 255
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AHD_REMOVABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %141

98:                                               ; preds = %90, %87
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @HWERRINT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %105 = call i32 @ahd_handle_hwerrint(%struct.ahd_softc* %104)
  br label %140

106:                                              ; preds = %98
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @PCIINT, align 4
  %109 = load i32, i32* @SPLTINT, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %114, i32 0, i32 5
  %116 = bitcast {}** %115 to i32 (%struct.ahd_softc*)**
  %117 = load i32 (%struct.ahd_softc*)*, i32 (%struct.ahd_softc*)** %116, align 8
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %119 = call i32 %117(%struct.ahd_softc* %118)
  br label %139

120:                                              ; preds = %106
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @SEQINT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @ahd_handle_seqint(%struct.ahd_softc* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @SCSIINT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @ahd_handle_scsiint(%struct.ahd_softc* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %113
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140, %97
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %35, %11
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i64 @ahd_check_cmdcmpltqueues(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_flush_device_writes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_run_qoutfifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_hwerrint(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_seqint(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_handle_scsiint(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
