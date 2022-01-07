; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_pin_dbg_show_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_pin_dbg_show_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.madera_pin_private = type { %struct.madera_pin_chip* }
%struct.madera_pin_chip = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.seq_file = type { i32 }

@madera_mux_funcs = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c" FN=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.madera_pin_private*, %struct.seq_file*, i32, i32)* @madera_pin_dbg_show_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_pin_dbg_show_fn(%struct.madera_pin_private* %0, %struct.seq_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.madera_pin_private*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.madera_pin_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.madera_pin_private* %0, %struct.madera_pin_private** %5, align 8
  store %struct.seq_file* %1, %struct.seq_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.madera_pin_private*, %struct.madera_pin_private** %5, align 8
  %13 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %12, i32 0, i32 0
  %14 = load %struct.madera_pin_chip*, %struct.madera_pin_chip** %13, align 8
  store %struct.madera_pin_chip* %14, %struct.madera_pin_chip** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @madera_mux_funcs, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @madera_mux_funcs, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @madera_mux_funcs, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %99

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %18

45:                                               ; preds = %18
  br label %99

46:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %96, %46
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.madera_pin_chip*, %struct.madera_pin_chip** %9, align 8
  %50 = getelementptr inbounds %struct.madera_pin_chip, %struct.madera_pin_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.madera_pin_chip*, %struct.madera_pin_chip** %9, align 8
  %57 = getelementptr inbounds %struct.madera_pin_chip, %struct.madera_pin_chip* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %55, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %54
  %66 = load %struct.madera_pin_chip*, %struct.madera_pin_chip** %9, align 8
  %67 = getelementptr inbounds %struct.madera_pin_chip, %struct.madera_pin_chip* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %65
  %81 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %82 = load %struct.madera_pin_chip*, %struct.madera_pin_chip** %9, align 8
  %83 = getelementptr inbounds %struct.madera_pin_chip, %struct.madera_pin_chip* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %99

91:                                               ; preds = %65
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %54

95:                                               ; preds = %54
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %47

99:                                               ; preds = %32, %45, %80, %47
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
