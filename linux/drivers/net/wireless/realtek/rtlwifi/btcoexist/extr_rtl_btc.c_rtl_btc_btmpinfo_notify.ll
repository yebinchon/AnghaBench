; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_btmpinfo_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_btmpinfo_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.btc_coexist = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8* }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"btmpinfo complete req_num=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_btc_btmpinfo_notify(%struct.rtl_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = call %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv* %13)
  store %struct.btc_coexist* %14, %struct.btc_coexist** %7, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %16 = icmp ne %struct.btc_coexist* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %164

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18
  br label %164

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %164

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32* %38, i32** %12, align 8
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %155 [
    i32 128, label %40
    i32 136, label %60
    i32 135, label %67
    i32 137, label %74
    i32 131, label %81
    i32 130, label %93
    i32 134, label %105
    i32 133, label %112
    i32 132, label %134
    i32 129, label %141
    i32 138, label %148
  ]

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %58 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  br label %155

60:                                               ; preds = %32
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %65 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 11
  store i8* %63, i8** %66, align 8
  br label %155

67:                                               ; preds = %32
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %72 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 10
  store i8* %70, i8** %73, align 8
  br label %155

74:                                               ; preds = %32
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %79 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 9
  store i32 %77, i32* %80, align 8
  br label %155

81:                                               ; preds = %32
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %84, %88
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %91 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  br label %155

93:                                               ; preds = %32
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %96, %100
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %103 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  br label %155

105:                                              ; preds = %32
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %110 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  br label %155

112:                                              ; preds = %32
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = or i32 %115, %119
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 16
  %125 = or i32 %120, %124
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 6
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 24
  %130 = or i32 %125, %129
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %132 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  store i32 %130, i32* %133, align 4
  br label %155

134:                                              ; preds = %32
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %139 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 6
  store i32 %137, i32* %140, align 8
  br label %155

141:                                              ; preds = %32
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le32_to_cpu(i32 %143)
  %145 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %146 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 8
  store i8* %144, i8** %147, align 8
  br label %155

148:                                              ; preds = %32
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @le32_to_cpu(i32 %150)
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %153 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 7
  store i8* %151, i8** %154, align 8
  br label %155

155:                                              ; preds = %32, %148, %141, %134, %112, %105, %93, %81, %74, %67, %60, %40
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %157 = load i32, i32* @COMP_BT_COEXIST, align 4
  %158 = load i32, i32* @DBG_LOUD, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @RT_TRACE(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %162 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %161, i32 0, i32 0
  %163 = call i32 @complete(i32* %162)
  br label %164

164:                                              ; preds = %155, %31, %24, %17
  ret void
}

declare dso_local %struct.btc_coexist* @rtl_btc_coexist(%struct.rtl_priv*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
