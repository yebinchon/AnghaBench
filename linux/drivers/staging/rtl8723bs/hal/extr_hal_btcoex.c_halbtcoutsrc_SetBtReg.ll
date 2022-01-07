; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_SetBtReg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_SetBtReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.adapter* }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @halbtcoutsrc_SetBtReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtcoutsrc_SetBtReg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  store i32* %7, i32** %13, align 8
  store i32* %8, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  store %struct.adapter* %23, %struct.adapter** %10, align 8
  %24 = load i32, i32* %15, align 4
  %25 = and i32 %24, 15
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 16
  %29 = load i32, i32* %16, align 4
  %30 = shl i32 %29, 4
  %31 = and i32 %30, 240
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 16
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 13, i32* %35, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %10, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %42 = call i32 @rtw_hal_fill_h2c_cmd(%struct.adapter* %40, i32 103, i32 4, i32* %41)
  %43 = call i32 @msleep(i32 200)
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %15, align 4
  %47 = and i32 %46, 15
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 16
  %51 = load i32, i32* %16, align 4
  %52 = shl i32 %51, 4
  %53 = and i32 %52, 240
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 16
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 12, i32* %57, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.adapter*, %struct.adapter** %10, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %64 = call i32 @rtw_hal_fill_h2c_cmd(%struct.adapter* %62, i32 103, i32 4, i32* %63)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_hal_fill_h2c_cmd(%struct.adapter*, i32, i32, i32*) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
