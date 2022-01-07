; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mt8135.c_spec_pull_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mt8135.c_spec_pull_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.regmap = type { i32 }

@spec_pupd = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i8, i32, i32)* @spec_pull_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spec_pull_set(%struct.regmap* %0, i32 %1, i8 zeroext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %35, %5
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %18, align 4
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %19

38:                                               ; preds = %33, %19
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %203

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %13, align 4
  br label %70

58:                                               ; preds = %44
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 4
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 1
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %58, %47
  %71 = load %struct.regmap*, %struct.regmap** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @regmap_write(%struct.regmap* %71, i32 %72, i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %9, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %86, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %9, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 1
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %16, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i8, i8* %105, align 2
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %9, align 1
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %107, %109
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i8, i8* %115, align 2
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* %9, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 1
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %11, align 4
  switch i32 %122, label %199 [
    i32 131, label %123
    i32 130, label %142
    i32 129, label %161
    i32 128, label %180
  ]

123:                                              ; preds = %70
  %124 = load %struct.regmap*, %struct.regmap** %7, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %127 = load i32, i32* %12, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regmap_write(%struct.regmap* %124, i32 %125, i32 %131)
  %133 = load %struct.regmap*, %struct.regmap** %7, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @regmap_write(%struct.regmap* %133, i32 %134, i32 %140)
  br label %202

142:                                              ; preds = %70
  %143 = load %struct.regmap*, %struct.regmap** %7, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %146 = load i32, i32* %12, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @regmap_write(%struct.regmap* %143, i32 %144, i32 %150)
  %152 = load %struct.regmap*, %struct.regmap** %7, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %155 = load i32, i32* %12, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @regmap_write(%struct.regmap* %152, i32 %153, i32 %159)
  br label %202

161:                                              ; preds = %70
  %162 = load %struct.regmap*, %struct.regmap** %7, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %165 = load i32, i32* %12, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @regmap_write(%struct.regmap* %162, i32 %163, i32 %169)
  %171 = load %struct.regmap*, %struct.regmap** %7, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %174 = load i32, i32* %12, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @regmap_write(%struct.regmap* %171, i32 %172, i32 %178)
  br label %202

180:                                              ; preds = %70
  %181 = load %struct.regmap*, %struct.regmap** %7, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %184 = load i32, i32* %12, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @regmap_write(%struct.regmap* %181, i32 %182, i32 %188)
  %190 = load %struct.regmap*, %struct.regmap** %7, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spec_pupd, align 8
  %193 = load i32, i32* %12, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @regmap_write(%struct.regmap* %190, i32 %191, i32 %197)
  br label %202

199:                                              ; preds = %70
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %6, align 4
  br label %203

202:                                              ; preds = %180, %161, %142, %123
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %199, %41
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
