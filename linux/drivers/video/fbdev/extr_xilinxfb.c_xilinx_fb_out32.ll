; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinx_fb_out32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xilinxfb.c_xilinx_fb_out32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinxfb_drvdata = type { i32, i32, i64 }

@BUS_ACCESS_FLAG = common dso_local global i32 0, align 4
@LITTLE_ENDIAN_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinxfb_drvdata*, i32, i32)* @xilinx_fb_out32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_fb_out32(%struct.xilinxfb_drvdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xilinxfb_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xilinxfb_drvdata* %0, %struct.xilinxfb_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %8 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BUS_ACCESS_FLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %15 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LITTLE_ENDIAN_ACCESS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %23 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @iowrite32(i32 %21, i64 %28)
  br label %40

30:                                               ; preds = %13
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.xilinxfb_drvdata*, %struct.xilinxfb_drvdata** %4, align 8
  %33 = getelementptr inbounds %struct.xilinxfb_drvdata, %struct.xilinxfb_drvdata* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @iowrite32be(i32 %31, i64 %38)
  br label %40

40:                                               ; preds = %30, %20
  br label %41

41:                                               ; preds = %40, %3
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
