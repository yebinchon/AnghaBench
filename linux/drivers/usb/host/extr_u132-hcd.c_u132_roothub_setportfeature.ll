; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_setportfeature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_setportfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.u132 = type { i32, %struct.u132_port* }
%struct.u132_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RH_PS_PSS = common dso_local global i32 0, align 4
@RH_PS_PPS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, i32, i32)* @u132_roothub_setportfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_setportfeature(%struct.u132* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.u132*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.u132_port*, align 8
  store %struct.u132* %0, %struct.u132** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.u132*, %struct.u132** %5, align 8
  %15 = getelementptr inbounds %struct.u132, %struct.u132* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.u132*, %struct.u132** %5, align 8
  %25 = getelementptr inbounds %struct.u132, %struct.u132* %24, i32 0, i32 1
  %26 = load %struct.u132_port*, %struct.u132_port** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %26, i64 %28
  store %struct.u132_port* %29, %struct.u132_port** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.u132_port*, %struct.u132_port** %9, align 8
  %34 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %60 [
    i32 128, label %38
    i32 130, label %47
    i32 129, label %56
  ]

38:                                               ; preds = %21
  %39 = load %struct.u132*, %struct.u132** %5, align 8
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RH_PS_PSS, align 4
  %46 = call i32 @u132_write_pcimem(%struct.u132* %39, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %21
  %48 = load %struct.u132*, %struct.u132** %5, align 8
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RH_PS_PPS, align 4
  %55 = call i32 @u132_write_pcimem(%struct.u132* %48, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %21
  %57 = load %struct.u132*, %struct.u132** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @u132_roothub_portreset(%struct.u132* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %21
  %61 = load i32, i32* @EPIPE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %56, %47, %38, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

declare dso_local i32 @u132_roothub_portreset(%struct.u132*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
