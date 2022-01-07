; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_set_buf_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_set_buf_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i8, i32)* @set_buf_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_buf_states(%struct.qdio_q* %0, i32 %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %12 = call i64 @is_qebsm(%struct.qdio_q* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %16 = load i8, i8* %8, align 1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @qdio_do_sqbs(%struct.qdio_q* %15, i8 zeroext %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %27 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i8, i8* %8, align 1
  %34 = call i32 @xchg(i32* %32, i8 zeroext %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @next_buf(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %14
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @qdio_do_sqbs(%struct.qdio_q*, i8 zeroext, i32, i32) #1

declare dso_local i32 @xchg(i32*, i8 zeroext) #1

declare dso_local i32 @next_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
