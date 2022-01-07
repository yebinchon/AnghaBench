; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_core_close_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_core_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_session = type { i32*, %struct.vbg_dev* }
%struct.vbg_dev = type { i32 }

@U32_MAX = common dso_local global i32 0, align 4
@VBG_KERNEL_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vbg_core_close_session(%struct.vbg_session* %0) #0 {
  %2 = alloca %struct.vbg_session*, align 8
  %3 = alloca %struct.vbg_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vbg_session* %0, %struct.vbg_session** %2, align 8
  %6 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %7 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %6, i32 0, i32 1
  %8 = load %struct.vbg_dev*, %struct.vbg_dev** %7, align 8
  store %struct.vbg_dev* %8, %struct.vbg_dev** %3, align 8
  %9 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %10 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %11 = load i32, i32* @U32_MAX, align 4
  %12 = call i32 @vbg_set_session_capabilities(%struct.vbg_dev* %9, %struct.vbg_session* %10, i32 0, i32 %11, i32 1)
  %13 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %14 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %15 = load i32, i32* @U32_MAX, align 4
  %16 = call i32 @vbg_set_session_event_filter(%struct.vbg_dev* %13, %struct.vbg_session* %14, i32 0, i32 %15, i32 1)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %45, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %20 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %26 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.vbg_dev*, %struct.vbg_dev** %3, align 8
  %36 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %37 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %38 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vbg_hgcm_disconnect(%struct.vbg_dev* %35, i32 %36, i32 %43, i32* %5)
  br label %45

45:                                               ; preds = %34, %33
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %17

48:                                               ; preds = %17
  %49 = load %struct.vbg_session*, %struct.vbg_session** %2, align 8
  %50 = call i32 @kfree(%struct.vbg_session* %49)
  ret void
}

declare dso_local i32 @vbg_set_session_capabilities(%struct.vbg_dev*, %struct.vbg_session*, i32, i32, i32) #1

declare dso_local i32 @vbg_set_session_event_filter(%struct.vbg_dev*, %struct.vbg_session*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @vbg_hgcm_disconnect(%struct.vbg_dev*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.vbg_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
