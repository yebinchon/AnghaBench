; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_spad_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_spad_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@NTB_DEF_PEER_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32)* @switchtec_ntb_peer_spad_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_peer_spad_read(%struct.ntb_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.switchtec_ntb*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %10 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %9)
  store %struct.switchtec_ntb* %10, %struct.switchtec_ntb** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NTB_DEF_PEER_IDX, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %8, align 8
  %23 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp sge i32 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %17
  store i32 0, i32* %4, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %8, align 8
  %32 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %46

36:                                               ; preds = %30
  %37 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %8, align 8
  %38 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @ioread32(i32* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %35, %29, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
