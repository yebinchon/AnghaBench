; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_pnp_print_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_option = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.pnp_option*)* @pnp_print_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_print_option(i32* %0, i8* %1, %struct.pnp_option* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_option*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pnp_option* %2, %struct.pnp_option** %6, align 8
  %7 = load %struct.pnp_option*, %struct.pnp_option** %6, align 8
  %8 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 130, label %10
    i32 128, label %17
    i32 129, label %24
    i32 131, label %31
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.pnp_option*, %struct.pnp_option** %6, align 8
  %14 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = call i32 @pnp_print_port(i32* %11, i8* %12, i32* %15)
  br label %38

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.pnp_option*, %struct.pnp_option** %6, align 8
  %21 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = call i32 @pnp_print_mem(i32* %18, i8* %19, i32* %22)
  br label %38

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.pnp_option*, %struct.pnp_option** %6, align 8
  %28 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @pnp_print_irq(i32* %25, i8* %26, i32* %29)
  br label %38

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.pnp_option*, %struct.pnp_option** %6, align 8
  %35 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @pnp_print_dma(i32* %32, i8* %33, i32* %36)
  br label %38

38:                                               ; preds = %3, %31, %24, %17, %10
  ret void
}

declare dso_local i32 @pnp_print_port(i32*, i8*, i32*) #1

declare dso_local i32 @pnp_print_mem(i32*, i8*, i32*) #1

declare dso_local i32 @pnp_print_irq(i32*, i8*, i32*) #1

declare dso_local i32 @pnp_print_dma(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
