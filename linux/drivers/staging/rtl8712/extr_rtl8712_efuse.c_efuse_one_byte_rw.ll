; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_efuse_one_byte_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_efuse_one_byte_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, i32, i32, i32*)* @efuse_one_byte_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_one_byte_rw(%struct._adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct._adapter*, %struct._adapter** %5, align 8
  %13 = load i64, i64* @EFUSE_CTRL, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @r8712_write8(%struct._adapter* %12, i64 %14, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 3
  %21 = load %struct._adapter*, %struct._adapter** %5, align 8
  %22 = load i64, i64* @EFUSE_CTRL, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @r8712_read8(%struct._adapter* %21, i64 %23)
  %25 = and i32 %24, 252
  %26 = or i32 %20, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct._adapter*, %struct._adapter** %5, align 8
  %28 = load i64, i64* @EFUSE_CTRL, align 8
  %29 = add nsw i64 %28, 2
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @r8712_write8(%struct._adapter* %27, i64 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %4
  %35 = load %struct._adapter*, %struct._adapter** %5, align 8
  %36 = load i64, i64* @EFUSE_CTRL, align 8
  %37 = add nsw i64 %36, 3
  %38 = call i32 @r8712_write8(%struct._adapter* %35, i64 %37, i32 114)
  br label %39

39:                                               ; preds = %51, %34
  %40 = load %struct._adapter*, %struct._adapter** %5, align 8
  %41 = load i64, i64* @EFUSE_CTRL, align 8
  %42 = add nsw i64 %41, 3
  %43 = call i32 @r8712_read8(%struct._adapter* %40, i64 %42)
  %44 = and i32 128, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 100
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i1 [ false, %39 ], [ %48, %46 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %39

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 100
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct._adapter*, %struct._adapter** %5, align 8
  %59 = load i64, i64* @EFUSE_CTRL, align 8
  %60 = call i32 @r8712_read8(%struct._adapter* %58, i64 %59)
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %11, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  store i32 0, i32* %63, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %96

65:                                               ; preds = %4
  %66 = load %struct._adapter*, %struct._adapter** %5, align 8
  %67 = load i64, i64* @EFUSE_CTRL, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @r8712_write8(%struct._adapter* %66, i64 %67, i32 %69)
  %71 = load %struct._adapter*, %struct._adapter** %5, align 8
  %72 = load i64, i64* @EFUSE_CTRL, align 8
  %73 = add nsw i64 %72, 3
  %74 = call i32 @r8712_write8(%struct._adapter* %71, i64 %73, i32 242)
  br label %75

75:                                               ; preds = %87, %65
  %76 = load %struct._adapter*, %struct._adapter** %5, align 8
  %77 = load i64, i64* @EFUSE_CTRL, align 8
  %78 = add nsw i64 %77, 3
  %79 = call i32 @r8712_read8(%struct._adapter* %76, i64 %78)
  %80 = and i32 128, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 100
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi i1 [ false, %75 ], [ %84, %82 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %75

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 100
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 1, i32* %11, align 4
  br label %95

94:                                               ; preds = %90
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i64, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
