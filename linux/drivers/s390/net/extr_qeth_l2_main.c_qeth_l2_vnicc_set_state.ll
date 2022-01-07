; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"vniccsch\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_VNICC_ENABLE = common dso_local global i32 0, align 4
@IPA_VNICC_DISABLE = common dso_local global i32 0, align 4
@QETH_VNICC_RX_BCAST = common dso_local global i32 0, align 4
@QETH_VNICC_LEARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l2_vnicc_set_state(%struct.qeth_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %11 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %10, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = call i64 @qeth_bridgeport_is_in_use(%struct.qeth_card* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %148

18:                                               ; preds = %3
  %19 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27, %18
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %148

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* @IPA_VNICC_ENABLE, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %61

51:                                               ; preds = %39
  %52 = load i32, i32* @IPA_VNICC_DISABLE, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %51, %42
  %62 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %66, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %148

75:                                               ; preds = %61
  %76 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %77 = call i32 @qeth_card_hw_is_reachable(%struct.qeth_card* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %99

90:                                               ; preds = %79
  %91 = load i32, i32* %6, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %94 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %90, %82
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %148

101:                                              ; preds = %75
  %102 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @qeth_l2_vnicc_set_char(%struct.qeth_card* %102, i32 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %110 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %115 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 4
  br label %146

118:                                              ; preds = %101
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @QETH_VNICC_RX_BCAST, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %127 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %121, %118
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @QETH_VNICC_LEARNING, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %141 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  %144 = call i32 @qeth_l2_vnicc_recover_timeout(%struct.qeth_card* %138, i32 %139, i32* %143)
  br label %145

145:                                              ; preds = %137, %133, %130
  br label %146

146:                                              ; preds = %145, %108
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %99, %73, %36, %15
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @qeth_bridgeport_is_in_use(%struct.qeth_card*) #1

declare dso_local i32 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_vnicc_set_char(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_l2_vnicc_recover_timeout(%struct.qeth_card*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
