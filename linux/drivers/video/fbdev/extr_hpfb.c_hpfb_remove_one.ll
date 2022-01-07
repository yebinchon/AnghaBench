; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hpfb.c_hpfb_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hpfb.c_hpfb_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.dio_dev = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@fb_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DIOII_SCBASE = common dso_local global i64 0, align 8
@fb_regs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio_dev*)* @hpfb_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfb_remove_one(%struct.dio_dev* %0) #0 {
  %2 = alloca %struct.dio_dev*, align 8
  store %struct.dio_dev* %0, %struct.dio_dev** %2, align 8
  %3 = call i32 @unregister_framebuffer(%struct.TYPE_4__* @fb_info)
  %4 = load %struct.dio_dev*, %struct.dio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DIOII_SCBASE, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* @fb_regs, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @iounmap(i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.dio_dev*, %struct.dio_dev** %2, align 8
  %15 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dio_dev*, %struct.dio_dev** %2, align 8
  %19 = getelementptr inbounds %struct.dio_dev, %struct.dio_dev* %18, i32 0, i32 1
  %20 = call i32 @resource_size(%struct.TYPE_5__* %19)
  %21 = call i32 @release_mem_region(i32 %17, i32 %20)
  %22 = call i32 @fb_dealloc_cmap(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fb_info, i32 0, i32 1))
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fb_info, i32 0, i32 0), align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fb_info, i32 0, i32 0), align 8
  %27 = call i32 @iounmap(i8* %26)
  br label %28

28:                                               ; preds = %25, %13
  ret void
}

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_4__*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_5__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
