; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_peer_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_peer_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }
%struct.ntb_msi_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_msi_peer_trigger(%struct.ntb_dev* %0, i32 %1, %struct.ntb_msi_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntb_msi_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ntb_msi_desc* %2, %struct.ntb_msi_desc** %7, align 8
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %10 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %3
  %17 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %7, align 8
  %18 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %7, align 8
  %24 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %27 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @iowrite32(i32 %25, i32* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %16, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
