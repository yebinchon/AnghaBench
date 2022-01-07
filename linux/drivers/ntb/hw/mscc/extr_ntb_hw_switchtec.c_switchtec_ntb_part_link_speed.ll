; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_part_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_part_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { %struct.switchtec_dev* }
%struct.switchtec_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*, i32, i32*, i32*)* @switchtec_ntb_part_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_part_link_speed(%struct.switchtec_ntb* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.switchtec_ntb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.switchtec_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %5, align 8
  %13 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %12, i32 0, i32 0
  %14 = load %struct.switchtec_dev*, %struct.switchtec_dev** %13, align 8
  store %struct.switchtec_dev* %14, %struct.switchtec_dev** %9, align 8
  %15 = load %struct.switchtec_dev*, %struct.switchtec_dev** %9, align 8
  %16 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i64 @ioread32(i32* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.switchtec_dev*, %struct.switchtec_dev** %9, align 8
  %24 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 13
  %31 = call i64 @ioread32(i32* %30)
  store i64 %31, i64* %11, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load i64, i64* %11, align 8
  %36 = lshr i64 %35, 16
  %37 = and i64 %36, 15
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %4
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = lshr i64 %44, 20
  %46 = and i64 %45, 63
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %40
  ret void
}

declare dso_local i64 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
