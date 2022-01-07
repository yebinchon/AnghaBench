; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_serverdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_serverdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorhba_devdata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorhba_devdata*)* @visorhba_serverdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorhba_serverdown(%struct.visorhba_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.visorhba_devdata*, align 8
  store %struct.visorhba_devdata* %0, %struct.visorhba_devdata** %3, align 8
  %4 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %5 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %17 = call i32 @visorhba_serverdown_complete(%struct.visorhba_devdata* %16)
  br label %27

18:                                               ; preds = %8, %1
  %19 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %13
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @visorhba_serverdown_complete(%struct.visorhba_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
