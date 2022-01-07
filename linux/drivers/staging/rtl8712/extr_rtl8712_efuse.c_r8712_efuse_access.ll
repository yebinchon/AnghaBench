; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_r8712_efuse_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@efuse_available_max_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_efuse_access(%struct._adapter* %0, i32 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 1, i32* %13, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %80

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @efuse_available_max_size, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %80

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct._adapter*, %struct._adapter** %7, align 8
  %33 = call i32 @r8712_efuse_reg_init(%struct._adapter* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %80

36:                                               ; preds = %31, %28
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %72

50:                                               ; preds = %42
  %51 = load %struct._adapter*, %struct._adapter** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @efuse_one_byte_rw(%struct._adapter* %51, i32 %52, i64 %56, i32* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %72

68:                                               ; preds = %64, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %37

72:                                               ; preds = %67, %49, %37
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct._adapter*, %struct._adapter** %7, align 8
  %77 = call i32 @r8712_efuse_reg_uninit(%struct._adapter* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %35, %27, %17
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @r8712_efuse_reg_init(%struct._adapter*) #1

declare dso_local i32 @efuse_one_byte_rw(%struct._adapter*, i32, i64, i32*) #1

declare dso_local i32 @r8712_efuse_reg_uninit(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
