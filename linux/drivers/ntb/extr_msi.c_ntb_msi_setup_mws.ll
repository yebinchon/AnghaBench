; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_setup_mws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_setup_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.msi_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@SZ_32K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_msi_setup_mws(%struct.ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca %struct.msi_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %3, align 8
  %15 = load i32, i32* @SZ_32K, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %155

24:                                               ; preds = %1
  %25 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %26 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call %struct.msi_desc* @first_msi_entry(i32* %28)
  store %struct.msi_desc* %29, %struct.msi_desc** %4, align 8
  %30 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %31 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %35 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 32
  %40 = add nsw i32 %33, %39
  store i32 %40, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %69, %24
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %44 = call i32 @ntb_peer_port_count(%struct.ntb_dev* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ntb_peer_highest_mw_idx(%struct.ntb_dev* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %155

54:                                               ; preds = %46
  %55 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ntb_mw_get_align(%struct.ntb_dev* %55, i32 %56, i32 %57, i32* %8, i32* null, i32* null)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %2, align 4
  br label %155

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %41

72:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %117, %72
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %76 = call i32 @ntb_peer_port_count(%struct.ntb_dev* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %120

78:                                               ; preds = %73
  %79 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ntb_peer_highest_mw_idx(%struct.ntb_dev* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %14, align 4
  br label %133

86:                                               ; preds = %78
  %87 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ntb_mw_get_align(%struct.ntb_dev* %87, i32 %88, i32 %89, i32* null, i32* %9, i32* %10)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %133

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @round_up(i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @max(i32 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %94
  %107 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @ntb_mw_set_trans(%struct.ntb_dev* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %133

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %73

120:                                              ; preds = %73
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %123 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %130 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  store i32 0, i32* %2, align 4
  br label %155

133:                                              ; preds = %115, %93, %84
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %150, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %134
  %139 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @ntb_peer_highest_mw_idx(%struct.ntb_dev* %139, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %150

145:                                              ; preds = %138
  %146 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @ntb_mw_clear_trans(%struct.ntb_dev* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %144
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %134

153:                                              ; preds = %134
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %120, %61, %52, %21
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.msi_desc* @first_msi_entry(i32*) #1

declare dso_local i32 @ntb_peer_port_count(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_peer_highest_mw_idx(%struct.ntb_dev*, i32) #1

declare dso_local i32 @ntb_mw_get_align(%struct.ntb_dev*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ntb_mw_set_trans(%struct.ntb_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ntb_mw_clear_trans(%struct.ntb_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
