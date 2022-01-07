; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@LDRV = common dso_local global i32 0, align 4
@INTL = common dso_local global i32 0, align 4
@BIGEND = common dso_local global i32 0, align 4
@PINCFG = common dso_local global i32 0, align 4
@USBE = common dso_local global i32 0, align 4
@SYSCFG0 = common dso_local global i32 0, align 4
@BEMPE = common dso_local global i32 0, align 4
@NRDYE = common dso_local global i32 0, align 4
@BRDYE = common dso_local global i32 0, align 4
@INTENB0 = common dso_local global i32 0, align 4
@SOFCFG = common dso_local global i32 0, align 4
@BRDY0 = common dso_local global i32 0, align 4
@BRDYENB = common dso_local global i32 0, align 4
@BEMP0 = common dso_local global i32 0, align 4
@BEMPENB = common dso_local global i32 0, align 4
@CFIFOSEL = common dso_local global i32 0, align 4
@D0FIFOSEL = common dso_local global i32 0, align 4
@D1FIFOSEL = common dso_local global i32 0, align 4
@TRNENSEL = common dso_local global i32 0, align 4
@SIGNE = common dso_local global i32 0, align 4
@SACKE = common dso_local global i32 0, align 4
@INTENB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597*)* @enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_controller(%struct.r8a66597* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  %9 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %10 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @LDRV, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %6, align 4
  %20 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %21 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @INTL, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  store i32 %28, i32* %7, align 4
  %29 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %30 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @BIGEND, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %8, align 4
  %40 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %41 = call i32 @r8a66597_clock_enable(%struct.r8a66597* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %121

46:                                               ; preds = %38
  %47 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @LDRV, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @PINCFG, align 4
  %52 = call i32 @r8a66597_bset(%struct.r8a66597* %47, i32 %50, i32 %51)
  %53 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %54 = load i32, i32* @USBE, align 4
  %55 = load i32, i32* @SYSCFG0, align 4
  %56 = call i32 @r8a66597_bset(%struct.r8a66597* %53, i32 %54, i32 %55)
  %57 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %58 = load i32, i32* @BEMPE, align 4
  %59 = load i32, i32* @NRDYE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BRDYE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @INTENB0, align 4
  %64 = call i32 @r8a66597_bset(%struct.r8a66597* %57, i32 %62, i32 %63)
  %65 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @INTL, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @SOFCFG, align 4
  %70 = call i32 @r8a66597_bset(%struct.r8a66597* %65, i32 %68, i32 %69)
  %71 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %72 = load i32, i32* @BRDY0, align 4
  %73 = load i32, i32* @BRDYENB, align 4
  %74 = call i32 @r8a66597_bset(%struct.r8a66597* %71, i32 %72, i32 %73)
  %75 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %76 = load i32, i32* @BEMP0, align 4
  %77 = load i32, i32* @BEMPENB, align 4
  %78 = call i32 @r8a66597_bset(%struct.r8a66597* %75, i32 %76, i32 %77)
  %79 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @BIGEND, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @CFIFOSEL, align 4
  %84 = call i32 @r8a66597_bset(%struct.r8a66597* %79, i32 %82, i32 %83)
  %85 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @BIGEND, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @D0FIFOSEL, align 4
  %90 = call i32 @r8a66597_bset(%struct.r8a66597* %85, i32 %88, i32 %89)
  %91 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @BIGEND, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @D1FIFOSEL, align 4
  %96 = call i32 @r8a66597_bset(%struct.r8a66597* %91, i32 %94, i32 %95)
  %97 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %98 = load i32, i32* @TRNENSEL, align 4
  %99 = load i32, i32* @SOFCFG, align 4
  %100 = call i32 @r8a66597_bset(%struct.r8a66597* %97, i32 %98, i32 %99)
  %101 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %102 = load i32, i32* @SIGNE, align 4
  %103 = load i32, i32* @SACKE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @INTENB1, align 4
  %106 = call i32 @r8a66597_bset(%struct.r8a66597* %101, i32 %104, i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %117, %46
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %110 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @r8a66597_enable_port(%struct.r8a66597* %114, i32 %115)
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %107

120:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %44
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @r8a66597_clock_enable(%struct.r8a66597*) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_enable_port(%struct.r8a66597*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
