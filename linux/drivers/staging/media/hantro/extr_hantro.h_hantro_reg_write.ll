; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro.h_hantro_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro.h_hantro_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }
%struct.hantro_reg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, %struct.hantro_reg*, i32)* @hantro_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_reg_write(%struct.hantro_dev* %0, %struct.hantro_reg* %1, i32 %2) #0 {
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca %struct.hantro_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %4, align 8
  store %struct.hantro_reg* %1, %struct.hantro_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %9 = load %struct.hantro_reg*, %struct.hantro_reg** %5, align 8
  %10 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vdpu_read(%struct.hantro_dev* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hantro_reg*, %struct.hantro_reg** %5, align 8
  %14 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hantro_reg*, %struct.hantro_reg** %5, align 8
  %17 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.hantro_reg*, %struct.hantro_reg** %5, align 8
  %25 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = load %struct.hantro_reg*, %struct.hantro_reg** %5, align 8
  %29 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.hantro_reg*, %struct.hantro_reg** %5, align 8
  %37 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %34, i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @vdpu_read(%struct.hantro_dev*, i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
