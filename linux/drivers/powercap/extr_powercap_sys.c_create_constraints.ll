; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_create_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_create_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.powercap_zone = type { i32, i32**, i32, %struct.powercap_zone_constraint* }
%struct.powercap_zone_constraint = type { %struct.powercap_zone_constraint_ops*, i32 }
%struct.powercap_zone_constraint_ops = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@constraint_attrs = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powercap_zone*, i32, %struct.powercap_zone_constraint_ops*)* @create_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_constraints(%struct.powercap_zone* %0, i32 %1, %struct.powercap_zone_constraint_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powercap_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.powercap_zone_constraint_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.powercap_zone_constraint*, align 8
  store %struct.powercap_zone* %0, %struct.powercap_zone** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.powercap_zone_constraint_ops* %2, %struct.powercap_zone_constraint_ops** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %13 = icmp ne %struct.powercap_zone* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %7, align 8
  %16 = icmp ne %struct.powercap_zone_constraint_ops* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %7, align 8
  %19 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %7, align 8
  %24 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %7, align 8
  %29 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %7, align 8
  %34 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %27, %22, %17, %14, %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %206

40:                                               ; preds = %32
  %41 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %42 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %198, %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %201

48:                                               ; preds = %44
  %49 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %50 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %49, i32 0, i32 3
  %51 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %51, i64 %53
  store %struct.powercap_zone_constraint* %54, %struct.powercap_zone_constraint** %11, align 8
  %55 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %7, align 8
  %56 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %57 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %56, i32 0, i32 0
  store %struct.powercap_zone_constraint_ops* %55, %struct.powercap_zone_constraint_ops** %57, align 8
  %58 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %59 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %62 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %64 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %74 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %73, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  store i32* %72, i32** %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %87 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  store i32* %85, i32** %92, align 8
  %93 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %94 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %93, i32 0, i32 0
  %95 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %94, align 8
  %96 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %48
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %107 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32*, i32** %108, i64 %111
  store i32* %105, i32** %112, align 8
  br label %113

113:                                              ; preds = %99, %48
  %114 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %115 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %114, i32 0, i32 0
  %116 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %115, align 8
  %117 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %128 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32*, i32** %129, i64 %132
  store i32* %126, i32** %133, align 8
  br label %134

134:                                              ; preds = %120, %113
  %135 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %136 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %135, i32 0, i32 0
  %137 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %136, align 8
  %138 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %134
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %149 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32*, i32** %150, i64 %153
  store i32* %147, i32** %154, align 8
  br label %155

155:                                              ; preds = %141, %134
  %156 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %157 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %156, i32 0, i32 0
  %158 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %157, align 8
  %159 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %170 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %169, i32 0, i32 1
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32*, i32** %171, i64 %174
  store i32* %168, i32** %175, align 8
  br label %176

176:                                              ; preds = %162, %155
  %177 = load %struct.powercap_zone_constraint*, %struct.powercap_zone_constraint** %11, align 8
  %178 = getelementptr inbounds %struct.powercap_zone_constraint, %struct.powercap_zone_constraint* %177, i32 0, i32 0
  %179 = load %struct.powercap_zone_constraint_ops*, %struct.powercap_zone_constraint_ops** %178, align 8
  %180 = getelementptr inbounds %struct.powercap_zone_constraint_ops, %struct.powercap_zone_constraint_ops* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %176
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** @constraint_attrs, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %191 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %190, i32 0, i32 1
  %192 = load i32**, i32*** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32*, i32** %192, i64 %195
  store i32* %189, i32** %196, align 8
  br label %197

197:                                              ; preds = %183, %176
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %44

201:                                              ; preds = %44
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.powercap_zone*, %struct.powercap_zone** %5, align 8
  %204 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %201, %37
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
