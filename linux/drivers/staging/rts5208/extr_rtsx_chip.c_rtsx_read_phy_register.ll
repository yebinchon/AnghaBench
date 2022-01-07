; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_read_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@PHYADDR = common dso_local global i32 0, align 4
@PHYRWCTL = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@PHYDATA0 = common dso_local global i32 0, align 4
@PHYDATA1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_read_phy_register(%struct.rtsx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %14 = load i32, i32* @PHYADDR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @rtsx_write_register(%struct.rtsx_chip* %13, i32 %14, i32 255, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = load i32, i32* @PHYRWCTL, align 4
  %24 = call i32 @rtsx_write_register(%struct.rtsx_chip* %22, i32 %23, i32 255, i32 128)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 100000
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %35 = load i32, i32* @PHYRWCTL, align 4
  %36 = call i32 @rtsx_read_register(%struct.rtsx_chip* %34, i32 %35, i32* %12)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %84

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %30

50:                                               ; preds = %45, %30
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %54, i32* %4, align 4
  br label %84

55:                                               ; preds = %50
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %57 = load i32, i32* @PHYDATA0, align 4
  %58 = call i32 @rtsx_read_register(%struct.rtsx_chip* %56, i32 %57, i32* %12)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %66 = load i32, i32* @PHYDATA1, align 4
  %67 = call i32 @rtsx_read_register(%struct.rtsx_chip* %65, i32 %66, i32* %12)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %70, %61, %53, %39, %27, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
