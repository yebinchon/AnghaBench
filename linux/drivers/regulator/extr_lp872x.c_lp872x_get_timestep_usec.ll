; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_get_timestep_usec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_get_timestep_usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp872x = type { i32 }

@__const.lp872x_get_timestep_usec.lp8720_time_usec = private unnamed_addr constant [2 x i32] [i32 25, i32 50], align 4
@__const.lp872x_get_timestep_usec.lp8725_time_usec = private unnamed_addr constant [4 x i32] [i32 32, i32 64, i32 128, i32 256], align 16
@LP8720_TIMESTEP_M = common dso_local global i32 0, align 4
@LP8720_TIMESTEP_S = common dso_local global i32 0, align 4
@LP8725_TIMESTEP_M = common dso_local global i32 0, align 4
@LP8725_TIMESTEP_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LP872X_GENERAL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp872x*)* @lp872x_get_timestep_usec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_get_timestep_usec(%struct.lp872x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp872x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [4 x i32], align 16
  store %struct.lp872x* %0, %struct.lp872x** %3, align 8
  %13 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %14 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.lp872x_get_timestep_usec.lp8720_time_usec to i8*), i64 8, i1 false)
  %17 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.lp872x_get_timestep_usec.lp8725_time_usec to i8*), i64 16, i1 false)
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %31 [
    i32 129, label %19
    i32 128, label %25
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @LP8720_TIMESTEP_M, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @LP8720_TIMESTEP_S, align 4
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %22, i32** %8, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  store i32 %24, i32* %9, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* @LP8725_TIMESTEP_M, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @LP8725_TIMESTEP_S, align 4
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32* %28, i32** %8, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %25, %19
  %35 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %36 = load i32, i32* @LP872X_GENERAL_CFG, align 4
  %37 = call i32 @lp872x_read_byte(%struct.lp872x* %35, i32 %36, i32* %5)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %2, align 4
  br label %60

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %60

54:                                               ; preds = %42
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %51, %40, %31
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @lp872x_read_byte(%struct.lp872x*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
