; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_spad_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_spad_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@NTB_DEF_PEER_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32, i32)* @switchtec_ntb_peer_spad_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_peer_spad_write(%struct.ntb_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.switchtec_ntb*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ntb_dev*, %struct.ntb_dev** %6, align 8
  %12 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %11)
  store %struct.switchtec_ntb* %12, %struct.switchtec_ntb** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NTB_DEF_PEER_IDX, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %10, align 8
  %25 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp sge i32 %23, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %53

34:                                               ; preds = %22
  %35 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %10, align 8
  %36 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %10, align 8
  %45 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @iowrite32(i32 %43, i32* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %42, %39, %31, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
