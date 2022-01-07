; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_musb_set_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_musb_set_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@MUSB_DEVCTL = common dso_local global i32 0, align 4
@OTG_STATE_A_IDLE = common dso_local global i64 0, align 8
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"configured as A device timeout\00", align 1
@OTG_STATE_A_WAIT_VRISE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"VBUS %s, devctl %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @ux500_musb_set_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ux500_musb_set_vbus(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @msecs_to_jiffies(i32 1000)
  %9 = add i64 %7, %8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.musb*, %struct.musb** %3, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MUSB_DEVCTL, align 4
  %14 = call i32 @musb_readb(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %2
  %18 = load %struct.musb*, %struct.musb** %3, align 8
  %19 = getelementptr inbounds %struct.musb, %struct.musb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OTG_STATE_A_IDLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %17
  %28 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.musb*, %struct.musb** %3, align 8
  %32 = getelementptr inbounds %struct.musb, %struct.musb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MUSB_DEVCTL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @musb_writeb(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %55, %27
  %38 = load %struct.musb*, %struct.musb** %3, align 8
  %39 = getelementptr inbounds %struct.musb, %struct.musb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MUSB_DEVCTL, align 4
  %42 = call i32 @musb_readb(i32 %40, i32 %41)
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @time_after(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.musb*, %struct.musb** %3, align 8
  %52 = getelementptr inbounds %struct.musb, %struct.musb* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %56

55:                                               ; preds = %45
  br label %37

56:                                               ; preds = %50, %37
  br label %72

57:                                               ; preds = %17
  %58 = load %struct.musb*, %struct.musb** %3, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i64, i64* @OTG_STATE_A_WAIT_VRISE, align 8
  %61 = load %struct.musb*, %struct.musb** %3, align 8
  %62 = getelementptr inbounds %struct.musb, %struct.musb* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  %67 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.musb*, %struct.musb** %3, align 8
  %71 = call i32 @MUSB_HST_MODE(%struct.musb* %70)
  br label %72

72:                                               ; preds = %57, %56
  br label %82

73:                                               ; preds = %2
  %74 = load %struct.musb*, %struct.musb** %3, align 8
  %75 = getelementptr inbounds %struct.musb, %struct.musb* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.musb*, %struct.musb** %3, align 8
  %81 = call i32 @MUSB_DEV_MODE(%struct.musb* %80)
  br label %82

82:                                               ; preds = %73, %72
  %83 = load %struct.musb*, %struct.musb** %3, align 8
  %84 = getelementptr inbounds %struct.musb, %struct.musb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MUSB_DEVCTL, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @musb_writeb(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = call i32 @mdelay(i32 200)
  br label %93

93:                                               ; preds = %91, %82
  %94 = load %struct.musb*, %struct.musb** %3, align 8
  %95 = getelementptr inbounds %struct.musb, %struct.musb* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.musb*, %struct.musb** %3, align 8
  %98 = getelementptr inbounds %struct.musb, %struct.musb* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @usb_otg_state_string(i64 %103)
  %105 = load %struct.musb*, %struct.musb** %3, align 8
  %106 = getelementptr inbounds %struct.musb, %struct.musb* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MUSB_DEVCTL, align 4
  %109 = call i32 @musb_readb(i32 %107, i32 %108)
  %110 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %109)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @MUSB_HST_MODE(%struct.musb*) #1

declare dso_local i32 @MUSB_DEV_MODE(%struct.musb*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_otg_state_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
