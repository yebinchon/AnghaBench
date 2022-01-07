; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SSB_BUSTYPE_PCMCIA = common dso_local global i64 0, align 8
@SSB_PCMCIA_SPROM_SIZE = common dso_local global i32 0, align 4
@dev_attr_ssb_sprom = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to initialize PCMCIA host device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pcmcia_init(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %6 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSB_BUSTYPE_PCMCIA, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = call i32 @ssb_pcmcia_hardware_setup(%struct.ssb_bus* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %33

17:                                               ; preds = %11
  %18 = load i32, i32* @SSB_PCMCIA_SPROM_SIZE, align 4
  %19 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %20 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %22 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %21, i32 0, i32 2
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %25 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @device_create_file(i32* %27, i32* @dev_attr_ssb_sprom)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %33

32:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %36

33:                                               ; preds = %31, %16
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %32, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ssb_pcmcia_hardware_setup(%struct.ssb_bus*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
