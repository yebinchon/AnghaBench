; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_omap_cf.c_omap_cf_set_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_omap_cf.c_omap_cf_set_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.socket_state_t = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CF_CONTROL = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@CF_CONTROL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Vcc %d, io_irq %d, flags %04x csc %04x\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.socket_state_t*)* @omap_cf_set_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_cf_set_socket(%struct.pcmcia_socket* %0, %struct.socket_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.socket_state_t*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store %struct.socket_state_t* %1, %struct.socket_state_t** %5, align 8
  %7 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %8 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 0, label %10
    i32 33, label %10
  ]

10:                                               ; preds = %2, %2
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %10
  %15 = load i32, i32* @CF_CONTROL, align 4
  %16 = call i32 @omap_readw(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %18 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SS_RESET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @CF_CONTROL_RESET, align 4
  %25 = load i32, i32* @CF_CONTROL, align 4
  %26 = call i32 @omap_writew(i32 %24, i32 %25)
  br label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @CF_CONTROL, align 4
  %29 = call i32 @omap_writew(i32 0, i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @driver_name, align 4
  %32 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %33 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %36 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %39 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.socket_state_t*, %struct.socket_state_t** %5, align 8
  %42 = getelementptr inbounds %struct.socket_state_t, %struct.socket_state_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
