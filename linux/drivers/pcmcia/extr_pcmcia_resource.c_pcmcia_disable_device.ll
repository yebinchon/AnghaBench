; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_disable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_pcmcia_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i32, i32, %struct.resource**, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"disabling device\0A\00", align 1
@MAX_WIN = common dso_local global i32 0, align 4
@MAX_IO_WIN = common dso_local global i32 0, align 4
@WIN_FLAGS_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcmcia_disable_device(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 4
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_WIN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 3
  %15 = load %struct.resource**, %struct.resource*** %14, align 8
  %16 = load i32, i32* @MAX_IO_WIN, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %15, i64 %19
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %21, %struct.resource** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WIN_FLAGS_REQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  %31 = call i32 @pcmcia_release_window(%struct.pcmcia_device* %29, %struct.resource* %30)
  br label %32

32:                                               ; preds = %28, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %38 = call i32 @pcmcia_release_configuration(%struct.pcmcia_device* %37)
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %40 = call i32 @pcmcia_release_io(%struct.pcmcia_device* %39)
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @free_irq(i32 %48, i32 %51)
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %54 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %36
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pcmcia_release_window(%struct.pcmcia_device*, %struct.resource*) #1

declare dso_local i32 @pcmcia_release_configuration(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_release_io(%struct.pcmcia_device*) #1

declare dso_local i32 @free_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
