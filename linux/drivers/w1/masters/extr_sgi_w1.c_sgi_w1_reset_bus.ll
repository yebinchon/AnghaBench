; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_sgi_w1.c_sgi_w1_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_sgi_w1.c_sgi_w1_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgi_w1_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sgi_w1_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_w1_reset_bus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sgi_w1_device*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sgi_w1_device*
  store %struct.sgi_w1_device* %6, %struct.sgi_w1_device** %3, align 8
  %7 = call i32 @MCR_PACK(i32 520, i32 65)
  %8 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %3, align 8
  %9 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @writel(i32 %7, i32 %10)
  %12 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %3, align 8
  %13 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sgi_w1_wait(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = call i32 @udelay(i32 500)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MCR_PACK(i32, i32) #1

declare dso_local i32 @sgi_w1_wait(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
