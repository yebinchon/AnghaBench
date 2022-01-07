; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_crosslink_init_dbmsgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_crosslink_init_dbmsgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*)* @crosslink_init_dbmsgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crosslink_init_dbmsgs(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca %struct.switchtec_ntb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %7 = call i32 @crosslink_is_enabled(%struct.switchtec_ntb* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %33, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %14 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %23 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 2
  %26 = or i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %28, 8
  %30 = shl i32 %27, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %39 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @iowrite32(i32 %37, i32* %41)
  %43 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %44 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %47 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %45, %48
  %50 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %51 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @iowrite64(i32 %49, i32* %53)
  br label %55

55:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @crosslink_is_enabled(%struct.switchtec_ntb*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @iowrite64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
