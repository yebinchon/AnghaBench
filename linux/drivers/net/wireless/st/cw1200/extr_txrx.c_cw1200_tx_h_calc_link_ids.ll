; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_calc_link_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_calc_link_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cw1200_txinfo = type { %struct.TYPE_10__, i32, %struct.TYPE_9__*, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@CW1200_LINK_ID_AFTER_DTIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No more link IDs available.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CW1200_LINK_ID_UAPSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.cw1200_txinfo*)* @cw1200_tx_h_calc_link_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_tx_h_calc_link_ids(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.cw1200_txinfo*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %5, align 8
  %6 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %7 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %6, i32 0, i32 2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %12 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %19 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %24 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %27 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %22, i32* %28, align 8
  br label %117

29:                                               ; preds = %10, %2
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %37 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %40 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %116

42:                                               ; preds = %29
  %43 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %44 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @is_multicast_ether_addr(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %50 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %55 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @CW1200_LINK_ID_AFTER_DTIM, align 4
  %58 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %59 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %63 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %66 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %53
  br label %115

69:                                               ; preds = %42
  %70 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %71 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %72 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cw1200_find_link_id(%struct.cw1200_common* %70, i32 %73)
  %75 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %76 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %79 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %69
  %84 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %85 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %86 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @cw1200_alloc_link_id(%struct.cw1200_common* %84, i32 %87)
  %89 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %90 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %69
  %93 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %94 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %92
  %99 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %100 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @wiphy_err(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @ENOENT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %159

107:                                              ; preds = %92
  %108 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %109 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %113 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %107, %68
  br label %116

116:                                              ; preds = %115, %35
  br label %117

117:                                              ; preds = %116, %17
  %118 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %119 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load i32, i32* @jiffies, align 4
  %125 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %126 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %129 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 %124, i32* %135, align 4
  br label %136

136:                                              ; preds = %123, %117
  %137 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %138 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = icmp ne %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  %142 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %143 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %142, i32 0, i32 2
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %148 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @BIT(i32 %149)
  %151 = and i32 %146, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %141
  %154 = load i32, i32* @CW1200_LINK_ID_UAPSD, align 4
  %155 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %156 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 4
  br label %158

158:                                              ; preds = %153, %141, %136
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %98
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @cw1200_find_link_id(%struct.cw1200_common*, i32) #1

declare dso_local i32 @cw1200_alloc_link_id(%struct.cw1200_common*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
