; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_recover_from_babble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_recover_from_babble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i64, i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @musb_recover_from_babble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_recover_from_babble(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  %5 = load %struct.musb*, %struct.musb** %2, align 8
  %6 = call i32 @musb_disable_interrupts(%struct.musb* %5)
  %7 = call i32 @udelay(i32 10)
  %8 = load %struct.musb*, %struct.musb** %2, align 8
  %9 = call i32 @musb_platform_recover(%struct.musb* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.musb*, %struct.musb** %2, align 8
  %14 = call i32 @musb_enable_interrupts(%struct.musb* %13)
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.musb*, %struct.musb** %2, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MUSB_DEVCTL, align 4
  %20 = call i32 @musb_readb(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.musb*, %struct.musb** %2, align 8
  %26 = getelementptr inbounds %struct.musb, %struct.musb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MUSB_DEVCTL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @musb_writeb(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.musb*, %struct.musb** %2, align 8
  %32 = call i32 @musb_root_disconnect(%struct.musb* %31)
  %33 = load %struct.musb*, %struct.musb** %2, align 8
  %34 = getelementptr inbounds %struct.musb, %struct.musb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %15
  %38 = load %struct.musb*, %struct.musb** %2, align 8
  %39 = call i32 @ep_config_from_table(%struct.musb* %38)
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %15
  %41 = load %struct.musb*, %struct.musb** %2, align 8
  %42 = call i32 @ep_config_from_hw(%struct.musb* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.musb*, %struct.musb** %2, align 8
  %48 = call i32 @musb_start(%struct.musb* %47)
  br label %49

49:                                               ; preds = %12, %46, %43
  ret void
}

declare dso_local i32 @musb_disable_interrupts(%struct.musb*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @musb_platform_recover(%struct.musb*) #1

declare dso_local i32 @musb_enable_interrupts(%struct.musb*) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @musb_root_disconnect(%struct.musb*) #1

declare dso_local i32 @ep_config_from_table(%struct.musb*) #1

declare dso_local i32 @ep_config_from_hw(%struct.musb*) #1

declare dso_local i32 @musb_start(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
