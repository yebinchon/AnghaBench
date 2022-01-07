; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_chip_info*, %struct.rtw_coex }
%struct.rtw_efuse = type { i64 }
%struct.rtw_chip_info = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.rtw_coex = type { %struct.rtw_coex_dm }
%struct.rtw_coex_dm = type { i32, i32 }

@TDMA_4SLOT = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@BIT_EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@COEX_SCBD_TDMA = common dso_local global i32 0, align 4
@RTW_DBG_COEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"coex: coex tdma type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32)* @rtw_coex_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_tdma(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_coex*, align 8
  %8 = alloca %struct.rtw_coex_dm*, align 8
  %9 = alloca %struct.rtw_chip_info*, align 8
  %10 = alloca %struct.rtw_efuse*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 2
  store %struct.rtw_coex* %15, %struct.rtw_coex** %7, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 0
  store %struct.rtw_coex_dm* %17, %struct.rtw_coex_dm** %8, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %19, align 8
  store %struct.rtw_chip_info* %20, %struct.rtw_chip_info** %9, align 8
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 0
  store %struct.rtw_efuse* %22, %struct.rtw_efuse** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TDMA_4SLOT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %29 = call i32 @rtw_coex_tdma_timer_base(%struct.rtw_dev* %28, i32 3)
  br label %33

30:                                               ; preds = %3
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %32 = call i32 @rtw_coex_tdma_timer_base(%struct.rtw_dev* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 100
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ true, %33 ], [ %40, %38 ]
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %8, align 8
  %50 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %8, align 8
  %56 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %214

60:                                               ; preds = %53, %47
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %66 = load i32, i32* @REG_BCN_CTRL, align 4
  %67 = load i32, i32* @BIT_EN_BCN_FUNCTION, align 4
  %68 = call i32 @rtw_write8_set(%struct.rtw_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %70 = load i32, i32* @COEX_SCBD_TDMA, align 4
  %71 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %69, i32 %70, i32 1)
  br label %76

72:                                               ; preds = %61
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %74 = load i32, i32* @COEX_SCBD_TDMA, align 4
  %75 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.rtw_efuse*, %struct.rtw_efuse** %10, align 8
  %78 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %141

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %84 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %140

87:                                               ; preds = %81
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %89 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %90 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %89, i32 0, i32 3
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %100 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %110 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %120 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %130 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %129, i32 0, i32 3
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rtw_coex_set_tdma(%struct.rtw_dev* %88, i32 %98, i32 %108, i32 %118, i32 %128, i32 %138)
  br label %140

140:                                              ; preds = %87, %81
  br label %203

141:                                              ; preds = %76
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, 100
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %146 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %202

149:                                              ; preds = %141
  %150 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %151 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %152 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %162 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %172 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %182 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %192 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @rtw_coex_set_tdma(%struct.rtw_dev* %150, i32 %160, i32 %170, i32 %180, i32 %190, i32 %200)
  br label %202

202:                                              ; preds = %149, %141
  br label %203

203:                                              ; preds = %202, %140
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %8, align 8
  %206 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %8, align 8
  %209 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %211 = load i32, i32* @RTW_DBG_COEX, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @rtw_dbg(%struct.rtw_dev* %210, i32 %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %203, %59
  ret void
}

declare dso_local i32 @rtw_coex_tdma_timer_base(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_tdma(%struct.rtw_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
