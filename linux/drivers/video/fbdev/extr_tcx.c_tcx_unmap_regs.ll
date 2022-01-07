; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tcx.c_tcx_unmap_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tcx.c_tcx_unmap_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32* }
%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tcx_par = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.fb_info*, %struct.tcx_par*)* @tcx_unmap_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcx_unmap_regs(%struct.platform_device* %0, %struct.fb_info* %1, %struct.tcx_par* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.tcx_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store %struct.tcx_par* %2, %struct.tcx_par** %6, align 8
  %7 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %8 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 7
  %16 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %17 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @of_iounmap(i32* %15, i64 %18, i32 4)
  br label %20

20:                                               ; preds = %11, %3
  %21 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %22 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 9
  %30 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %31 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @of_iounmap(i32* %29, i64 %32, i32 4)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %36 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  %44 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %45 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @of_iounmap(i32* %43, i64 %46, i32 4)
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %50 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load %struct.tcx_par*, %struct.tcx_par** %6, align 8
  %59 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @of_iounmap(i32* %57, i64 %60, i32 %67)
  br label %69

69:                                               ; preds = %53, %48
  %70 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @of_iounmap(i32* %78, i64 %81, i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @of_iounmap(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
