; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_backend_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_backend_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xenvif* }
%struct.xenvif = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backend_info*)* @backend_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backend_disconnect(%struct.backend_info* %0) #0 {
  %2 = alloca %struct.backend_info*, align 8
  %3 = alloca %struct.xenvif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.backend_info* %0, %struct.backend_info** %2, align 8
  %6 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %7 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %6, i32 0, i32 0
  %8 = load %struct.xenvif*, %struct.xenvif** %7, align 8
  store %struct.xenvif* %8, %struct.xenvif** %3, align 8
  %9 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %10 = icmp ne %struct.xenvif* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %13 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %16 = call i32 @xen_unregister_watchers(%struct.xenvif* %15)
  %17 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %18 = call i32 @xenvif_disconnect_data(%struct.xenvif* %17)
  %19 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %20 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = call i32 (...) @synchronize_net()
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %34, %11
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %28 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @xenvif_deinit_queue(i32* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %39 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @vfree(i32* %40)
  %42 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %43 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %45 = call i32 @xenvif_disconnect_ctrl(%struct.xenvif* %44)
  br label %46

46:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @xen_unregister_watchers(%struct.xenvif*) #1

declare dso_local i32 @xenvif_disconnect_data(%struct.xenvif*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @xenvif_deinit_queue(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @xenvif_disconnect_ctrl(%struct.xenvif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
