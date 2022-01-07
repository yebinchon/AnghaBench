; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinx_fb_in32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinx_fb_in32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinxfb_drvdata = type { i32, i32, i64 }

@BUS_ACCESS_FLAG = common dso_local global i32 0, align 4
@LITTLE_ENDIAN_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinxfb_drvdata*, i32)* @xilinx_fb_in32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_fb_in32(%struct.xilinxfb_drvdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xilinxfb_drvdata*, align 8
  %5 = alloca i32, align 4
  store %struct.xilinxfb_drvdata* %0, %struct.xilinxfb_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %7 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @BUS_ACCESS_FLAG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %14 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LITTLE_ENDIAN_ACCESS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %21 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @ioread32(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %12
  %29 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %30 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @ioread32be(i64 %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %28, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @ioread32be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
