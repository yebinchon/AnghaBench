; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.das1800_board = type { i8, i32 }
%struct.comedi_device = type { i32, i32, %struct.das1800_board*, i64 }

@DAS1800_DIGITAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"probed id does not match board id (0x%x != 0x%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@das1800_boards = common dso_local global %struct.das1800_board* null, align 8
@BOARD_DAS1801ST_DA = common dso_local global i64 0, align 8
@BOARD_DAS1802HR_DA = common dso_local global i64 0, align 8
@BOARD_DAS1801AO = common dso_local global i64 0, align 8
@BOARD_DAS1802HR = common dso_local global i64 0, align 8
@BOARD_DAS1801ST = common dso_local global i64 0, align 8
@BOARD_DAS1801HC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid probe id 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"probed id 0x%0x: %s series (not recommended)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @das1800_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_probe(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.das1800_board*, align 8
  %5 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 2
  %8 = load %struct.das1800_board*, %struct.das1800_board** %7, align 8
  store %struct.das1800_board* %8, %struct.das1800_board** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DAS1800_DIGITAL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = load %struct.das1800_board*, %struct.das1800_board** %4, align 8
  %19 = icmp ne %struct.das1800_board* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.das1800_board*, %struct.das1800_board** %4, align 8
  %22 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 4
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %93

29:                                               ; preds = %20
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8, i8* %5, align 1
  %34 = load %struct.das1800_board*, %struct.das1800_board** %4, align 8
  %35 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = zext i8 %36 to i32
  %38 = call i32 (i32, i8*, i8, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8 zeroext %33, i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %93

41:                                               ; preds = %1
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  switch i32 %43, label %68 [
    i32 128, label %44
    i32 130, label %48
    i32 133, label %52
    i32 131, label %56
    i32 129, label %60
    i32 132, label %64
  ]

44:                                               ; preds = %41
  %45 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %46 = load i64, i64* @BOARD_DAS1801ST_DA, align 8
  %47 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %45, i64 %46
  store %struct.das1800_board* %47, %struct.das1800_board** %4, align 8
  br label %76

48:                                               ; preds = %41
  %49 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %50 = load i64, i64* @BOARD_DAS1802HR_DA, align 8
  %51 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %49, i64 %50
  store %struct.das1800_board* %51, %struct.das1800_board** %4, align 8
  br label %76

52:                                               ; preds = %41
  %53 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %54 = load i64, i64* @BOARD_DAS1801AO, align 8
  %55 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %53, i64 %54
  store %struct.das1800_board* %55, %struct.das1800_board** %4, align 8
  br label %76

56:                                               ; preds = %41
  %57 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %58 = load i64, i64* @BOARD_DAS1802HR, align 8
  %59 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %57, i64 %58
  store %struct.das1800_board* %59, %struct.das1800_board** %4, align 8
  br label %76

60:                                               ; preds = %41
  %61 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %62 = load i64, i64* @BOARD_DAS1801ST, align 8
  %63 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %61, i64 %62
  store %struct.das1800_board* %63, %struct.das1800_board** %4, align 8
  br label %76

64:                                               ; preds = %41
  %65 = load %struct.das1800_board*, %struct.das1800_board** @das1800_boards, align 8
  %66 = load i64, i64* @BOARD_DAS1801HC, align 8
  %67 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %65, i64 %66
  store %struct.das1800_board* %67, %struct.das1800_board** %4, align 8
  br label %76

68:                                               ; preds = %41
  %69 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8, i8* %5, align 1
  %73 = call i32 (i32, i8*, i8, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %72)
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %93

76:                                               ; preds = %64, %60, %56, %52, %48, %44
  %77 = load %struct.das1800_board*, %struct.das1800_board** %4, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 2
  store %struct.das1800_board* %77, %struct.das1800_board** %79, align 8
  %80 = load %struct.das1800_board*, %struct.das1800_board** %4, align 8
  %81 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i8, i8* %5, align 1
  %89 = load %struct.das1800_board*, %struct.das1800_board** %4, align 8
  %90 = getelementptr inbounds %struct.das1800_board, %struct.das1800_board* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %88, i32 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %76, %68, %29, %28
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext, ...) #1

declare dso_local i32 @dev_warn(i32, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
