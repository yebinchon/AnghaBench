; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_g_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_g_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32*)* }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"musb_g_suspend: devctl %02x\00", align 1
@MUSB_DEVCTL_VBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unhandled SUSPEND transition (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_g_suspend(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  %4 = load %struct.musb*, %struct.musb** %2, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MUSB_DEVCTL, align 4
  %8 = call i32 @musb_readb(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.musb*, %struct.musb** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @musb_dbg(%struct.musb* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.musb*, %struct.musb** %2, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %63 [
    i32 129, label %19
    i32 128, label %33
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.musb*, %struct.musb** %2, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 128, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %19
  br label %73

33:                                               ; preds = %1
  %34 = load %struct.musb*, %struct.musb** %2, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.musb*, %struct.musb** %2, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.musb*, %struct.musb** %2, align 8
  %42 = getelementptr inbounds %struct.musb, %struct.musb* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (i32*)*, i32 (i32*)** %44, align 8
  %46 = icmp ne i32 (i32*)* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.musb*, %struct.musb** %2, align 8
  %49 = getelementptr inbounds %struct.musb, %struct.musb* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.musb*, %struct.musb** %2, align 8
  %52 = getelementptr inbounds %struct.musb, %struct.musb* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (i32*)*, i32 (i32*)** %54, align 8
  %56 = load %struct.musb*, %struct.musb** %2, align 8
  %57 = getelementptr inbounds %struct.musb, %struct.musb* %56, i32 0, i32 3
  %58 = call i32 %55(i32* %57)
  %59 = load %struct.musb*, %struct.musb** %2, align 8
  %60 = getelementptr inbounds %struct.musb, %struct.musb* %59, i32 0, i32 2
  %61 = call i32 @spin_lock(i32* %60)
  br label %62

62:                                               ; preds = %47, %40, %33
  br label %73

63:                                               ; preds = %1
  %64 = load %struct.musb*, %struct.musb** %2, align 8
  %65 = getelementptr inbounds %struct.musb, %struct.musb* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_otg_state_string(i32 %70)
  %72 = call i32 @WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %63, %62, %32
  ret void
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARNING(i8*, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
