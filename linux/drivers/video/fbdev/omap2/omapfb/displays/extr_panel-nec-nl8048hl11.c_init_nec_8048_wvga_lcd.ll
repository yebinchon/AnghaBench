; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-nec-nl8048hl11.c_init_nec_8048_wvga_lcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-nec-nl8048hl11.c_init_nec_8048_wvga_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.spi_device = type { i32 }

@nec_8048_init_seq = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @init_nec_8048_wvga_lcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_nec_8048_wvga_lcd(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nec_8048_init_seq, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = sub nsw i32 %7, 1
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nec_8048_init_seq, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nec_8048_init_seq, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nec_8048_spi_send(%struct.spi_device* %11, i32 %17, i32 %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  %29 = call i32 @udelay(i32 20)
  %30 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nec_8048_init_seq, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nec_8048_init_seq, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nec_8048_spi_send(%struct.spi_device* %30, i32 %36, i32 %42)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @nec_8048_spi_send(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
