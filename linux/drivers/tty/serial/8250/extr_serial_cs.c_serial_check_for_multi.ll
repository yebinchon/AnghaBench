; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_serial_check_for_multi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_serial_check_for_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__**, %struct.serial_info* }
%struct.TYPE_2__ = type { i32 }
%struct.serial_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @serial_check_for_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_check_for_multi(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.serial_info*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.serial_info*, %struct.serial_info** %8, align 8
  store %struct.serial_info* %9, %struct.serial_info** %6, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %21
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %30
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 3
  %49 = load %struct.serial_info*, %struct.serial_info** %6, align 8
  %50 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %30, %21
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %51
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %81

69:                                               ; preds = %60
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.serial_info*, %struct.serial_info** %6, align 8
  %80 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %79, i32 0, i32 0
  store i32 2, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %69, %60, %51
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
