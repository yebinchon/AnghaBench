; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_handle_intr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Babble\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BUS RESET as %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"HNP: in %s, %d msec timeout\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"HNP: RESET (%s), to b_peripheral\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unhandled BUS RESET as %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @musb_handle_intr_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_handle_intr_reset(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %3 = load %struct.musb*, %struct.musb** %2, align 8
  %4 = call i64 @is_host_active(%struct.musb* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.musb*, %struct.musb** %2, align 8
  %8 = getelementptr inbounds %struct.musb, %struct.musb* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.musb*, %struct.musb** %2, align 8
  %12 = call i32 @musb_recover_from_babble(%struct.musb* %11)
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.musb*, %struct.musb** %2, align 8
  %15 = load %struct.musb*, %struct.musb** %2, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_otg_state_string(i32 %21)
  %23 = call i32 (%struct.musb*, i8*, i32, ...) @musb_dbg(%struct.musb* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.musb*, %struct.musb** %2, align 8
  %25 = getelementptr inbounds %struct.musb, %struct.musb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %90 [
    i32 132, label %31
    i32 131, label %34
    i32 133, label %55
    i32 128, label %61
    i32 130, label %80
    i32 129, label %87
  ]

31:                                               ; preds = %13
  %32 = load %struct.musb*, %struct.musb** %2, align 8
  %33 = call i32 @musb_g_reset(%struct.musb* %32)
  br label %34

34:                                               ; preds = %13, %31
  %35 = load %struct.musb*, %struct.musb** %2, align 8
  %36 = load %struct.musb*, %struct.musb** %2, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_otg_state_string(i32 %42)
  %44 = load %struct.musb*, %struct.musb** %2, align 8
  %45 = call i32 @TA_WAIT_BCON(%struct.musb* %44)
  %46 = call i32 (%struct.musb*, i8*, i32, ...) @musb_dbg(%struct.musb* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load %struct.musb*, %struct.musb** %2, align 8
  %48 = getelementptr inbounds %struct.musb, %struct.musb* %47, i32 0, i32 1
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.musb*, %struct.musb** %2, align 8
  %51 = call i32 @TA_WAIT_BCON(%struct.musb* %50)
  %52 = call i64 @msecs_to_jiffies(i32 %51)
  %53 = add nsw i64 %49, %52
  %54 = call i32 @mod_timer(i32* %48, i64 %53)
  br label %101

55:                                               ; preds = %13
  %56 = load %struct.musb*, %struct.musb** %2, align 8
  %57 = getelementptr inbounds %struct.musb, %struct.musb* %56, i32 0, i32 1
  %58 = call i32 @del_timer(i32* %57)
  %59 = load %struct.musb*, %struct.musb** %2, align 8
  %60 = call i32 @musb_g_reset(%struct.musb* %59)
  br label %101

61:                                               ; preds = %13
  %62 = load %struct.musb*, %struct.musb** %2, align 8
  %63 = load %struct.musb*, %struct.musb** %2, align 8
  %64 = getelementptr inbounds %struct.musb, %struct.musb* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_otg_state_string(i32 %69)
  %71 = call i32 (%struct.musb*, i8*, i32, ...) @musb_dbg(%struct.musb* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.musb*, %struct.musb** %2, align 8
  %73 = getelementptr inbounds %struct.musb, %struct.musb* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 129, i32* %77, align 4
  %78 = load %struct.musb*, %struct.musb** %2, align 8
  %79 = call i32 @musb_g_reset(%struct.musb* %78)
  br label %101

80:                                               ; preds = %13
  %81 = load %struct.musb*, %struct.musb** %2, align 8
  %82 = getelementptr inbounds %struct.musb, %struct.musb* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 129, i32* %86, align 4
  br label %87

87:                                               ; preds = %13, %80
  %88 = load %struct.musb*, %struct.musb** %2, align 8
  %89 = call i32 @musb_g_reset(%struct.musb* %88)
  br label %101

90:                                               ; preds = %13
  %91 = load %struct.musb*, %struct.musb** %2, align 8
  %92 = load %struct.musb*, %struct.musb** %2, align 8
  %93 = getelementptr inbounds %struct.musb, %struct.musb* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @usb_otg_state_string(i32 %98)
  %100 = call i32 (%struct.musb*, i8*, i32, ...) @musb_dbg(%struct.musb* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %90, %87, %61, %55, %34
  br label %102

102:                                              ; preds = %101, %6
  ret void
}

declare dso_local i64 @is_host_active(%struct.musb*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @musb_recover_from_babble(%struct.musb*) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32, ...) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i32 @musb_g_reset(%struct.musb*) #1

declare dso_local i32 @TA_WAIT_BCON(%struct.musb*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
