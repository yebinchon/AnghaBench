; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_pm_runtime_check_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_pm_runtime_check_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, i32, i32, i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_FSDEV = common dso_local global i32 0, align 4
@MUSB_DEVCTL_LSDEV = common dso_local global i32 0, align 4
@MUSB_DEVCTL_HR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Poll devctl on invalid vbus, assume no session\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Poll devctl on possible host mode disconnect\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Allow PM on possible host mode disconnect\00", align 1
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Block PM on active session: %02x\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not enable: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Allow PM with no session: %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @musb_pm_runtime_check_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_pm_runtime_check_session(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  %6 = load %struct.musb*, %struct.musb** %2, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MUSB_DEVCTL, align 4
  %10 = call i32 @musb_readb(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MUSB_DEVCTL_FSDEV, align 4
  %12 = load i32, i32* @MUSB_DEVCTL_LSDEV, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MUSB_DEVCTL_HR, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  switch i32 %19, label %82 [
    i32 128, label %20
    i32 129, label %42
  ]

20:                                               ; preds = %1
  %21 = load %struct.musb*, %struct.musb** %2, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.musb*, %struct.musb** %2, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load %struct.musb*, %struct.musb** %2, align 8
  %32 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.musb*, %struct.musb** %2, align 8
  %34 = getelementptr inbounds %struct.musb, %struct.musb* %33, i32 0, i32 3
  %35 = call i32 @msecs_to_jiffies(i32 1000)
  %36 = call i32 @schedule_delayed_work(i32* %34, i32 %35)
  %37 = load %struct.musb*, %struct.musb** %2, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %131

41:                                               ; preds = %25, %20
  br label %42

42:                                               ; preds = %1, %41
  %43 = load %struct.musb*, %struct.musb** %2, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.musb*, %struct.musb** %2, align 8
  %49 = getelementptr inbounds %struct.musb, %struct.musb* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.musb*, %struct.musb** %2, align 8
  %54 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.musb*, %struct.musb** %2, align 8
  %56 = getelementptr inbounds %struct.musb, %struct.musb* %55, i32 0, i32 3
  %57 = call i32 @msecs_to_jiffies(i32 1000)
  %58 = call i32 @schedule_delayed_work(i32* %56, i32 %57)
  %59 = load %struct.musb*, %struct.musb** %2, align 8
  %60 = getelementptr inbounds %struct.musb, %struct.musb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %131

63:                                               ; preds = %47, %42
  %64 = load %struct.musb*, %struct.musb** %2, align 8
  %65 = getelementptr inbounds %struct.musb, %struct.musb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %83

69:                                               ; preds = %63
  %70 = load %struct.musb*, %struct.musb** %2, align 8
  %71 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.musb*, %struct.musb** %2, align 8
  %73 = getelementptr inbounds %struct.musb, %struct.musb* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pm_runtime_mark_last_busy(i32 %74)
  %76 = load %struct.musb*, %struct.musb** %2, align 8
  %77 = getelementptr inbounds %struct.musb, %struct.musb* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pm_runtime_put_autosuspend(i32 %78)
  %80 = load %struct.musb*, %struct.musb** %2, align 8
  %81 = getelementptr inbounds %struct.musb, %struct.musb* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %131

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.musb*, %struct.musb** %2, align 8
  %89 = getelementptr inbounds %struct.musb, %struct.musb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %131

93:                                               ; preds = %83
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load %struct.musb*, %struct.musb** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.musb*, %struct.musb** %2, align 8
  %101 = getelementptr inbounds %struct.musb, %struct.musb* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pm_runtime_get_sync(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load %struct.musb*, %struct.musb** %2, align 8
  %108 = getelementptr inbounds %struct.musb, %struct.musb* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %96
  %113 = load %struct.musb*, %struct.musb** %2, align 8
  %114 = getelementptr inbounds %struct.musb, %struct.musb* %113, i32 0, i32 0
  store i32 3, i32* %114, align 4
  br label %127

115:                                              ; preds = %93
  %116 = load %struct.musb*, %struct.musb** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load %struct.musb*, %struct.musb** %2, align 8
  %120 = getelementptr inbounds %struct.musb, %struct.musb* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pm_runtime_mark_last_busy(i32 %121)
  %123 = load %struct.musb*, %struct.musb** %2, align 8
  %124 = getelementptr inbounds %struct.musb, %struct.musb* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pm_runtime_put_autosuspend(i32 %125)
  br label %127

127:                                              ; preds = %115, %112
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.musb*, %struct.musb** %2, align 8
  %130 = getelementptr inbounds %struct.musb, %struct.musb* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %92, %69, %52, %30
  ret void
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, ...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
