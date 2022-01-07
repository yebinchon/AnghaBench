; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.eadm_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*, i32)* @eadm_subchannel_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_subchannel_set_timeout(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eadm_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = call %struct.eadm_private* @get_eadm_private(%struct.subchannel* %6)
  store %struct.eadm_private* %7, %struct.eadm_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %12 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %11, i32 0, i32 0
  %13 = call i32 @del_timer(%struct.TYPE_5__* %12)
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %16 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %15, i32 0, i32 0
  %17 = call i64 @timer_pending(%struct.TYPE_5__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %21 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %20, i32 0, i32 0
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i64 @mod_timer(%struct.TYPE_5__* %21, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %41

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %36 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.eadm_private*, %struct.eadm_private** %5, align 8
  %39 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %38, i32 0, i32 0
  %40 = call i32 @add_timer(%struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %30, %28, %10
  ret void
}

declare dso_local %struct.eadm_private* @get_eadm_private(%struct.subchannel*) #1

declare dso_local i32 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i64 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i64 @mod_timer(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
