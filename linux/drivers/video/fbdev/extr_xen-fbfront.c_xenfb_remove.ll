; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenfb_info = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @xenfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenfb_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.xenfb_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 0
  %6 = call %struct.xenfb_info* @dev_get_drvdata(i32* %5)
  store %struct.xenfb_info* %6, %struct.xenfb_info** %3, align 8
  %7 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %8 = call i32 @xenfb_disconnect_backend(%struct.xenfb_info* %7)
  %9 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %10 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %15 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @fb_deferred_io_cleanup(%struct.TYPE_4__* %16)
  %18 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %19 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @unregister_framebuffer(%struct.TYPE_4__* %20)
  %22 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %23 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @fb_dealloc_cmap(i32* %25)
  %27 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %28 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @framebuffer_release(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %13, %1
  %32 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %33 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @free_page(i64 %34)
  %36 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %37 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vfree(i32 %38)
  %40 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %41 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @vfree(i32 %42)
  %44 = load %struct.xenfb_info*, %struct.xenfb_info** %3, align 8
  %45 = call i32 @kfree(%struct.xenfb_info* %44)
  ret i32 0
}

declare dso_local %struct.xenfb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @xenfb_disconnect_backend(%struct.xenfb_info*) #1

declare dso_local i32 @fb_deferred_io_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_4__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.TYPE_4__*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.xenfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
