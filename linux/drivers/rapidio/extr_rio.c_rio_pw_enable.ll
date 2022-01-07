; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_pw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_pw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rio_mport*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rio_pw_enable(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %6 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.rio_mport*, i32)*, i32 (%struct.rio_mport*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.rio_mport*, i32)* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %13 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %19 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %37, label %23

23:                                               ; preds = %17, %11
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %28 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %33 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31, %17
  %38 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %39 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.rio_mport*, i32)*, i32 (%struct.rio_mport*, i32)** %41, align 8
  %43 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %42(%struct.rio_mport* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %31, %26, %23
  %47 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %48 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
