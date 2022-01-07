; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_base.c_pxa2xx_configure_sockets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_base.c_pxa2xx_configure_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_low_level = type { i32, i32 }

@MECR_CIT = common dso_local global i32 0, align 4
@MECR_NOS = common dso_local global i32 0, align 4
@MECR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_configure_sockets(%struct.device* %0, %struct.pcmcia_low_level* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcmcia_low_level*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.pcmcia_low_level* %1, %struct.pcmcia_low_level** %4, align 8
  %6 = load i32, i32* @MECR_CIT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %4, align 8
  %8 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = call i64 (...) @machine_is_viper()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i64 (...) @machine_is_arcom_zeus()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %15, %2
  %22 = load i32, i32* @MECR_NOS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MECR, align 4
  %28 = call i32 @__raw_writel(i32 %26, i32 %27)
  ret void
}

declare dso_local i64 @machine_is_viper(...) #1

declare dso_local i64 @machine_is_arcom_zeus(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
