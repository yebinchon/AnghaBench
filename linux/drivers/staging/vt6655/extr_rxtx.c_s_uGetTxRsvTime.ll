; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetTxRsvTime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetTxRsvTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64, i32, i64 }

@PK_TYPE_11B = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i8, i32, i16, i32)* @s_uGetTxRsvTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_uGetTxRsvTime(%struct.vnt_private* %0, i8 zeroext %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnt_private*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i16 %3, i16* %10, align 2
  store i32 %4, i32* %11, align 4
  %14 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i8, i8* %8, align 1
  %18 = load i32, i32* %9, align 4
  %19 = load i16, i16* %10, align 2
  %20 = call i32 @BBuGetFrameTime(i32 %16, i8 zeroext %17, i32 %18, i16 zeroext %19)
  store i32 %20, i32* %12, align 4
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @PK_TYPE_11B, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8, i8* %8, align 1
  %31 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i16
  %35 = call i32 @BBuGetFrameTime(i32 %29, i8 zeroext %30, i32 14, i16 zeroext %34)
  store i32 %35, i32* %13, align 4
  br label %46

36:                                               ; preds = %5
  %37 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i8, i8* %8, align 1
  %41 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i16
  %45 = call i32 @BBuGetFrameTime(i32 %39, i8 zeroext %40, i32 14, i16 zeroext %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %36, %26
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %50, %53
  %55 = load i32, i32* %13, align 4
  %56 = add i32 %54, %55
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @BBuGetFrameTime(i32, i8 zeroext, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
