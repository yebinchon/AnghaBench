; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"SUSPEND (%s) devctl %02x\00", align 1
@jiffies = common dso_local global i64 0, align 8
@OTG_TIME_A_WAIT_BCON = common dso_local global i32 0, align 4
@OTG_STATE_B_WAIT_ACON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"HNP: Setting timer for b_ase0_brst\00", align 1
@OTG_TIME_B_ASE0_BRST = common dso_local global i32 0, align 4
@OTG_STATE_A_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"REVISIT: SUSPEND as B_HOST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @musb_handle_intr_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_handle_intr_suspend(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.musb*, %struct.musb** %3, align 8
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_otg_state_string(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.musb*, %struct.musb** %3, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %116 [
    i32 132, label %23
    i32 129, label %44
    i32 128, label %51
    i32 131, label %82
    i32 133, label %97
    i32 130, label %113
  ]

23:                                               ; preds = %2
  %24 = load %struct.musb*, %struct.musb** %3, align 8
  %25 = call i32 @musb_hnp_stop(%struct.musb* %24)
  %26 = load %struct.musb*, %struct.musb** %3, align 8
  %27 = call i32 @musb_host_resume_root_hub(%struct.musb* %26)
  %28 = load %struct.musb*, %struct.musb** %3, align 8
  %29 = call i32 @musb_root_disconnect(%struct.musb* %28)
  %30 = load %struct.musb*, %struct.musb** %3, align 8
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.musb*, %struct.musb** %3, align 8
  %33 = getelementptr inbounds %struct.musb, %struct.musb* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @OTG_TIME_A_WAIT_BCON, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ %34, %36 ], [ %38, %37 ]
  %41 = call i64 @msecs_to_jiffies(i32 %40)
  %42 = add nsw i64 %31, %41
  %43 = call i32 @musb_platform_try_idle(%struct.musb* %30, i64 %42)
  br label %119

44:                                               ; preds = %2
  %45 = load %struct.musb*, %struct.musb** %3, align 8
  %46 = getelementptr inbounds %struct.musb, %struct.musb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %119

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %2, %50
  %52 = load %struct.musb*, %struct.musb** %3, align 8
  %53 = call i32 @musb_g_suspend(%struct.musb* %52)
  %54 = load %struct.musb*, %struct.musb** %3, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.musb*, %struct.musb** %3, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.musb*, %struct.musb** %3, align 8
  %61 = getelementptr inbounds %struct.musb, %struct.musb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %51
  %65 = load i32, i32* @OTG_STATE_B_WAIT_ACON, align 4
  %66 = load %struct.musb*, %struct.musb** %3, align 8
  %67 = getelementptr inbounds %struct.musb, %struct.musb* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %65, i32* %71, align 4
  %72 = load %struct.musb*, %struct.musb** %3, align 8
  %73 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.musb*, %struct.musb** %3, align 8
  %75 = getelementptr inbounds %struct.musb, %struct.musb* %74, i32 0, i32 4
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i32, i32* @OTG_TIME_B_ASE0_BRST, align 4
  %78 = call i64 @msecs_to_jiffies(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @mod_timer(i32* %75, i64 %79)
  br label %81

81:                                               ; preds = %64, %51
  br label %119

82:                                               ; preds = %2
  %83 = load %struct.musb*, %struct.musb** %3, align 8
  %84 = getelementptr inbounds %struct.musb, %struct.musb* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.musb*, %struct.musb** %3, align 8
  %89 = load i64, i64* @jiffies, align 8
  %90 = load %struct.musb*, %struct.musb** %3, align 8
  %91 = getelementptr inbounds %struct.musb, %struct.musb* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @msecs_to_jiffies(i32 %92)
  %94 = add nsw i64 %89, %93
  %95 = call i32 @musb_platform_try_idle(%struct.musb* %88, i64 %94)
  br label %96

96:                                               ; preds = %87, %82
  br label %119

97:                                               ; preds = %2
  %98 = load i32, i32* @OTG_STATE_A_SUSPEND, align 4
  %99 = load %struct.musb*, %struct.musb** %3, align 8
  %100 = getelementptr inbounds %struct.musb, %struct.musb* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 %98, i32* %104, align 4
  %105 = load %struct.musb*, %struct.musb** %3, align 8
  %106 = getelementptr inbounds %struct.musb, %struct.musb* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.musb*, %struct.musb** %3, align 8
  %112 = getelementptr inbounds %struct.musb, %struct.musb* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %119

113:                                              ; preds = %2
  %114 = load %struct.musb*, %struct.musb** %3, align 8
  %115 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %119

116:                                              ; preds = %2
  %117 = load %struct.musb*, %struct.musb** %3, align 8
  %118 = getelementptr inbounds %struct.musb, %struct.musb* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %113, %97, %96, %81, %49, %39
  ret void
}

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, ...) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i32 @musb_hnp_stop(%struct.musb*) #1

declare dso_local i32 @musb_host_resume_root_hub(%struct.musb*) #1

declare dso_local i32 @musb_root_disconnect(%struct.musb*) #1

declare dso_local i32 @musb_platform_try_idle(%struct.musb*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @musb_g_suspend(%struct.musb*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
