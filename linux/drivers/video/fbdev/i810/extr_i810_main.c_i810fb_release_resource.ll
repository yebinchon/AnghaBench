; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810fb_release_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810fb_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.i810fb_par = type { i32, i32, %struct.TYPE_2__, i32, i64, %struct.gtt_data, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.gtt_data = type { i64, i64 }

@FRAMEBUFFER_REQ = common dso_local global i32 0, align 4
@MMIO_REQ = common dso_local global i32 0, align 4
@MMIO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.i810fb_par*)* @i810fb_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810fb_release_resource(%struct.fb_info* %0, %struct.i810fb_par* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.i810fb_par*, align 8
  %5 = alloca %struct.gtt_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.i810fb_par* %1, %struct.i810fb_par** %4, align 8
  %6 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %7 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %6, i32 0, i32 5
  store %struct.gtt_data* %7, %struct.gtt_data** %5, align 8
  %8 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %9 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @arch_phys_wc_del(i32 %10)
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %13 = call i32 @i810_delete_i2c_busses(%struct.i810fb_par* %12)
  %14 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %15 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.gtt_data, %struct.gtt_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.gtt_data*, %struct.gtt_data** %5, align 8
  %21 = getelementptr inbounds %struct.gtt_data, %struct.gtt_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @agp_free_memory(i64 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %26 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.gtt_data, %struct.gtt_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.gtt_data*, %struct.gtt_data** %5, align 8
  %32 = getelementptr inbounds %struct.gtt_data, %struct.gtt_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @agp_free_memory(i64 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %37 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %42 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @iounmap(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %47 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %53 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @iounmap(i64 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %59 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kfree(i32 %60)
  %62 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %63 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FRAMEBUFFER_REQ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %70 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %74 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @release_mem_region(i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %68, %57
  %79 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %80 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MMIO_REQ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %87 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MMIO_SIZE, align 4
  %90 = call i32 @release_mem_region(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %93 = call i32 @framebuffer_release(%struct.fb_info* %92)
  ret void
}

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @i810_delete_i2c_busses(%struct.i810fb_par*) #1

declare dso_local i32 @agp_free_memory(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
