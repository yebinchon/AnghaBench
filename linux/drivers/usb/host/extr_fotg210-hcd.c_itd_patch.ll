; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_itd_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_itd_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%struct.fotg210_itd = type { i32, i32*, i32*, i32*, i32* }
%struct.fotg210_iso_sched = type { %struct.fotg210_iso_packet* }
%struct.fotg210_iso_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_itd*, %struct.fotg210_iso_sched*, i32, i32)* @itd_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itd_patch(%struct.fotg210_hcd* %0, %struct.fotg210_itd* %1, %struct.fotg210_iso_sched* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fotg210_hcd*, align 8
  %7 = alloca %struct.fotg210_itd*, align 8
  %8 = alloca %struct.fotg210_iso_sched*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fotg210_iso_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %6, align 8
  store %struct.fotg210_itd* %1, %struct.fotg210_itd** %7, align 8
  store %struct.fotg210_iso_sched* %2, %struct.fotg210_iso_sched** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.fotg210_iso_sched*, %struct.fotg210_iso_sched** %8, align 8
  %15 = getelementptr inbounds %struct.fotg210_iso_sched, %struct.fotg210_iso_sched* %14, i32 0, i32 0
  %16 = load %struct.fotg210_iso_packet*, %struct.fotg210_iso_packet** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fotg210_iso_packet, %struct.fotg210_iso_packet* %16, i64 %18
  store %struct.fotg210_iso_packet* %19, %struct.fotg210_iso_packet** %11, align 8
  %20 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %21 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %27 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.fotg210_iso_packet*, %struct.fotg210_iso_packet** %11, align 8
  %33 = getelementptr inbounds %struct.fotg210_iso_packet, %struct.fotg210_iso_packet* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %36 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 12
  %44 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %41, i32 %43)
  %45 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %46 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 4
  %53 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %54 = load %struct.fotg210_iso_packet*, %struct.fotg210_iso_packet** %11, align 8
  %55 = getelementptr inbounds %struct.fotg210_iso_packet, %struct.fotg210_iso_packet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %53, i32 %56)
  %58 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %59 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  %66 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %67 = load %struct.fotg210_iso_packet*, %struct.fotg210_iso_packet** %11, align 8
  %68 = getelementptr inbounds %struct.fotg210_iso_packet, %struct.fotg210_iso_packet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 32
  %71 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %66, i32 %70)
  %72 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %73 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %71
  store i32 %79, i32* %77, align 4
  %80 = load %struct.fotg210_iso_packet*, %struct.fotg210_iso_packet** %11, align 8
  %81 = getelementptr inbounds %struct.fotg210_iso_packet, %struct.fotg210_iso_packet* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %5
  %86 = load %struct.fotg210_iso_packet*, %struct.fotg210_iso_packet** %11, align 8
  %87 = getelementptr inbounds %struct.fotg210_iso_packet, %struct.fotg210_iso_packet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 4096
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %93 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %94, i32 %95)
  %97 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %98 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %96
  store i32 %104, i32* %102, align 4
  %105 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = ashr i32 %106, 32
  %108 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %105, i32 %107)
  %109 = load %struct.fotg210_itd*, %struct.fotg210_itd** %7, align 8
  %110 = getelementptr inbounds %struct.fotg210_itd, %struct.fotg210_itd* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %108
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %85, %5
  ret void
}

declare dso_local i32 @cpu_to_hc32(%struct.fotg210_hcd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
