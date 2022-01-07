; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_xxs1500_ss.c_xxs1500_pcmcia_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_xxs1500_ss.c_xxs1500_pcmcia_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.socket_state_t = type { i32, i32 }
%struct.xxs1500_pcmcia_sock = type { i32 }

@GPIO_POWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@GPIO_RESET = common dso_local global i32 0, align 4
@GPIO_OUTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)* @xxs1500_pcmcia_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xxs1500_pcmcia_configure(%struct.pcmcia_socket* %0, %struct.socket_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.socket_state_t*, align 8
  %6 = alloca %struct.xxs1500_pcmcia_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store %struct.socket_state_t* %1, %struct.socket_state_t** %5, align 8
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %9 = call %struct.xxs1500_pcmcia_sock* @to_xxs_socket(%struct.pcmcia_socket* %8)
  store %struct.xxs1500_pcmcia_sock* %9, %struct.xxs1500_pcmcia_sock** %6, align 8
  %10 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %11 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %20 [
    i32 0, label %13
    i32 33, label %16
    i32 50, label %19
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @GPIO_POWER, align 4
  %15 = call i32 @gpio_set_value(i32 %14, i32 1)
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @GPIO_POWER, align 4
  %18 = call i32 @gpio_set_value(i32 %17, i32 0)
  br label %23

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %2, %19
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %16, %13
  %24 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %25 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xxs1500_pcmcia_sock*, %struct.xxs1500_pcmcia_sock** %6, align 8
  %28 = getelementptr inbounds %struct.xxs1500_pcmcia_sock, %struct.xxs1500_pcmcia_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SS_RESET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %37 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SS_RESET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @GPIO_RESET, align 4
  %44 = call i32 @gpio_set_value(i32 %43, i32 1)
  %45 = load i32, i32* @GPIO_OUTEN, align 4
  %46 = call i32 @gpio_set_value(i32 %45, i32 1)
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* @GPIO_RESET, align 4
  %49 = call i32 @gpio_set_value(i32 %48, i32 0)
  %50 = load i32, i32* @GPIO_OUTEN, align 4
  %51 = call i32 @gpio_set_value(i32 %50, i32 0)
  %52 = call i32 @msleep(i32 500)
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %56 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xxs1500_pcmcia_sock*, %struct.xxs1500_pcmcia_sock** %6, align 8
  %59 = getelementptr inbounds %struct.xxs1500_pcmcia_sock, %struct.xxs1500_pcmcia_sock* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.xxs1500_pcmcia_sock* @to_xxs_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
