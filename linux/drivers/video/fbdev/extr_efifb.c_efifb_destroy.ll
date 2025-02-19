; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_efifb.c_efifb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_efifb.c_efifb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@mem_flags = common dso_local global i32 0, align 4
@EFI_MEMORY_UC = common dso_local global i32 0, align 4
@EFI_MEMORY_WC = common dso_local global i32 0, align 4
@request_mem_succeeded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @efifb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efifb_destroy(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %3 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load i32, i32* @mem_flags, align 4
  %9 = load i32, i32* @EFI_MEMORY_UC, align 4
  %10 = load i32, i32* @EFI_MEMORY_WC, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @iounmap(i64 %17)
  br label %24

19:                                               ; preds = %7
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @memunmap(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i64, i64* @request_mem_succeeded, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @release_mem_region(i32 %36, i32 %44)
  br label %46

46:                                               ; preds = %28, %25
  %47 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = call i32 @fb_dealloc_cmap(i32* %48)
  ret void
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @memunmap(i64) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
