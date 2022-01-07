; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"DISCONNECT (%s) as %s, devctl %02x\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unhandled DISCONNECT transition (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @musb_handle_intr_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_handle_intr_disconnect(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.musb*, %struct.musb** %3, align 8
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_otg_state_string(i32 %12)
  %14 = load %struct.musb*, %struct.musb** %3, align 8
  %15 = call i32 @MUSB_MODE(%struct.musb* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @musb_dbg(%struct.musb* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %16)
  %18 = load %struct.musb*, %struct.musb** %3, align 8
  %19 = getelementptr inbounds %struct.musb, %struct.musb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %76 [
    i32 134, label %25
    i32 132, label %25
    i32 131, label %44
    i32 133, label %68
    i32 128, label %73
    i32 129, label %73
    i32 130, label %73
  ]

25:                                               ; preds = %2, %2
  %26 = load %struct.musb*, %struct.musb** %3, align 8
  %27 = call i32 @musb_host_resume_root_hub(%struct.musb* %26)
  %28 = load %struct.musb*, %struct.musb** %3, align 8
  %29 = call i32 @musb_root_disconnect(%struct.musb* %28)
  %30 = load %struct.musb*, %struct.musb** %3, align 8
  %31 = getelementptr inbounds %struct.musb, %struct.musb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.musb*, %struct.musb** %3, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.musb*, %struct.musb** %3, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @msecs_to_jiffies(i32 %39)
  %41 = add nsw i64 %36, %40
  %42 = call i32 @musb_platform_try_idle(%struct.musb* %35, i64 %41)
  br label %43

43:                                               ; preds = %34, %25
  br label %86

44:                                               ; preds = %2
  %45 = load %struct.musb*, %struct.musb** %3, align 8
  %46 = call i32 @musb_root_disconnect(%struct.musb* %45)
  %47 = load %struct.musb*, %struct.musb** %3, align 8
  %48 = getelementptr inbounds %struct.musb, %struct.musb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.musb*, %struct.musb** %3, align 8
  %53 = getelementptr inbounds %struct.musb, %struct.musb* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.musb*, %struct.musb** %3, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 129, i32* %63, align 4
  %64 = load %struct.musb*, %struct.musb** %3, align 8
  %65 = call i32 @MUSB_DEV_MODE(%struct.musb* %64)
  %66 = load %struct.musb*, %struct.musb** %3, align 8
  %67 = call i32 @musb_g_disconnect(%struct.musb* %66)
  br label %86

68:                                               ; preds = %2
  %69 = load %struct.musb*, %struct.musb** %3, align 8
  %70 = call i32 @musb_hnp_stop(%struct.musb* %69)
  %71 = load %struct.musb*, %struct.musb** %3, align 8
  %72 = call i32 @musb_root_disconnect(%struct.musb* %71)
  br label %73

73:                                               ; preds = %2, %2, %2, %68
  %74 = load %struct.musb*, %struct.musb** %3, align 8
  %75 = call i32 @musb_g_disconnect(%struct.musb* %74)
  br label %86

76:                                               ; preds = %2
  %77 = load %struct.musb*, %struct.musb** %3, align 8
  %78 = getelementptr inbounds %struct.musb, %struct.musb* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_otg_state_string(i32 %83)
  %85 = call i32 @WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %76, %73, %57, %43
  ret void
}

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i32 @MUSB_MODE(%struct.musb*) #1

declare dso_local i32 @musb_host_resume_root_hub(%struct.musb*) #1

declare dso_local i32 @musb_root_disconnect(%struct.musb*) #1

declare dso_local i32 @musb_platform_try_idle(%struct.musb*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @MUSB_DEV_MODE(%struct.musb*) #1

declare dso_local i32 @musb_g_disconnect(%struct.musb*) #1

declare dso_local i32 @musb_hnp_stop(%struct.musb*) #1

declare dso_local i32 @WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
