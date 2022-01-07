; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@PHYDATA0 = common dso_local global i32 0, align 4
@PHYDATA1 = common dso_local global i32 0, align 4
@PHYADDR = common dso_local global i32 0, align 4
@PHYRWCTL = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %13 = load i32, i32* @PHYDATA0, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rtsx_write_register(%struct.rtsx_chip* %12, i32 %13, i32 255, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %22 = load i32, i32* @PHYDATA1, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @rtsx_write_register(%struct.rtsx_chip* %21, i32 %22, i32 255, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %75

30:                                               ; preds = %20
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* @PHYADDR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtsx_write_register(%struct.rtsx_chip* %31, i32 %32, i32 255, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %30
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %41 = load i32, i32* @PHYRWCTL, align 4
  %42 = call i32 @rtsx_write_register(%struct.rtsx_chip* %40, i32 %41, i32 255, i32 129)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %75

47:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 100000
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %53 = load i32, i32* @PHYRWCTL, align 4
  %54 = call i32 @rtsx_read_register(%struct.rtsx_chip* %52, i32 %53, i32* %11)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %75

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %68

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %48

68:                                               ; preds = %63, %48
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71, %57, %45, %37, %28, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
