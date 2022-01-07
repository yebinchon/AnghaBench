; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_port = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [70 x i8] c"%sport %#llx-%#llx, align %#llx, size %#llx, %i-bit address decoding\0A\00", align 1
@IORESOURCE_IO_16BIT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.pnp_port*)* @pnp_print_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_print_port(i32* %0, i8* %1, %struct.pnp_port* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_port*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pnp_port* %2, %struct.pnp_port** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %10 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %13 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %16 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %21 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 1
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ %23, %19 ], [ 0, %24 ]
  %27 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %28 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %31 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IORESOURCE_IO_16BIT_ADDR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 16, i32 10
  %38 = call i32 @pnp_printf(i32* %7, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %8, i64 %11, i64 %14, i64 %26, i64 %29, i32 %37)
  ret void
}

declare dso_local i32 @pnp_printf(i32*, i8*, i8*, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
