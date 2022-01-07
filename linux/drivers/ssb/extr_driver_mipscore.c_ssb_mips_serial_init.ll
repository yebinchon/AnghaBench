; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mips_serial_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mips_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_mipscore = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_mipscore*)* @ssb_mips_serial_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_mips_serial_init(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca %struct.ssb_mipscore*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %2, align 8
  %4 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  store %struct.ssb_bus* %8, %struct.ssb_bus** %3, align 8
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %10 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %9, i32 0, i32 1
  %11 = call i64 @ssb_extif_available(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %15 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %14, i32 0, i32 1
  %16 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %17 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ssb_extif_serial_init(i32* %15, i32 %18)
  %20 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %21 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %40

22:                                               ; preds = %1
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = call i64 @ssb_chipco_available(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %29 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %28, i32 0, i32 0
  %30 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %31 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ssb_chipco_serial_init(i32* %29, i32 %32)
  %34 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %35 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %39

36:                                               ; preds = %22
  %37 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %38 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_serial_init(i32*, i32) #1

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i32 @ssb_chipco_serial_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
