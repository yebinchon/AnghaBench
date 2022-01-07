; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_i2c.c_via_i2c_getsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_i2c.c_via_i2c_getsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.via_port_cfg = type { i64, i32, i32 }

@i2c_vdev = common dso_local global %struct.TYPE_2__* null, align 8
@VIA_PORT_GPIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @via_i2c_getsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_i2c_getsda(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.via_port_cfg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.via_port_cfg*
  store %struct.via_port_cfg* %7, %struct.via_port_cfg** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_vdev, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.via_port_cfg*, %struct.via_port_cfg** %3, align 8
  %13 = getelementptr inbounds %struct.via_port_cfg, %struct.via_port_cfg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VIA_PORT_GPIO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.via_port_cfg*, %struct.via_port_cfg** %3, align 8
  %19 = getelementptr inbounds %struct.via_port_cfg, %struct.via_port_cfg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.via_port_cfg*, %struct.via_port_cfg** %3, align 8
  %22 = getelementptr inbounds %struct.via_port_cfg, %struct.via_port_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @via_write_reg_mask(i32 %20, i32 %23, i32 0, i32 64)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.via_port_cfg*, %struct.via_port_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.via_port_cfg, %struct.via_port_cfg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.via_port_cfg*, %struct.via_port_cfg** %3, align 8
  %30 = getelementptr inbounds %struct.via_port_cfg, %struct.via_port_cfg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @via_read_reg(i32 %28, i32 %31)
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_vdev, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @via_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @via_read_reg(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
