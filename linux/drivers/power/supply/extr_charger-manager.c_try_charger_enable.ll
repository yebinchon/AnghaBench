; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_try_charger_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_try_charger_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i32, i32, i8*, i8*, i64, %struct.charger_desc* }
%struct.charger_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot enable %s regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot disable %s regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Disable regulator(%s) forcibly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*, i32)* @try_charger_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_charger_enable(%struct.charger_manager* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.charger_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.charger_desc*, align 8
  store %struct.charger_manager* %0, %struct.charger_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %10 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %9, i32 0, i32 5
  %11 = load %struct.charger_desc*, %struct.charger_desc** %10, align 8
  store %struct.charger_desc* %11, %struct.charger_desc** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %14 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %190

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %18
  %22 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %23 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %190

29:                                               ; preds = %21
  %30 = call i32 (...) @ktime_get()
  %31 = call i8* @ktime_to_ms(i32 %30)
  %32 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %33 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %35 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %34, i32 0, i32 2
  store i8* null, i8** %35, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %79, %29
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %39 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %36
  %43 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %44 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %79

53:                                               ; preds = %42
  %54 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %55 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regulator_enable(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %53
  %66 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %67 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %70 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_warn(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %65, %53
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %36

82:                                               ; preds = %36
  br label %181

83:                                               ; preds = %18
  %84 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %85 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %84, i32 0, i32 3
  store i8* null, i8** %85, align 8
  %86 = call i32 (...) @ktime_get()
  %87 = call i8* @ktime_to_ms(i32 %86)
  %88 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %89 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %133, %83
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %93 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %98 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %133

107:                                              ; preds = %96
  %108 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %109 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @regulator_disable(i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %107
  %120 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %121 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %124 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_warn(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %119, %107
  br label %133

133:                                              ; preds = %132, %106
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %90

136:                                              ; preds = %90
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %177, %136
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %140 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %180

143:                                              ; preds = %137
  %144 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %145 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @regulator_is_enabled(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %176

154:                                              ; preds = %143
  %155 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %156 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @regulator_force_disable(i32 %162)
  %164 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %165 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.charger_desc*, %struct.charger_desc** %8, align 8
  %168 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @dev_warn(i32 %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %154, %143
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %137

180:                                              ; preds = %137
  br label %181

181:                                              ; preds = %180, %82
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %187 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %26, %17
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i8* @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i64 @regulator_is_enabled(i32) #1

declare dso_local i32 @regulator_force_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
