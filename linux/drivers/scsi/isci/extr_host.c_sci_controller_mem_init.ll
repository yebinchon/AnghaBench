; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*)* @sci_controller_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_controller_mem_init(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %5 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %6 = call i32 @sci_controller_dma_alloc(%struct.isci_host* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %116

11:                                               ; preds = %1
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @lower_32_bits(i32 %14)
  %16 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %17 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %20 = call i32 @writel(i32 %15, i32* %19)
  %21 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %22 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @upper_32_bits(i32 %23)
  %25 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %26 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = call i32 @writel(i32 %24, i32* %28)
  %30 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %31 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %35 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = call i32 @writel(i32 %33, i32* %37)
  %39 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %40 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @upper_32_bits(i32 %41)
  %43 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %44 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = call i32 @writel(i32 %42, i32* %46)
  %48 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %49 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %53 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = call i32 @writel(i32 %51, i32* %55)
  %57 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %58 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @upper_32_bits(i32 %59)
  %61 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %62 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @writel(i32 %60, i32* %64)
  %66 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %67 = call i32 @sci_unsolicited_frame_control_construct(%struct.isci_host* %66)
  %68 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %69 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lower_32_bits(i32 %72)
  %74 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %75 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = call i32 @writel(i32 %73, i32* %78)
  %80 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %81 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @upper_32_bits(i32 %84)
  %86 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %87 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = call i32 @writel(i32 %85, i32* %90)
  %92 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %93 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @lower_32_bits(i32 %96)
  %98 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %99 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = call i32 @writel(i32 %97, i32* %102)
  %104 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %105 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @upper_32_bits(i32 %108)
  %110 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %111 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = call i32 @writel(i32 %109, i32* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %11, %9
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @sci_controller_dma_alloc(%struct.isci_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @sci_unsolicited_frame_control_construct(%struct.isci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
