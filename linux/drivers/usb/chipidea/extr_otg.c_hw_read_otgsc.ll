; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_hw_read_otgsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_hw_read_otgsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ci_hdrc_cable, %struct.ci_hdrc_cable }
%struct.ci_hdrc_cable = type { i64, i64, i64, i32 }

@OP_OTGSC = common dso_local global i32 0, align 4
@OTGSC_BSVIS = common dso_local global i32 0, align 4
@OTGSC_BSV = common dso_local global i32 0, align 4
@OTGSC_BSVIE = common dso_local global i32 0, align 4
@OTGSC_IDIS = common dso_local global i32 0, align 4
@OTGSC_ID = common dso_local global i32 0, align 4
@OTGSC_IDIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_read_otgsc(%struct.ci_hdrc* %0, i32 %1) #0 {
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ci_hdrc_cable*, align 8
  %6 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %8 = load i32, i32* @OP_OTGSC, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @hw_read(%struct.ci_hdrc* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.ci_hdrc_cable* %14, %struct.ci_hdrc_cable** %5, align 8
  %15 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IS_ERR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %20, %2
  %26 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @OTGSC_BSVIS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @OTGSC_BSVIS, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %41 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @OTGSC_BSV, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @OTGSC_BSV, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %55 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @OTGSC_BSVIE, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %53
  %63 = load i32, i32* @OTGSC_BSVIE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %20
  %69 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %70 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.ci_hdrc_cable* %72, %struct.ci_hdrc_cable** %5, align 8
  %73 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %74 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @IS_ERR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %80 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %78, %68
  %84 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @OTGSC_IDIS, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %97

92:                                               ; preds = %83
  %93 = load i32, i32* @OTGSC_IDIS, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %99 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @OTGSC_ID, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %97
  %108 = load i32, i32* @OTGSC_ID, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %113 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @OTGSC_IDIE, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %125

120:                                              ; preds = %111
  %121 = load i32, i32* @OTGSC_IDIE, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %120, %116
  br label %126

126:                                              ; preds = %125, %78
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %127, %128
  ret i32 %129
}

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
