; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pnp.c_check_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pnp.c_check_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }

@check_resources.base = internal constant [4 x i32] [i32 760, i32 1016, i32 744, i32 1000], align 16
@IORESOURCE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @check_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @check_resources.base, i64 0, i64 0))
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %11 = load i32, i32* @IORESOURCE_IO, align 4
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* @check_resources.base, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pnp_possible_config(%struct.pnp_dev* %10, i32 %11, i32 %15, i32 8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %24

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @pnp_possible_config(%struct.pnp_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
