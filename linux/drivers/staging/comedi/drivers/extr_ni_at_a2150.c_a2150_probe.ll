; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2150_board = type { i32 }
%struct.comedi_device = type { i64 }

@STATUS_REG = common dso_local global i64 0, align 8
@a2150_boards = common dso_local global %struct.a2150_board* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.a2150_board* (%struct.comedi_device*)* @a2150_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.a2150_board* @a2150_probe(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.a2150_board*, align 8
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STATUS_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inw(i64 %9)
  %11 = call i32 @ID_BITS(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.a2150_board*, %struct.a2150_board** @a2150_boards, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.a2150_board* %13)
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.a2150_board* null, %struct.a2150_board** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.a2150_board*, %struct.a2150_board** @a2150_boards, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %18, i64 %20
  store %struct.a2150_board* %21, %struct.a2150_board** %2, align 8
  br label %22

22:                                               ; preds = %17, %16
  %23 = load %struct.a2150_board*, %struct.a2150_board** %2, align 8
  ret %struct.a2150_board* %23
}

declare dso_local i32 @ID_BITS(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.a2150_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
