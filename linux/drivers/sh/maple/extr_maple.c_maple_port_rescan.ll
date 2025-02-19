; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_port_rescan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_port_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i32 }

@fullscan = common dso_local global i32 0, align 4
@MAPLE_PORTS = common dso_local global i32 0, align 4
@checked = common dso_local global i32* null, align 8
@baseunits = common dso_local global %struct.maple_device** null, align 8
@MAPLE_COMMAND_DEVINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @maple_port_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_port_rescan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.maple_device*, align 8
  store i32 1, i32* @fullscan, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAPLE_PORTS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load i32*, i32** @checked, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  store i32 0, i32* @fullscan, align 4
  %15 = load %struct.maple_device**, %struct.maple_device*** @baseunits, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.maple_device*, %struct.maple_device** %15, i64 %17
  %19 = load %struct.maple_device*, %struct.maple_device** %18, align 8
  store %struct.maple_device* %19, %struct.maple_device** %2, align 8
  %20 = load %struct.maple_device*, %struct.maple_device** %2, align 8
  %21 = load i32, i32* @MAPLE_COMMAND_DEVINFO, align 4
  %22 = call i32 @maple_add_packet(%struct.maple_device* %20, i32 0, i32 %21, i32 0, i32* null)
  br label %23

23:                                               ; preds = %14, %7
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %3

27:                                               ; preds = %3
  ret void
}

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
