; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_hw_write_otgsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_hw_write_otgsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ci_hdrc_cable, %struct.ci_hdrc_cable }
%struct.ci_hdrc_cable = type { i32, i32, i32 }

@OTGSC_BSVIS = common dso_local global i32 0, align 4
@OTGSC_BSVIE = common dso_local global i32 0, align 4
@OTGSC_IDIS = common dso_local global i32 0, align 4
@OTGSC_IDIE = common dso_local global i32 0, align 4
@OP_OTGSC = common dso_local global i32 0, align 4
@OTGSC_INT_STATUS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_write_otgsc(%struct.ci_hdrc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ci_hdrc_cable*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %9 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.ci_hdrc_cable* %11, %struct.ci_hdrc_cable** %7, align 8
  %12 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IS_ERR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %19 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @OTGSC_BSVIS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @OTGSC_BSVIE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %41 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @OTGSC_BSVIE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @OTGSC_BSVIE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %53 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %17
  %57 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %58 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.ci_hdrc_cable* %60, %struct.ci_hdrc_cable** %7, align 8
  %61 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %62 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IS_ERR(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %68 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %66, %56
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @OTGSC_IDIS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %80 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @OTGSC_IDIE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %90 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* @OTGSC_IDIE, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %104

95:                                               ; preds = %81
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @OTGSC_IDIE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %102 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %88
  br label %105

105:                                              ; preds = %104, %66
  %106 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %107 = load i32, i32* @OP_OTGSC, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @OTGSC_INT_STATUS_BITS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @hw_write(%struct.ci_hdrc* %106, i32 %107, i32 %110, i32 %111)
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
