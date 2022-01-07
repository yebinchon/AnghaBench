; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_setfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_setfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pincfg = type { i32, i32, i32, i32, i64, i32, i64, i32, i64 }
%struct.regmap = type { i32 }

@pincfg = common dso_local global %struct.npcm7xx_pincfg* null, align 8
@fn_gpio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i32*, i32, i32)* @npcm7xx_setfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_setfunc(%struct.regmap* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.npcm7xx_pincfg*, align 8
  %10 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %131, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %134

15:                                               ; preds = %11
  %16 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** @pincfg, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %16, i64 %22
  store %struct.npcm7xx_pincfg* %23, %struct.npcm7xx_pincfg** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @fn_gpio, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %15
  %28 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %29 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %35 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %41 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %130

45:                                               ; preds = %39, %33, %27, %15
  %46 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %47 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %53 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %56 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @BIT(i32 %57)
  %59 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %60 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %66 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @BIT(i32 %67)
  br label %70

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ 0, %69 ]
  %72 = call i32 @regmap_update_bits(%struct.regmap* %51, i64 %54, i32 %58, i32 %71)
  br label %73

73:                                               ; preds = %70, %45
  %74 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %75 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load %struct.regmap*, %struct.regmap** %5, align 8
  %80 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %81 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %84 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @BIT(i32 %85)
  %87 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %88 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %94 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @BIT(i32 %95)
  br label %98

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %92
  %99 = phi i32 [ %96, %92 ], [ 0, %97 ]
  %100 = call i32 @regmap_update_bits(%struct.regmap* %79, i64 %82, i32 %86, i32 %99)
  br label %101

101:                                              ; preds = %98, %73
  %102 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %103 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load %struct.regmap*, %struct.regmap** %5, align 8
  %108 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %109 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %112 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %116 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %106
  %121 = load %struct.npcm7xx_pincfg*, %struct.npcm7xx_pincfg** %9, align 8
  %122 = getelementptr inbounds %struct.npcm7xx_pincfg, %struct.npcm7xx_pincfg* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @BIT(i32 %123)
  br label %126

125:                                              ; preds = %106
  br label %126

126:                                              ; preds = %125, %120
  %127 = phi i32 [ %124, %120 ], [ 0, %125 ]
  %128 = call i32 @regmap_update_bits(%struct.regmap* %107, i64 %110, i32 %114, i32 %127)
  br label %129

129:                                              ; preds = %126, %101
  br label %130

130:                                              ; preds = %129, %39
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %11

134:                                              ; preds = %11
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
