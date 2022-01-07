; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"RESUME (%s)\00", align 1
@MUSB_DEVCTL_HM = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@MUSB_PORT_STAT_RESUME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@USB_RESUME_TIMEOUT = common dso_local global i32 0, align 4
@OTG_STATE_A_HOST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"bogus %s RESUME (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@MUSB_DEVCTL_VBUS = common dso_local global i32 0, align 4
@MUSB_DEVCTL_VBUS_SHIFT = common dso_local global i32 0, align 4
@MUSB_INTR_DISCONNECT = common dso_local global i32 0, align 4
@MUSB_INTR_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @musb_handle_intr_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_handle_intr_resume(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.musb*, %struct.musb** %3, align 8
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_otg_state_string(i32 %12)
  %14 = call i32 @musb_dbg(%struct.musb* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MUSB_DEVCTL_HM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %2
  %20 = load %struct.musb*, %struct.musb** %3, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %70 [
    i32 131, label %27
    i32 128, label %59
  ]

27:                                               ; preds = %19
  %28 = load i32, i32* @USB_PORT_STAT_C_SUSPEND, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* @MUSB_PORT_STAT_RESUME, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.musb*, %struct.musb** %3, align 8
  %33 = getelementptr inbounds %struct.musb, %struct.musb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i32, i32* @USB_RESUME_TIMEOUT, align 4
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = load %struct.musb*, %struct.musb** %3, align 8
  %41 = getelementptr inbounds %struct.musb, %struct.musb* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** @OTG_STATE_A_HOST, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.musb*, %struct.musb** %3, align 8
  %45 = getelementptr inbounds %struct.musb, %struct.musb* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  %50 = load %struct.musb*, %struct.musb** %3, align 8
  %51 = getelementptr inbounds %struct.musb, %struct.musb* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.musb*, %struct.musb** %3, align 8
  %53 = call i32 @musb_host_resume_root_hub(%struct.musb* %52)
  %54 = load %struct.musb*, %struct.musb** %3, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 4
  %56 = load i32, i32* @USB_RESUME_TIMEOUT, align 4
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  %58 = call i32 @schedule_delayed_work(i32* %55, i64 %57)
  br label %80

59:                                               ; preds = %19
  %60 = load %struct.musb*, %struct.musb** %3, align 8
  %61 = getelementptr inbounds %struct.musb, %struct.musb* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 129, i32* %65, align 4
  %66 = load %struct.musb*, %struct.musb** %3, align 8
  %67 = getelementptr inbounds %struct.musb, %struct.musb* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.musb*, %struct.musb** %3, align 8
  %69 = call i32 @MUSB_DEV_MODE(%struct.musb* %68)
  br label %80

70:                                               ; preds = %19
  %71 = load %struct.musb*, %struct.musb** %3, align 8
  %72 = getelementptr inbounds %struct.musb, %struct.musb* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @usb_otg_state_string(i32 %77)
  %79 = call i32 @WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %70, %59, %27
  br label %140

81:                                               ; preds = %2
  %82 = load %struct.musb*, %struct.musb** %3, align 8
  %83 = getelementptr inbounds %struct.musb, %struct.musb* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %129 [
    i32 131, label %89
    i32 128, label %100
    i32 129, label %100
    i32 130, label %122
  ]

89:                                               ; preds = %81
  %90 = load i8*, i8** @OTG_STATE_A_HOST, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.musb*, %struct.musb** %3, align 8
  %93 = getelementptr inbounds %struct.musb, %struct.musb* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  %98 = load %struct.musb*, %struct.musb** %3, align 8
  %99 = call i32 @musb_host_resume_root_hub(%struct.musb* %98)
  br label %139

100:                                              ; preds = %81, %81
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @MUSB_DEVCTL_VBUS_SHIFT, align 4
  %105 = shl i32 3, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = load i32, i32* @MUSB_INTR_DISCONNECT, align 4
  %109 = load %struct.musb*, %struct.musb** %3, align 8
  %110 = getelementptr inbounds %struct.musb, %struct.musb* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @MUSB_INTR_SUSPEND, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.musb*, %struct.musb** %3, align 8
  %116 = getelementptr inbounds %struct.musb, %struct.musb* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %139

119:                                              ; preds = %100
  %120 = load %struct.musb*, %struct.musb** %3, align 8
  %121 = call i32 @musb_g_resume(%struct.musb* %120)
  br label %139

122:                                              ; preds = %81
  %123 = load i32, i32* @MUSB_INTR_SUSPEND, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.musb*, %struct.musb** %3, align 8
  %126 = getelementptr inbounds %struct.musb, %struct.musb* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %139

129:                                              ; preds = %81
  %130 = load %struct.musb*, %struct.musb** %3, align 8
  %131 = getelementptr inbounds %struct.musb, %struct.musb* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @usb_otg_state_string(i32 %136)
  %138 = call i32 @WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %129, %122, %119, %107, %89
  br label %140

140:                                              ; preds = %139, %80
  ret void
}

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @musb_host_resume_root_hub(%struct.musb*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @MUSB_DEV_MODE(%struct.musb*) #1

declare dso_local i32 @WARNING(i8*, i8*, i32) #1

declare dso_local i32 @musb_g_resume(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
