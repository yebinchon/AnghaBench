; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_efuse_one_byte_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_efuse_one_byte_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, i32, i32)* @efuse_one_byte_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_one_byte_write(%struct._adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct._adapter*, %struct._adapter** %4, align 8
  %10 = load i64, i64* @EFUSE_CTRL, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @r8712_write8(%struct._adapter* %9, i64 %11, i32 %13)
  %15 = load %struct._adapter*, %struct._adapter** %4, align 8
  %16 = load i64, i64* @EFUSE_CTRL, align 8
  %17 = add nsw i64 %16, 2
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 3
  %21 = load %struct._adapter*, %struct._adapter** %4, align 8
  %22 = load i64, i64* @EFUSE_CTRL, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @r8712_read8(%struct._adapter* %21, i64 %23)
  %25 = and i32 %24, 252
  %26 = or i32 %20, %25
  %27 = call i32 @r8712_write8(%struct._adapter* %15, i64 %17, i32 %26)
  %28 = load %struct._adapter*, %struct._adapter** %4, align 8
  %29 = load i64, i64* @EFUSE_CTRL, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @r8712_write8(%struct._adapter* %28, i64 %29, i32 %30)
  %32 = load %struct._adapter*, %struct._adapter** %4, align 8
  %33 = load i64, i64* @EFUSE_CTRL, align 8
  %34 = add nsw i64 %33, 3
  %35 = call i32 @r8712_write8(%struct._adapter* %32, i64 %34, i32 242)
  br label %36

36:                                               ; preds = %48, %3
  %37 = load %struct._adapter*, %struct._adapter** %4, align 8
  %38 = load i64, i64* @EFUSE_CTRL, align 8
  %39 = add nsw i64 %38, 3
  %40 = call i32 @r8712_read8(%struct._adapter* %37, i64 %39)
  %41 = and i32 128, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 100
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ false, %36 ], [ %45, %43 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %36

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %56

55:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i64, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
