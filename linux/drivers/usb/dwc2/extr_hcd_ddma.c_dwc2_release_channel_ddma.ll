; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_release_channel_ddma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_release_channel_ddma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_qh = type { i64, i64, %struct.dwc2_host_chan* }
%struct.dwc2_host_chan = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_release_channel_ddma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_release_channel_ddma(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca %struct.dwc2_host_chan*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %6 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %6, i32 0, i32 2
  %8 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  store %struct.dwc2_host_chan* %8, %struct.dwc2_host_chan** %5, align 8
  %9 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %10 = call i64 @dwc2_qh_is_non_per(%struct.dwc2_qh* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %28

23:                                               ; preds = %12
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %18
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %31 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %32 = call i32 @dwc2_update_frame_list(%struct.dwc2_hsotg* %30, %struct.dwc2_qh* %31, i32 0)
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %39 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %44 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %43, i32 0, i32 1
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %49 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %48, i32 0, i32 1
  %50 = call i32 @list_del(i32* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %53 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %54 = call i32 @dwc2_hc_cleanup(%struct.dwc2_hsotg* %52, %struct.dwc2_host_chan* %53)
  %55 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %56 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %55, i32 0, i32 1
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %58 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %61 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %51, %37
  %63 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %64 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %63, i32 0, i32 2
  store %struct.dwc2_host_chan* null, %struct.dwc2_host_chan** %64, align 8
  %65 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %66 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %68 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %62
  %72 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %73 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %76 = call i32 @dwc2_max_desc_num(%struct.dwc2_qh* %75)
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memset(i64 %74, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %71, %62
  ret void
}

declare dso_local i64 @dwc2_qh_is_non_per(%struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_update_frame_list(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dwc2_hc_cleanup(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @dwc2_max_desc_num(%struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
