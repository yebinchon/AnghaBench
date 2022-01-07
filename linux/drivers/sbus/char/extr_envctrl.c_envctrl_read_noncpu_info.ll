; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_read_noncpu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_read_noncpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_child_t = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@PCF8584_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_child_t*, i8, i8*)* @envctrl_read_noncpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envctrl_read_noncpu_info(%struct.i2c_child_t* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_child_t*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.i2c_child_t* %0, %struct.i2c_child_t** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @PCF8584_MAX_CHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %32

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %11

32:                                               ; preds = %27, %11
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PCF8584_MAX_CHANNELS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %85

37:                                               ; preds = %32
  %38 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i8
  %42 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i8
  %51 = call zeroext i8 @envctrl_i2c_read_8591(i8 zeroext %41, i8 zeroext %50)
  store i8 %51, i8* %8, align 1
  %52 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %54, i64 %63
  store i8* %64, i8** %10, align 8
  %65 = load i8, i8* %8, align 1
  %66 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i2c_child_t*, %struct.i2c_child_t** %5, align 8
  %75 = getelementptr inbounds %struct.i2c_child_t, %struct.i2c_child_t* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @envctrl_i2c_data_translate(i8 zeroext %65, i32 %73, i32 %81, i8* %82, i8* %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %37, %36
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local zeroext i8 @envctrl_i2c_read_8591(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @envctrl_i2c_data_translate(i8 zeroext, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
