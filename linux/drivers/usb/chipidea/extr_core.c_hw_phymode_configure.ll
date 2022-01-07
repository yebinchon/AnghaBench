; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_hw_phymode_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_hw_phymode_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@PTS_UTMI = common dso_local global i32 0, align 4
@PORTSC_PTW = common dso_local global i32 0, align 4
@DEVLC_PTW = common dso_local global i32 0, align 4
@PTS_ULPI = common dso_local global i32 0, align 4
@PTS_SERIAL = common dso_local global i32 0, align 4
@PTS_HSIC = common dso_local global i32 0, align 4
@OP_DEVLC = common dso_local global i32 0, align 4
@DEVLC_STS = common dso_local global i32 0, align 4
@OP_PORTSC = common dso_local global i32 0, align 4
@PORTSC_STS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_phymode_configure(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %7 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %40 [
    i32 129, label %11
    i32 128, label %16
    i32 130, label %25
    i32 131, label %30
    i32 132, label %35
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @PTS_UTMI, align 4
  %13 = call i32 @PORTSC_PTS(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PTS_UTMI, align 4
  %15 = call i32 @DEVLC_PTS(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load i32, i32* @PTS_UTMI, align 4
  %18 = call i32 @PORTSC_PTS(i32 %17)
  %19 = load i32, i32* @PORTSC_PTW, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @PTS_UTMI, align 4
  %22 = call i32 @DEVLC_PTS(i32 %21)
  %23 = load i32, i32* @DEVLC_PTW, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load i32, i32* @PTS_ULPI, align 4
  %27 = call i32 @PORTSC_PTS(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @PTS_ULPI, align 4
  %29 = call i32 @DEVLC_PTS(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %1
  %31 = load i32, i32* @PTS_SERIAL, align 4
  %32 = call i32 @PORTSC_PTS(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @PTS_SERIAL, align 4
  %34 = call i32 @DEVLC_PTS(i32 %33)
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @PTS_HSIC, align 4
  %37 = call i32 @PORTSC_PTS(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PTS_HSIC, align 4
  %39 = call i32 @DEVLC_PTS(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %1
  br label %81

41:                                               ; preds = %35, %30, %25, %16, %11
  %42 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %43 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %49 = load i32, i32* @OP_DEVLC, align 4
  %50 = call i32 @DEVLC_PTS(i32 7)
  %51 = load i32, i32* @DEVLC_PTW, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @hw_write(%struct.ci_hdrc* %48, i32 %49, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %59 = load i32, i32* @OP_DEVLC, align 4
  %60 = load i32, i32* @DEVLC_STS, align 4
  %61 = load i32, i32* @DEVLC_STS, align 4
  %62 = call i32 @hw_write(%struct.ci_hdrc* %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %47
  br label %81

64:                                               ; preds = %41
  %65 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %66 = load i32, i32* @OP_PORTSC, align 4
  %67 = call i32 @PORTSC_PTS(i32 7)
  %68 = load i32, i32* @PORTSC_PTW, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @hw_write(%struct.ci_hdrc* %65, i32 %66, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %76 = load i32, i32* @OP_PORTSC, align 4
  %77 = load i32, i32* @PORTSC_STS, align 4
  %78 = load i32, i32* @PORTSC_STS, align 4
  %79 = call i32 @hw_write(%struct.ci_hdrc* %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %64
  br label %81

81:                                               ; preds = %40, %80, %63
  ret void
}

declare dso_local i32 @PORTSC_PTS(i32) #1

declare dso_local i32 @DEVLC_PTS(i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
