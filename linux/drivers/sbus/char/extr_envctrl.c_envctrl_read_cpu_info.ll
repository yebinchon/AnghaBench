; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_read_cpu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_read_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_child_t = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@PCF8584_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.i2c_child_t*, i8, i8*)* @envctrl_read_cpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envctrl_read_cpu_info(i32 %0, %struct.i2c_child_t* %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_child_t*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store %struct.i2c_child_t* %1, %struct.i2c_child_t** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i8 -1, i8* %13, align 1
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %39, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @PCF8584_MAX_CHANNELS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %20 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load i8, i8* %13, align 1
  %32 = add i8 %31, 1
  store i8 %32, i8* %13, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %42

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %14

42:                                               ; preds = %36, %14
  %43 = load i8, i8* %13, align 1
  %44 = sext i8 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %96

48:                                               ; preds = %42
  %49 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %50 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i8
  %53 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %54 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i8
  %62 = call zeroext i8 @envctrl_i2c_read_8591(i8 zeroext %52, i8 zeroext %61)
  store i8 %62, i8* %10, align 1
  %63 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %64 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %67 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %65, i64 %74
  store i8* %75, i8** %12, align 8
  %76 = load i8, i8* %10, align 1
  %77 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %78 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.i2c_child_t*, %struct.i2c_child_t** %7, align 8
  %86 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @envctrl_i2c_data_translate(i8 zeroext %76, i32 %84, i32 %92, i8* %93, i8* %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %48, %47
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local zeroext i8 @envctrl_i2c_read_8591(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @envctrl_i2c_data_translate(i8 zeroext, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
