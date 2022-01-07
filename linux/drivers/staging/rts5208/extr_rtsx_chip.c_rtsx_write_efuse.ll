; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_write_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Write 0x%x to 0x%x\0A\00", align 1
@EFUSE_DATA = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_write_efuse(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 255, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %82, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %85

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %82

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = call i32 @rtsx_dev(%struct.rtsx_chip* %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %35 = load i32, i32* @EFUSE_DATA, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @rtsx_write_register(%struct.rtsx_chip* %34, i32 %35, i32 255, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %87

42:                                               ; preds = %23
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %44 = load i32, i32* @EFUSE_CTRL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 160, %45
  %47 = call i32 @rtsx_write_register(%struct.rtsx_chip* %43, i32 %44, i32 255, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %87

52:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 100
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %58 = load i32, i32* @EFUSE_CTRL, align 4
  %59 = call i32 @rtsx_read_register(%struct.rtsx_chip* %57, i32 %58, i32* %11)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %87

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %74

69:                                               ; preds = %64
  %70 = call i32 @wait_timeout(i32 3)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %53

74:                                               ; preds = %68, %53
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %74
  %81 = call i32 @wait_timeout(i32 5)
  br label %82

82:                                               ; preds = %80, %22
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %13

85:                                               ; preds = %13
  %86 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %78, %62, %50, %40
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @wait_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
