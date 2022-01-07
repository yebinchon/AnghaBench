; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dz_port = type { %struct.dz_mux* }
%struct.dz_mux = type { i32 }

@DZ_CSR = common dso_local global i32 0, align 4
@DZ_CLR = common dso_local global i32 0, align 4
@DZ_MSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dz_port*)* @dz_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dz_reset(%struct.dz_port* %0) #0 {
  %2 = alloca %struct.dz_port*, align 8
  %3 = alloca %struct.dz_mux*, align 8
  store %struct.dz_port* %0, %struct.dz_port** %2, align 8
  %4 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %5 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %4, i32 0, i32 0
  %6 = load %struct.dz_mux*, %struct.dz_mux** %5, align 8
  store %struct.dz_mux* %6, %struct.dz_mux** %3, align 8
  %7 = load %struct.dz_mux*, %struct.dz_mux** %3, align 8
  %8 = getelementptr inbounds %struct.dz_mux, %struct.dz_mux* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %14 = load i32, i32* @DZ_CSR, align 4
  %15 = load i32, i32* @DZ_CLR, align 4
  %16 = call i32 @dz_out(%struct.dz_port* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %24, %12
  %18 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %19 = load i32, i32* @DZ_CSR, align 4
  %20 = call i32 @dz_in(%struct.dz_port* %18, i32 %19)
  %21 = load i32, i32* @DZ_CLR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %17

25:                                               ; preds = %17
  %26 = call i32 (...) @iob()
  %27 = load %struct.dz_port*, %struct.dz_port** %2, align 8
  %28 = load i32, i32* @DZ_CSR, align 4
  %29 = load i32, i32* @DZ_MSE, align 4
  %30 = call i32 @dz_out(%struct.dz_port* %27, i32 %28, i32 %29)
  %31 = load %struct.dz_mux*, %struct.dz_mux** %3, align 8
  %32 = getelementptr inbounds %struct.dz_mux, %struct.dz_mux* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %11
  ret void
}

declare dso_local i32 @dz_out(%struct.dz_port*, i32, i32) #1

declare dso_local i32 @dz_in(%struct.dz_port*, i32) #1

declare dso_local i32 @iob(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
