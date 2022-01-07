; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_get_i2c_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_envctrl.c_envctrl_get_i2c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.i2c_child_t = type { i32 }

@ENVCTRL_MAX_CPU = common dso_local global i32 0, align 4
@PCF8584_MAX_CHANNELS = common dso_local global i32 0, align 4
@i2c_childlist = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_child_t* (i8)* @envctrl_get_i2c_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_child_t* @envctrl_get_i2c_child(i8 zeroext %0) #0 {
  %2 = alloca %struct.i2c_child_t*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ENVCTRL_MAX_CPU, align 4
  %9 = mul nsw i32 %8, 2
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %38, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PCF8584_MAX_CHANNELS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_childlist, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_childlist, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = bitcast %struct.TYPE_2__* %35 to %struct.i2c_child_t*
  store %struct.i2c_child_t* %36, %struct.i2c_child_t** %2, align 8
  br label %46

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %12

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %6

45:                                               ; preds = %6
  store %struct.i2c_child_t* null, %struct.i2c_child_t** %2, align 8
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.i2c_child_t*, %struct.i2c_child_t** %2, align 8
  ret %struct.i2c_child_t* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
