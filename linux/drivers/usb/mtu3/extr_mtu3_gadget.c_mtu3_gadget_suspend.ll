; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32*)* }

@.str = private unnamed_addr constant [16 x i8] c"gadget SUSPEND\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtu3_gadget_suspend(%struct.mtu3* %0) #0 {
  %2 = alloca %struct.mtu3*, align 8
  store %struct.mtu3* %0, %struct.mtu3** %2, align 8
  %3 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %4 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %8 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %13 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %17 = icmp ne i32 (i32*)* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %20 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %23 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %28 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %27, i32 0, i32 1
  %29 = call i32 %26(i32* %28)
  %30 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %31 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  br label %33

33:                                               ; preds = %18, %11, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
