; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_overlapping_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_overlapping_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxser_board = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@allow_overlapping_vector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxser_board*)* @mxser_overlapping_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_overlapping_vector(%struct.mxser_board* %0) #0 {
  %2 = alloca %struct.mxser_board*, align 8
  store %struct.mxser_board* %0, %struct.mxser_board** %2, align 8
  %3 = load i64, i64* @allow_overlapping_vector, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load %struct.mxser_board*, %struct.mxser_board** %2, align 8
  %7 = getelementptr inbounds %struct.mxser_board, %struct.mxser_board* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mxser_board*, %struct.mxser_board** %2, align 8
  %10 = getelementptr inbounds %struct.mxser_board, %struct.mxser_board* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %8, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  %17 = load %struct.mxser_board*, %struct.mxser_board** %2, align 8
  %18 = getelementptr inbounds %struct.mxser_board, %struct.mxser_board* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mxser_board*, %struct.mxser_board** %2, align 8
  %21 = getelementptr inbounds %struct.mxser_board, %struct.mxser_board* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mxser_board*, %struct.mxser_board** %2, align 8
  %27 = getelementptr inbounds %struct.mxser_board, %struct.mxser_board* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 8, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %25, %32
  %34 = icmp slt i64 %19, %33
  br label %35

35:                                               ; preds = %16, %5, %1
  %36 = phi i1 [ false, %5 ], [ false, %1 ], [ %34, %16 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
