; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_init_hwconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_init_hwconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i64, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], 2Ant Init HW Config!!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_INTF_USB = common dso_local global i64 0, align 8
@FORCE_EXEC = common dso_local global i32 0, align 4
@BIT9 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8192e2ant_init_hwconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_init_hwconfig(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = load i32, i32* @COMP_BT_COEXIST, align 4
  %13 = load i32, i32* @DBG_LOUD, align 4
  %14 = call i32 @RT_TRACE(%struct.rtl_priv* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %2
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 7
  %20 = load i32 (%struct.btc_coexist*, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = load i32, i32* @BTC_RF_A, align 4
  %23 = call i32 %20(%struct.btc_coexist* %21, i32 %22, i32 30, i32 1048575)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 6
  %28 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %27, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %30 = call i32 %28(%struct.btc_coexist* %29, i32 1072)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 6
  %35 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %34, align 8
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = call i32 %35(%struct.btc_coexist* %36, i32 1076)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %41 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %40, i32 0, i32 4
  %42 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %41, align 8
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %44 = call i32 %42(%struct.btc_coexist* %43, i32 1066)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %47, i32 0, i32 0
  %49 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %48, align 8
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %51 = call i32 %49(%struct.btc_coexist* %50, i32 1110)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %17, %2
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 2
  %57 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %56, align 8
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = call i32 %57(%struct.btc_coexist* %58, i32 79, i32 6)
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 2
  %62 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %61, align 8
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = call i32 %62(%struct.btc_coexist* %63, i32 2372, i32 36)
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %65, i32 0, i32 5
  %67 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %66, align 8
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = call i32 %67(%struct.btc_coexist* %68, i32 2352, i32 7341824)
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 2
  %72 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %74 = call i32 %72(%struct.btc_coexist* %73, i32 2348, i32 32)
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %76 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BTC_INTF_USB, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %54
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %81, i32 0, i32 5
  %83 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %82, align 8
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = call i32 %83(%struct.btc_coexist* %84, i32 100, i32 809697284)
  br label %92

86:                                               ; preds = %54
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 5
  %89 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = call i32 %89(%struct.btc_coexist* %90, i32 100, i32 805502980)
  br label %92

92:                                               ; preds = %86, %80
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %94 = load i32, i32* @FORCE_EXEC, align 4
  %95 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %93, i32 %94, i32 0)
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %97 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %96, i32 0, i32 5
  %98 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %97, align 8
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %100 = call i32 %98(%struct.btc_coexist* %99, i32 2136, i32 1431655765)
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %102 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %101, i32 0, i32 2
  %103 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %102, align 8
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %105 = call i32 %103(%struct.btc_coexist* %104, i32 1912, i32 3)
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %107 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %106, i32 0, i32 0
  %108 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %107, align 8
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %110 = call i32 %108(%struct.btc_coexist* %109, i32 1936)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 192
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, 5
  store i32 %114, i32* %7, align 4
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %115, i32 0, i32 2
  %117 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %116, align 8
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 %117(%struct.btc_coexist* %118, i32 1936, i32 %119)
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %122 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %121, i32 0, i32 2
  %123 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %122, align 8
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %125 = call i32 %123(%struct.btc_coexist* %124, i32 1902, i32 4)
  %126 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %127 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %126, i32 0, i32 2
  %128 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %127, align 8
  %129 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %130 = call i32 %128(%struct.btc_coexist* %129, i32 64, i32 32)
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %131, i32 0, i32 4
  %133 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %132, align 8
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = call i32 %133(%struct.btc_coexist* %134, i32 64)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* @BIT9, align 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  %139 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %140 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %139, i32 0, i32 3
  %141 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %140, align 8
  %142 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 %141(%struct.btc_coexist* %142, i32 64, i32 %143)
  %145 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %146 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %145, i32 0, i32 0
  %147 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %146, align 8
  %148 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %149 = call i32 %147(%struct.btc_coexist* %148, i32 257)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @BIT4, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %154 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %153, i32 0, i32 2
  %155 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %154, align 8
  %156 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 %155(%struct.btc_coexist* %156, i32 257, i32 %157)
  %159 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %160 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %159, i32 0, i32 0
  %161 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %160, align 8
  %162 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %163 = call i32 %161(%struct.btc_coexist* %162, i32 147)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* @BIT0, align 4
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %168 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %167, i32 0, i32 2
  %169 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %168, align 8
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 %169(%struct.btc_coexist* %170, i32 147, i32 %171)
  %173 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %174 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %173, i32 0, i32 0
  %175 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %174, align 8
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %177 = call i32 %175(%struct.btc_coexist* %176, i32 7)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* @BIT0, align 4
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %182 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %181, i32 0, i32 2
  %183 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %182, align 8
  %184 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 %183(%struct.btc_coexist* %184, i32 7, i32 %185)
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
