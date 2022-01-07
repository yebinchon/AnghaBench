; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_request_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_request_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxser_board = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mxser(vector)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxser_board*)* @mxser_request_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_request_vector(%struct.mxser_board* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxser_board*, align 8
  store %struct.mxser_board* %0, %struct.mxser_board** %3, align 8
  %4 = load %struct.mxser_board*, %struct.mxser_board** %3, align 8
  %5 = call i64 @mxser_overlapping_vector(%struct.mxser_board* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.mxser_board*, %struct.mxser_board** %3, align 8
  %10 = getelementptr inbounds %struct.mxser_board, %struct.mxser_board* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @request_region(i32 %11, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 0, %14 ], [ %17, %15 ]
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @mxser_overlapping_vector(%struct.mxser_board*) #1

declare dso_local i64 @request_region(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
