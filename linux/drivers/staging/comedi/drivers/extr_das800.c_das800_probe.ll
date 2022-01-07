; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.das800_board = type { i32 }
%struct.comedi_device = type { i32, i32, %struct.das800_board* }

@das800_boards = common dso_local global %struct.das800_board* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@BOARD_DAS800 = common dso_local global i32 0, align 4
@BOARD_CIODAS800 = common dso_local global i32 0, align 4
@BOARD_DAS801 = common dso_local global i32 0, align 4
@BOARD_CIODAS801 = common dso_local global i32 0, align 4
@BOARD_DAS802 = common dso_local global i32 0, align 4
@BOARD_CIODAS802 = common dso_local global i32 0, align 4
@BOARD_CIODAS80216 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Board model: 0x%x (unknown)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Board model (probed): %s series\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.das800_board* (%struct.comedi_device*)* @das800_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.das800_board* @das800_probe(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.das800_board*, align 8
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.das800_board*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.das800_board*, %struct.das800_board** %9, align 8
  store %struct.das800_board* %10, %struct.das800_board** %4, align 8
  %11 = load %struct.das800_board*, %struct.das800_board** %4, align 8
  %12 = icmp ne %struct.das800_board* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.das800_board*, %struct.das800_board** %4, align 8
  %15 = load %struct.das800_board*, %struct.das800_board** @das800_boards, align 8
  %16 = ptrtoint %struct.das800_board* %14 to i64
  %17 = ptrtoint %struct.das800_board* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = sext i32 %22 to i64
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i64 [ %19, %13 ], [ %23, %20 ]
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = load i32, i32* @ID, align 4
  %33 = call i32 @das800_ind_read(%struct.comedi_device* %31, i32 %32)
  %34 = and i32 %33, 3
  store i32 %34, i32* %6, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %80 [
    i32 0, label %40
    i32 2, label %52
    i32 3, label %64
  ]

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @BOARD_DAS800, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @BOARD_CIODAS800, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load %struct.das800_board*, %struct.das800_board** %4, align 8
  store %struct.das800_board* %49, %struct.das800_board** %2, align 8
  br label %101

50:                                               ; preds = %44
  %51 = load i32, i32* @BOARD_DAS800, align 4
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %24
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @BOARD_DAS801, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @BOARD_CIODAS801, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52
  %61 = load %struct.das800_board*, %struct.das800_board** %4, align 8
  store %struct.das800_board* %61, %struct.das800_board** %2, align 8
  br label %101

62:                                               ; preds = %56
  %63 = load i32, i32* @BOARD_DAS801, align 4
  store i32 %63, i32* %5, align 4
  br label %86

64:                                               ; preds = %24
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @BOARD_DAS802, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @BOARD_CIODAS802, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @BOARD_CIODAS80216, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68, %64
  %77 = load %struct.das800_board*, %struct.das800_board** %4, align 8
  store %struct.das800_board* %77, %struct.das800_board** %2, align 8
  br label %101

78:                                               ; preds = %72
  %79 = load i32, i32* @BOARD_DAS802, align 4
  store i32 %79, i32* %5, align 4
  br label %86

80:                                               ; preds = %24
  %81 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %84)
  store %struct.das800_board* null, %struct.das800_board** %2, align 8
  br label %101

86:                                               ; preds = %78, %62, %50
  %87 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.das800_board*, %struct.das800_board** @das800_boards, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.das800_board, %struct.das800_board* %90, i64 %92
  %94 = getelementptr inbounds %struct.das800_board, %struct.das800_board* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.das800_board*, %struct.das800_board** @das800_boards, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.das800_board, %struct.das800_board* %97, i64 %99
  store %struct.das800_board* %100, %struct.das800_board** %2, align 8
  br label %101

101:                                              ; preds = %86, %80, %76, %60, %48
  %102 = load %struct.das800_board*, %struct.das800_board** %2, align 8
  ret %struct.das800_board* %102
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @das800_ind_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
