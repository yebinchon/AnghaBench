; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_grok_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c_uwb_rc_neh_grok_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rceb = type { i64, i32, i32 }
%struct.uwb_rc_neh = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"event 0x%02x/%04x/%02x (%zu bytes): no memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"event 0x%02x/%04x/%02x (%zu bytes): nobody cared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rceb*, i64)* @uwb_rc_neh_grok_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_neh_grok_event(%struct.uwb_rc* %0, %struct.uwb_rceb* %1, i64 %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rceb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.uwb_rc_neh*, align 8
  %9 = alloca %struct.uwb_rceb*, align 8
  %10 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rceb* %1, %struct.uwb_rceb** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %12 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %15 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.uwb_rceb* @kmalloc(i64 %19, i32 %20)
  store %struct.uwb_rceb* %21, %struct.uwb_rceb** %9, align 8
  %22 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %23 = icmp ne %struct.uwb_rceb* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %26 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcpy(%struct.uwb_rceb* %25, %struct.uwb_rceb* %26, i64 %27)
  %29 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %30 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @uwb_rc_notif(%struct.uwb_rc* %29, %struct.uwb_rceb* %30, i64 %31)
  br label %47

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %36 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %39 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %43 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %33, %24
  br label %87

48:                                               ; preds = %3
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %50 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %51 = call %struct.uwb_rc_neh* @uwb_rc_neh_lookup(%struct.uwb_rc* %49, %struct.uwb_rceb* %50)
  store %struct.uwb_rc_neh* %51, %struct.uwb_rc_neh** %8, align 8
  %52 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %53 = icmp ne %struct.uwb_rc_neh* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %56 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %55, i32 0, i32 0
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %60 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %62 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %61, i32 0, i32 1
  %63 = call i32 @del_timer(i32* %62)
  %64 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %65 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %69 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @uwb_rc_neh_cb(%struct.uwb_rc_neh* %68, %struct.uwb_rceb* %69, i64 %70)
  br label %86

72:                                               ; preds = %48
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %75 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %78 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %82 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @dev_warn(%struct.device* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %80, i64 %83, i64 %84)
  br label %86

86:                                               ; preds = %72, %54
  br label %87

87:                                               ; preds = %86, %47
  ret void
}

declare dso_local %struct.uwb_rceb* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.uwb_rceb*, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @uwb_rc_notif(%struct.uwb_rc*, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.uwb_rc_neh* @uwb_rc_neh_lookup(%struct.uwb_rc*, %struct.uwb_rceb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uwb_rc_neh_cb(%struct.uwb_rc_neh*, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
